package Files;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class Inscriptions {
    private static final String FILE_PATH = "C:\\Users\\Jordy vindas\\OneDrive - Universidad de Costa Rica\\Documentos\\NetBeansProjects\\SimposioUcr\\inscripciones_encrypted.txt";
    private Encrypted encryptor;

    public Inscriptions() {
        encryptor = new Encrypted();
    }

    public boolean saveInscripcion(String email, String userName, String idNumber, String eventId, String eventName) {
        try {
            String encryptedEmail = encryptor.encrypt(email);
            String encryptedUserName = encryptor.encrypt(userName);
            String encryptedIdNumber = encryptor.encrypt(idNumber);
            String encryptedEventId = encryptor.encrypt(eventId);
            String encryptedEventName = encryptor.encrypt(eventName);

            Path filePath = Paths.get(FILE_PATH);
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath.toString(), true))) {
                writer.write(encryptedEventId + "|" + encryptedEventName + "|" + encryptedUserName + "|" + encryptedIdNumber + "|" + encryptedEmail);
                writer.newLine();
                System.out.println("Inscription saved successfully to the file.");
                return true;
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<String[]> getInscripciones() throws Exception {
        List<String[]> inscripciones = new ArrayList<>();
        Path filePath = Paths.get(FILE_PATH);
        try (BufferedReader reader = Files.newBufferedReader(filePath, StandardCharsets.UTF_8)) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split("\\|");
                if (data.length < 5) {
                    continue;
                }
                String decryptedEventId = encryptor.decrypt(data[0].trim());
                String decryptedEventName = encryptor.decrypt(data[1].trim());
                String decryptedUserName = encryptor.decrypt(data[2].trim());
                String decryptedIdNumber = encryptor.decrypt(data[3].trim());
                String decryptedEmail = encryptor.decrypt(data[4].trim());
                inscripciones.add(new String[]{decryptedEventId, decryptedEventName, decryptedUserName, decryptedIdNumber, decryptedEmail});
            }
        }
        return inscripciones;
    }
}