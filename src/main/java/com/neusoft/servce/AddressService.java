package com.neusoft.servce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.neusoft.dao.AddressMapper;
import com.neusoft.domain.Address;

public interface AddressService {
	
	public List queryByUser(int userid);
	public boolean address_deleteById(int addressid);
	public boolean address_add(Address address);
	public boolean address_update(Address address);
	public Address address_queryById(int addressid);
}
