package com.abcars.service;

import java.util.HashSet;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.abcars.model.User;
import com.abcars.repository.RoleRepository;
import com.abcars.repository.UserRepository;

@RunWith(MockitoJUnitRunner.class)
public class UserServiceTest {
	
	@InjectMocks
	UserService userService;
	
	@Mock
	RoleRepository roleRepository;
	
	@Mock
	PasswordEncoder passwordEncoder;
	
	@Mock
	UserRepository userRepository;
	
	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void saveRegisterUserData() {
		User user = new User();
		user.setId((long) 1);
		user.setName("Snow Kings");
		user.setUserName("snow");
		user.setEmail("snow@gmail.com");
		String encodedPassword = passwordEncoder.encode("snow123");
		user.setPassword(encodedPassword);
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		Mockito.when(userRepository.save(user)).thenReturn(user);
		String userResponse = userService.save(user);
		Assert.assertEquals("User saved successfully", userResponse);
	}
	
	
	@Test 
		public void proveUsername() {
		User user = new User();
		String username = "snowflake";
		user.setUserName(username) ;
		Mockito.when(userRepository
		.findByUserName ( username ) )
		.thenReturn(user);
		User loginUser = userService.findLoginUser(username);
		Assert.assertEquals(user, loginUser);
	}
	/*
	 * @Test public void isPersonExistbyUsername() { User user = new User(); String
	 * username = "amelia"; user.setUserName(username);
	 * 
	 * Mockito.when(userRepository.findByUserName(username)).thenReturn(user); User
	 * loginUser = userService.findLoginUser(username); Assert.assertEquals(user,
	 * loginUser); }
	 */
	
	

}
