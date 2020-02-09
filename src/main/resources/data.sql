DELETE FROM "user";

INSERT INTO "user"(id, name, email, password_digest)
  VALUES(RANDOM_UUID(), 'Michael Hartl', 'mhartl@example.com', '$2a$10$h1sngvIQNO6rZ/y.eJZAIOaOl0A9lTgES03xvljDilzm14wDR46Fa');
