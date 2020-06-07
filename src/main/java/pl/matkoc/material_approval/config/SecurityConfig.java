package pl.matkoc.material_approval.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final DataSource dataSource;

    public SecurityConfig(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .passwordEncoder(passwordEncoder())
                .dataSource(dataSource)
                .usersByUsernameQuery("SELECT username, password, true FROM (SELECT u.username, u.password, true FROM users u UNION SELECT i.username, i.password, true FROM inspectors i) users WHERE username = ?")
                .authoritiesByUsernameQuery("SELECT username, role FROM (SELECT u.username, 'ROLE_USER' as role FROM users u UNION SELECT i.username, 'ROLE_INSP' as role FROM inspectors i) users WHERE username =?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/register-insp/**").permitAll()
                .antMatchers("/register-inz/**").permitAll()
                .antMatchers("/inspector/**").hasRole("INSP")
                .antMatchers("/user/**").hasRole("USER")
                .and().formLogin();
    }
}
