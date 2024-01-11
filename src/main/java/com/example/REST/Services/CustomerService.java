package com.example.REST.Services;

import com.example.REST.models.Customer;
import com.example.REST.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerService {

    private final CustomerRepository customerRepository;


    @Autowired
    public CustomerService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    public Optional<Customer> findById(Integer customerId) {
        return customerRepository.findById(customerId);
    }

    public Iterable<Customer> findAll() {
        return customerRepository.findAll();
    }

    public Customer saveCustomer(Customer customerId) {
        return customerRepository.save(customerId);
    }

    public void deleteById(Integer customerId) {
        customerRepository.deleteById(customerId);
    }
}