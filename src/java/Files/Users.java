
package Files;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

   public class Users {

    private static final String FILE_PATH_2 = "C:\\Users\\Jordy vindas\\OneDrive - Universidad de Costa Rica\\Documentos\\NetBeansProjects\\SimposioUcr\\register.txt";

  public boolean saveusers(String name, String lastname, String username, String password) {
        Path filePath = Paths.get(FILE_PATH_2);
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath.toString(), true))) {
            writer.write(name + "," + lastname + "," + username + "," + password); // Guardar sin cifrar
            writer.newLine();
            System.out.println("User saved successfully to the file.");
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

   public boolean loginuser(String password, String user) throws Exception {
        Encrypted encryptor = new Encrypted();
        try (BufferedReader reader = Files.newBufferedReader(Paths.get(FILE_PATH_2), StandardCharsets.UTF_8)) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                if (data.length < 4) {
                    continue;
                }
                String storedUsername = encryptor.decrypt(data[2].trim());
                String storedPassword = encryptor.decrypt(data[3].trim());

                System.out.println("Stored Username: " + storedUsername);
                System.out.println("Stored Password: " + storedPassword);

                if (storedUsername.equals(user) && storedPassword.equals(password)) {
                    return true;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }
   }
