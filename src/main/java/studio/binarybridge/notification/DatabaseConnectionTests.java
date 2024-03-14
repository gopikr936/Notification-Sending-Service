package studio.binarybridge.notification;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import studio.binarybridge.notification.model.User;
import studio.binarybridge.notification.repository.UserRepository;

@Component
class DatabaseTestRunner implements CommandLineRunner {

    private final UserRepository userRepository;

    public DatabaseTestRunner(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void run(String... args) {
        // Create a new user and save it to the database
        User newUser = new User();
        newUser.setUsername("testuser");
        newUser.setEmail("test@example.com");
        userRepository.save(newUser);

        // Fetch the user from the database
        User retrievedUser = userRepository.findById(Long.valueOf(newUser.getId())).orElse(null);
        assert retrievedUser != null;
        System.out.println("Gopi" + retrievedUser.getUsername());
    }
}

