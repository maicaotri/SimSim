package com.app.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	DataSource dataSource;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("SELECT `username`, `password`, `enabled` from mainUser WHERE `username` =?")
				.authoritiesByUsernameQuery("SELECT `username`, `role` FROM mainUser WHERE `username`=?");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN").and().authorizeRequests()
				.antMatchers("/user/**").hasRole("USER").anyRequest().permitAll().anyRequest().permitAll().and()
				.formLogin().loginPage("/dangnhap").loginProcessingUrl("/login").usernameParameter("username")
				.passwordParameter("password").defaultSuccessUrl("/admin/danhsach").failureUrl("/dangnhap?error=failed")
				.and().exceptionHandling().accessDeniedPage("/dangnhap?error=deny");
		
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		// bo qua nhung duong dan /resource
		web.ignoring().antMatchers("/resource/**");
	}
}
