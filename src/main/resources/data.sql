INSERT INTO users (username, email, fcm_registration_token) VALUES
('john_doe', 'john@example.com', 'fcm_token_123'),
('jane_doe', 'jane@example.com', 'fcm_token_456');


INSERT INTO notifications (
    user_id,
    notification_type,
    cmd,
    metadata,
    title,
    description,
    is_markdown,
    youtube_link,
    img_link,
    audio,
    qr_code,
    link,
    link_label,
    priority,
    state,
    created_by,
    creation_time,
    expiry_time,
    dispatch_time,
    is_notification_pushed
) VALUES
(1, 1, 0, '{\"key\":\"value\"}', 'Welcome!', 'Your account has been successfully created.', 0, NULL, NULL, NULL, NULL, 'http://example.com', 'Click Here', 1, 1, 'admin', CURRENT_TIMESTAMP, NULL, NULL, 0),
(2, 2, 0, '{\"key\":\"value\"}', 'Reminder', 'Your subscription is about to expire.', 0, NULL, NULL, NULL, NULL, 'http://example.com/renew', 'Renew Now', 2, 1, 'admin', CURRENT_TIMESTAMP, NULL, NULL, 0);


INSERT INTO notification_templates (title, content, locale, version, active) VALUES
('Welcome Template', 'Hello, ${user}, welcome to our service!', 'en', 1, TRUE),
('Reminder Template', 'Dear ${user}, your subscription will expire on ${expiry_date}.', 'en', 1, TRUE);

