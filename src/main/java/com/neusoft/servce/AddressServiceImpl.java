package com.neusoft.servce;

import java.util.List;


import org.hibernate.validator.constraints.SafeHtml.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.AddressMapper;
import com.neusoft.domain.Address;
import com.neusoft.domain.AddressExample;
import com.neusoft.domain.AddressExample.Criteria;

@Service
public class AddressServiceImpl implements AddressService {
	@Autowired
	AddressMapper addressMapper;
	
	public List queryByUser(int userid){
		AddressExample addexm = new AddressExample();
		Criteria cr = addexm.createCriteria();
		cr.andUseridEqualTo(userid);
		List<Address> addresses = addressMapper.selectByExample(addexm);
		return addresses;
	}
	
	public boolean address_add(Address address)
	{
		int suc = addressMapper.insertSelective(address);
		System.out.println("addressinsertsuc----"+suc);
		return suc>0;
	}
	
	
	
}
