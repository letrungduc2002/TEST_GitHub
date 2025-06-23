/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package doctor.management;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
import java.util.regex.Pattern;

public class Utilss {

    private static final Scanner sc = new Scanner(System.in);

    public static int validateChoice() {
        Scanner scanner = new Scanner(System.in);
        String input;
        int choice;

        while (true) {
            System.out.print("Choose option:  ");
            input = scanner.nextLine().trim();
            if (input.isEmpty()) {
                System.out.println("Option must not empty. Please enter again !!!");
                continue;
            }
            if (!input.matches("\\d+")) {
                System.out.println("Option must be an integer number. Please enter again !!!");
                continue;
            }

            choice = Integer.parseInt(input);
            if (choice < 0 || choice > 7) {
                System.out.println("Choose option:  must be => 0 and <= 7");
                continue;
            }
            break; // Hợp lệ
        }
        return choice;
    }

    public static int validateID() {
        String input;
        int id;

        while (true) {
            System.out.print("Enter doctor 's ID: ");
            input = sc.nextLine().trim();
            if (input.isEmpty()) {
                System.out.println("ID cannot be empty. Please enter again!!!");
                continue;
            }
            try {
                id = Integer.parseInt(input);
                if (id <= 0) {
                    System.out.println("ID must be a positive integer greater than 0. Please enter again!!!");
                    continue;
                }
                break;
            } catch (NumberFormatException e) {
                System.out.println("ID must be a valid integer number. Please enter again!!!");
            }
        }
        return id;
    }

    public static String validateNameandSpeciali(String mess, int length, String error1, String error2) {
        String name;
        while (true) {
            System.out.print(mess);
            name = sc.nextLine().trim();
            if (name.length() > length) {
                System.out.println(error1);
                continue;
            }
            if (!name.matches("[a-zA-Z\\s]+")) {
                System.out.println(error2);
                continue;
            }
            break;
        }
        return name;
    }

    public static String validateBirth() {
        System.out.print("Date of Birth: ");
        while (true) {
            String date = sc.nextLine();
            if (!date.matches("\\d{2}/\\d{2}/\\d{4}")) {
                System.out.print("Date is in wrong format. Please enter again ((dd/MM/yyyy))" + "\n" + "Date of Birth: ");
                continue;
            }
            SimpleDateFormat convert = new SimpleDateFormat("dd/MM/yyyy");
            convert.setLenient(false);
            try {
                Date validDate = convert.parse(date);
                return convert.format(validDate);
            } catch (Exception e) {

                //BUGG : nhập năm sinh 2555 vẫn oke ??/
                System.out.print("Date must be valid real Date" + "\n" + "Date of Birth: ");
            }
        }
    }

    public static int validateAvailability() {
        Scanner scanner = new Scanner(System.in);
        String input;
        int availability;

        while (true) {
            System.out.print("Enter doctor's availability: ");
            input = scanner.nextLine().trim();
            if (input.isEmpty()) {
                System.out.println("Availability must not empty. Please enter again !!!");
                continue;
            }
            if (!input.matches("\\d+")) {
                System.out.println("Availability must be an integer number. Please enter again !!!");
                continue;
            }

            availability = Integer.parseInt(input);
            if (availability < 0 || availability > 3) {
                System.out.println("Availability must be > 0 and < 4");
                continue;
            }
            break; // Hợp lệ
        }
        return availability;
    }

    public static String validateEmail() {
        Scanner scanner = new Scanner(System.in);
        String email;
        String emailRegex = "^[a-zA-Z0-9._%+-]+@gmail\\.com$";
        while (true) {
            System.out.print("Enter doctor's email: ");
            email = scanner.nextLine().trim();
            if (email.isEmpty()) {
                System.out.println("Email cannot be empty. Please enter again!!!");
                continue;
            }
            if (!email.matches(emailRegex)) {
                System.out.println("Email must end with @gmail.com. Please enter again!!!");
                continue;
            }

            break; // Hợp lệ
        }

        return email;
    }

    public static String validateMobile() {

        String mobile;
        String mobileRegex = "^\\(\\d{3}\\)-\\d{3}-\\d{4}$";
        Pattern pattern = Pattern.compile(mobileRegex);

        while (true) {
            System.out.print("Enter doctor 's mobile number (000)-000-0000): ");
            mobile = sc.nextLine().trim();
            if (mobile.isEmpty()) {
                System.out.println("Mobile number cannot be empty. Please enter again !!!");
                continue;
            }
            if (!pattern.matcher(mobile).matches()) {
                System.out.println("Phonenumber is wrong format . Please enter again !!!");
                continue;
            }
            break; // Hợp lệ
        }
        return mobile;
    }
}
