package br.edu.eseg.pcbuilder.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.web.csrf.XorCsrfTokenRequestAttributeHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // Usa CookieCsrfTokenRepository para evitar:
        // 1. Double-login (token de sessão inválido após logout/nova sessão)
        // 2. "Cannot create session after response committed" no login.html grande
        XorCsrfTokenRequestAttributeHandler requestHandler = new XorCsrfTokenRequestAttributeHandler();
        requestHandler.setCsrfRequestAttributeName(null);

        http
                .authorizeHttpRequests(authorize -> authorize
                        .requestMatchers("/h2-console/**").permitAll()
                        .requestMatchers("/login", "/registro", "/css/**", "/js/**", "/images/**").permitAll()
                        .anyRequest().authenticated()
                )
                .formLogin(form -> form
                        .loginPage("/login")
                        .defaultSuccessUrl("/", true)
                        .permitAll()
                )
                .logout(logout -> logout
                        .logoutSuccessUrl("/login?logout")
                        .invalidateHttpSession(true)
                        .clearAuthentication(true)
                        .permitAll()
                )
                .csrf(csrf -> csrf
                        .csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse())
                        .csrfTokenRequestHandler(requestHandler)
                        .ignoringRequestMatchers("/h2-console/**")
                        .ignoringRequestMatchers("/build/curtir/**")
                        .ignoringRequestMatchers("/wishlist/toggle/**")
                        .ignoringRequestMatchers("/recomendar/salvar-selecionados")
                        .ignoringRequestMatchers("/recomendar/build-automatica")
                        .ignoringRequestMatchers("/api/**")
                )
                .headers(headers -> headers
                        .frameOptions(frameOptions -> frameOptions.sameOrigin())
                );

        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}