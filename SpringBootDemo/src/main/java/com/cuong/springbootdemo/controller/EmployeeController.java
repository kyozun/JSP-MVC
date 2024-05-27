package com.cuong.springbootdemo.controller;

import com.cuong.springbootdemo.model.Employee;
import com.cuong.springbootdemo.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {
    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        super();
        this.employeeService = employeeService;
    }


    // List all employees
    @GetMapping("/employees")
    public String getAllEmployees(Model model) {
        model.addAttribute("employees", employeeService.getAllEmployees());
        return "employees";
    }

    // Create 1
    @GetMapping("/employees/new")
    public String createEmployeeForm(Model model) {
        // create employee object to hold employee form data
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "create_employee";
    }

    // Add 1
    @PostMapping("/employees")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/employees";
    }

    @GetMapping("/employees/edit/{id}")
    public String editEmployeeForm(@PathVariable Long id, Model model) {
        model.addAttribute("student", employeeService.getEmployeeById(id));
        return "edit_student";
    }

    @PostMapping("/employees/{id}")
    public String updateEmployee(@PathVariable Long id, @ModelAttribute("student") Employee student, Model model) {
        // get student from database by id
        Employee existingEmployee = employeeService.getEmployeeById(id);
        existingEmployee.setId(id);
        existingEmployee.setFirstName(student.getFirstName());
        existingEmployee.setLastName(student.getLastName());
        existingEmployee.setEmail(student.getEmail());

        // save updated student object
        employeeService.updateEmployee(existingEmployee, id);
        return "redirect:/employees";
    }

    // handler method to handle delete student request

    @GetMapping("/employees/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees";
    }


//    // build get all employees REST API
//    @GetMapping
//    public List<Employee> getAllEmployees(){
//        return employeeService.getAllEmployees();
//    }
//
//    // build create employee REST API
//    @PostMapping()
//    public ResponseEntity<Employee> saveEmployee(@RequestBody Employee employee){
//        return new ResponseEntity<Employee>(employeeService.saveEmployee(employee), HttpStatus.CREATED);
//    }
//
//
//    // build get employee by id REST API
//    // http://localhost:8080/api/employees/1
//    @GetMapping("{id}")
//    public ResponseEntity<Employee> getEmployeeById(@PathVariable("id") long employeeId){
//        return new ResponseEntity<Employee>(employeeService.getEmployeeById(employeeId), HttpStatus.OK);
//    }
//
//    // build update employee REST API
//    // http://localhost:8080/api/employees/1
//    @PutMapping("{id}")
//    public ResponseEntity<Employee> updateEmployee(@PathVariable("id") long id
//            ,@RequestBody Employee employee){
//        return new ResponseEntity<Employee>(employeeService.updateEmployee(employee, id), HttpStatus.OK);
//    }
//
//    // build delete employee REST API
//    // http://localhost:8080/api/employees/1
//    @DeleteMapping("{id}")
//    public ResponseEntity<String> deleteEmployee(@PathVariable("id") long id){
//
//        // delete employee from DB
//        employeeService.deleteEmployee(id);
//
//        return new ResponseEntity<String>("Employee deleted successfully!.", HttpStatus.OK);
//    }

}
