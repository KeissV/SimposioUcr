package Files;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

public class EmailService {

    private static final String API_KEY = "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"; // Reemplaza con tu clave API real
    private static final String API_URL = "https://api.brevo.com/v3/smtp/email";

    public static String sendEmail(String toEmail, String subject, String content) throws Exception {
        URL url = new URL(API_URL);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setDoOutput(true);
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setRequestProperty("api-key", API_KEY); // Cambiado a "api-key"

        String jsonInputString = String.format("{\"sender\":{\"email\":\"jordyvindas7@gmail.com\"},\"to\":[{\"email\":\"%s\"}],\"subject\":\"%s\",\"htmlContent\":\"%s\"}",
                toEmail, subject, content);

        try (OutputStream os = conn.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("UTF-8");
            os.write(input, 0, input.length);
        }

        int responseCode = conn.getResponseCode();
        StringBuilder response = new StringBuilder();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            try (Scanner scanner = new Scanner(conn.getInputStream())) {
                while (scanner.hasNextLine()) {
                    response.append(scanner.nextLine());
                }
                return "Success";
            }
        } else {
            try (Scanner scanner = new Scanner(conn.getErrorStream())) {
                while (scanner.hasNextLine()) {
                    response.append(scanner.nextLine());
                }
            }
            return "Failed: " + response.toString();
        }
    }
}
