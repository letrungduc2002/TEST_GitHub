/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package doctor.management;

/**
 *
 * @author letru
 */
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


public class Doctor {

    private static int count = 1;
    private int id;
    private String name;
    private String dateOfBirth;
    private String specialization;
    private int availability;
    private String email;
    private String mobile;
    
    public Doctor(String name, String dateOfBirth, String specialization, int availability, String email, String mobile) {
        this.id = count++;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.specialization = specialization;
        this.availability = availability;
        this.email = email;
        this.mobile = mobile;
    }

    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public String getSpecialization() {
        return specialization;
    }

    public int getAvailability() {
        return availability;
    }

    public String getEmail() {
        return email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public void setAvailability(int availability) {
        this.availability = availability;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        return String.format("ID: %d | Name: %s | DOB: %s | Specialization: %s | Availability: %d | Email: %s | Mobile: %s",
                id, name, dateOfBirth, specialization, availability, email, mobile);
    }
}
