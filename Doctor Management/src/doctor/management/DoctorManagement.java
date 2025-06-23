/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package doctor.management;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author letru
 */
public class DoctorManagement {

    private static final Scanner sc = new Scanner(System.in);
    private static final DoctorSystem doctorSystem = new DoctorSystem();

    public static void menu() {
        System.out.println("\n=== Doctor Management System ===");
        System.out.println("1. Create a Doctor");
        System.out.println("2. Edit a Doctor");
        System.out.println("3. Delete Doctor");
        System.out.println("4. Search Doctor by ID");
        System.out.println("5. Search Doctor by Name");
        System.out.println("6. Sort Doctors by Date of Birth");
        System.out.println("7. List All Doctors");
        System.out.println("0. Exit");
        
    }

    public static void main(String[] args) {
       
        while (true) {
            menu();
            int choice = Utilss.validateChoice();
            switch (choice) {
                case 1:
                    addDoctor();
                    break;
                case 2:
                    editDoctor();
                    break;
                case 3:
                    deleteDoctor();
                    break;
                case 4:
                    searchById();
                    break;
                case 5:
                    searchByName();
                    break;
                case 6:
                    listSortDate();
                    break;
                case 7:
                    listDoctor();
                    break;
                case 0:
                    System.exit(0);
                default:
                    System.out.println("Please enter again !");
            }
        }
    }

    private static void addDoctor() {

        String name = Utilss.validateNameandSpeciali("Enter doctor 's name: ", 50, "Name must not longer than 50 characters !!!", "Name must contain only letters and must not empty !!!");
        String dateOfBirth = Utilss.validateBirth();
        String specialization = Utilss.validateNameandSpeciali("Enter doctor 's specialization: ", 255, "Specialization must not longer than 255 characters !!!", "Specialization must contain only letters and must not empty !!!");

        int availability = Utilss.validateAvailability();
        String email = Utilss.validateEmail();

        String mobile = Utilss.validateMobile();
        doctorSystem.addDoctor(new Doctor(name, dateOfBirth, specialization, availability, email, mobile));
        System.out.println("Doctor added successfully");
    }

    private static void editDoctor() {

        int id = Utilss.validateID();
        Doctor result = doctorSystem.searchDoctorById(id);
        if (result != null) {

            String name = Utilss.validateNameandSpeciali("Enter doctor 's name: ", 50, "Name must not longer than 50 characters !!!", "Name must contain only letters and must not empty !!!");
            String dateOfBirth = Utilss.validateBirth();
            String specialization = Utilss.validateNameandSpeciali("Enter doctor 's specialization: ", 255, "Specialization must not longer than 255 characters !!!", "Specialization must contain only letters and must not empty !!!");
            int availability = Utilss.validateAvailability();
            String email = Utilss.validateEmail();
            String mobile = Utilss.validateMobile();

            result.setName(name);
            result.setDateOfBirth(dateOfBirth);
            result.setSpecialization(specialization);
            result.setAvailability(availability);
            result.setEmail(email);
            result.setMobile(mobile);
        } else {
            System.out.println("Doctor not found.");
            return;
        }

    }

    private static void deleteDoctor() {
        int id = Utilss.validateID();
        if (doctorSystem.deleteDoctor(id) == true) {
            System.out.println("Doctor deleted successfully !");
        } else {
            System.out.println("Can not delete doctor !");
        }
    }

    private static void searchById() {
        int id = Utilss.validateID();
        Doctor doctor = doctorSystem.searchDoctorById(id);
        if (doctor != null) {
            System.out.println(doctor.toString());
        } else {
            System.out.println("Can not find ID of Doctor");
        }
    }

    private static void searchByName() {
        String name = Utilss.validateNameandSpeciali("Enter doctor 's name: ", 50, "Name must not longer than 50 characters !!!", "Name must contain only letters and must not empty !!!");
        boolean check = false;
        List<Doctor> result = doctorSystem.searchDoctorByName(name);
        for (Doctor a : result) {
            if(a.getName().equals(name)){
                System.out.println(a.toString());
                check = true;
            }
        }
        if(check == false){
             System.out.println("Can not find name of Doctor");
        }
    }

    private static void listSortDate() {
        List<Doctor> result = doctorSystem.sortedByBirth();
        for (Doctor a : result) {
            System.out.println(a.toString());
        }
    }

    private static void listDoctor() {
        List<Doctor> result = doctorSystem.getListDoctors();
        for (Doctor a : result) {
            System.out.println(a.toString());
        }
    }

}
