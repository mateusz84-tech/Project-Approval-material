package pl.matkoc.material_approval.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebAppConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("register/insp/login").setViewName("/register/inspector");
        registry.addViewController("registry/user/login").setViewName("/register/user");
    }
}
