package studio.binarybridge.notification.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import studio.binarybridge.notification.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    // You can define custom query methods here if needed
}
