package Main;

import Service.*;
import Model.*;
import Menu.*;
import View.LoginSistem;

import java.util.Scanner;

public class EldercareSystem{
    public static void main(String[] args) {
        java.awt.EventQueue.invokeLater(() -> new LoginSistem().setVisible(true));
//        Scanner input = new Scanner(System.in);
//        SistemEldercare auth = new LoginSystem();
//
//        System.out.println("=== ELDERCARE SYSTEM ===");
//        System.out.print("Username: ");
//        String username = input.nextLine();
//        System.out.print("Password: ");
//        String password = input.nextLine();
//
//        User user = auth.login(username, password);
//        if (user == null) {
//            System.out.println("Login gagal. Periksa username/password.");
//            return;
//        }
//
//        System.out.println("Login berhasil!");
//        user.showInfo();
//
//        if (user instanceof Petugas) {
//            MenuPetugas menu = new MenuPetugas();
//            menu.tampilMenu((Petugas) user);
//        } else if (user instanceof Dokter) {
//            MenuDokter menu = new MenuDokter();
//            menu.tampilMenu((Dokter) user);
//        } else {
//            System.out.println("Role lain (admin) - fitur belum tersedia.");
//        }
//
//        System.out.println("Terima kasih.");
//        input.close();
//    }
}
}
