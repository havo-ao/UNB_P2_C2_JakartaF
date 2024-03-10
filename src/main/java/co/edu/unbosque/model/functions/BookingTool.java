package co.edu.unbosque.model.functions;

import java.util.Random;

public class BookingTool {
	
	public static String generateId() {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuilder sb = new StringBuilder(6);
        for (int i = 0; i < 6; i++) {
            char charUnit = chars.charAt(random.nextInt(chars.length()));
            sb.append(charUnit);
        }
        return sb.toString().toUpperCase();
    }
}
