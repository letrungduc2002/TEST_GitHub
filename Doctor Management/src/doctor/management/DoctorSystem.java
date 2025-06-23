/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package doctor.management;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 *
 * @author letru
 */
public class DoctorSystem {

    private List<Doctor> doctors = new ArrayList<>();

    public void addDoctor(Doctor doctor) {
        doctors.add(doctor);
    }

    public Doctor searchDoctorById(int id) {
        for (Doctor doctor : doctors) {
            if (doctor.getId() == id) {
                return doctor;
            }
        }
        return null;
    }

    public List<Doctor> searchDoctorByName(String name) {
        List<Doctor> result = new ArrayList<>();
        for (Doctor d : doctors) {
            if (d.getName().contains(name)) {
                result.add(d);
            }
        }
        return result;
    }

    public boolean deleteDoctor(int id) {
        boolean check = false;
        for (Doctor doctor : doctors) {
            if (doctor.getId() == id) {
                doctors.remove(doctor);
                check = true;
                break;
            }
        }
        return check;
    }
    
 

    public List<Doctor> sortedByBirth() {
        doctors.sort((d1, d2) -> {
            try {
                Date dob1 = new SimpleDateFormat("dd/MM/yyyy").parse(d1.getDateOfBirth());
                Date dob2 = new SimpleDateFormat("dd/MM/yyyy").parse(d2.getDateOfBirth());
                return dob1.compareTo(dob2);
            } catch (ParseException e) {
                return 0;
            }
        });
        return doctors;
    }

    public List<Doctor> getListDoctors() {
        return doctors;
    }
}
