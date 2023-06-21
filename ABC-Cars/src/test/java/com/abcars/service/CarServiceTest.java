package com.abcars.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;

import com.abcars.model.Car;
import com.abcars.model.CarBidding;
import com.abcars.model.User;
import com.abcars.repository.BidRepository;
import com.abcars.repository.CarRepository;
import com.abcars.repository.RoleRepository;
import com.abcars.repository.UserRepository;





@RunWith(MockitoJUnitRunner.class)
public class CarServiceTest {
	
	@InjectMocks
	CarService carService;
	
	@Mock
	CarRepository carRepository;
	
	@Mock
	BidRepository bidRepository;
	
	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void testSaveCar() {
		Car car = new Car();
		car.setId((long) 1);
		car.setName("Honda Civic Type 3");
		car.setModel("Civic Type R");
		car.setPrice("120000");
		car.setMake("2023");
		car.setRegisteration("2023");
		Mockito.when(carRepository.save(car)).thenReturn(car);
		Car savedCar = carService.save(car);
		Assert.assertEquals(car, savedCar);
		
	}
	
	@Test
	public void testSearchCar() {
		Car car = new Car();
		String searchInput = "Honda";
		car.setModel(searchInput);
		
		List<Car> searchCar = new ArrayList<Car>();
		searchCar.add(car);
		
		Mockito.when(carRepository.search(searchInput)).thenReturn(searchCar);
		List<Car> search = carService.search(searchInput);
		Assert.assertEquals(searchCar, search);
	}
	
	
	@Test
	public void testSaveCarBidding() {
		Car car = new Car();
		car.setName("Honda Civic Type R");
		User user = new User();
		user.setName("Patrick");
		CarBidding bid = new CarBidding();
		bid.setCar(car);
		bid.setUser(user);
		bid.setBidderPrice(150000);
		
		Mockito.when(bidRepository.save(bid)).thenReturn(bid);
		CarBidding saveBid = carService.saveBid(bid);
		Assert.assertEquals(bid, saveBid);
		
	}
	
	
	
	

}
