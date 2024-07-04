
package Files;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Request {
    private static final String FILE_PATH = "C:\\Users\\manua\\OneDrive\\Documentos\\NetBeansProjects\\SimposioUcr\\request.txt";
    
    /**
     * This method saves a new user to a file users.txt
     *
     * @param name
     * @param email
     * @param phone
     * @param message
     * @return true if the user was inserted, false if there was no insertion
     */
    public boolean saverequests(String name, String email, String phone, String message) {
        Path filePath = Paths.get(FILE_PATH);
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath.toString(), true))) {
            writer.write(name + "," + email + "," + phone + "," + message);
            writer.newLine();
            System.out.println("User saved successfully to the file.");
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}