package com.example.REST.controllers;

import com.example.REST.Services.CustomerService;
import com.example.REST.models.Customer;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

import static com.example.REST.utils.xslTransform.getModelAndView;

@RestController
@RequestMapping(
        value = "api",
        produces = {"application/json", "application/xml"}
)
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/customer")
    public @ResponseBody Iterable<Customer> getCustomers() {
        return customerService.findAll();
    }

    @GetMapping("/customer/{id}")
    public @ResponseBody Optional<Customer> getCustomer(@PathVariable int id) {
        return customerService.findById(id);
    }

    @PostMapping("/customer")
    public @ResponseBody int createCustomer(@RequestBody Customer customer) {
        if (customer == null){
            return Response.SC_NOT_FOUND;
        }
        customerService.saveCustomer(customer);
        return Response.SC_OK;
    }

    @DeleteMapping("/customer/{id}")
    public @ResponseBody int deleteCustomer(@PathVariable int id) {
        if (customerService.findById(id).isEmpty()){
            return Response.SC_NOT_FOUND;
        }
        customerService.deleteById(id);

        return Response.SC_OK;
    }

    @PutMapping("/customer/{id}")
    public @ResponseBody int updateCustomer(@RequestBody Customer newCustomer, @PathVariable Integer id) {
        return customerService.findById(id)
                .map(customer -> {
                    if (newCustomer.getCustomerName() != null) {
                        customer.setCustomerName(newCustomer.getCustomerName());
                    }
                    if (newCustomer.getAddress() != null) {
                        customer.setAddress(newCustomer.getAddress());
                    }
                    customerService.saveCustomer(customer);
                    return Response.SC_OK;
                })
                .orElseGet(() -> {
                    return Response.SC_NOT_FOUND;
                });
    }

    @GetMapping(path = "xsl/customer")
    public ModelAndView getCustomer() throws JsonProcessingException {
        Iterable<Customer> list = customerService.findAll();
        return getModelAndView(list, "customerXSL");
    }
}
