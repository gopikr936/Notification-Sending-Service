CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    fcm_registration_token VARCHAR(255) -- Assuming a VARCHAR type for the FCM token
);

CREATE TABLE notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    notification_type INT DEFAULT 0,
    cmd INT DEFAULT 0,
    metadata VARCHAR(256),
    title VARCHAR(100),
    description LONGTEXT,
    is_markdown INT DEFAULT 0,
    youtube_link VARCHAR(256),
    img_link VARCHAR(256),
    audio VARCHAR(256),
    qr_code VARCHAR(256),
    link VARCHAR(256),
    link_label VARCHAR(50),
    priority INT,
    state INT DEFAULT 1,
    created_by VARCHAR(50),
    creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expiry_time TIMESTAMP,
    dispatch_time TIMESTAMP,
    is_notification_pushed INT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE notification_templates (
    template_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    locale VARCHAR(50) DEFAULT 'en',
    version INT DEFAULT 1,
    active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


