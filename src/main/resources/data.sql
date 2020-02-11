DELETE FROM "user";

INSERT INTO "user"(id, name, email, password_digest, created_at, updated_at)
  VALUES(RANDOM_UUID(), 'Rails Tutorial', 'example@railstutorial.org',
   '$2a$10$h1sngvIQNO6rZ/y.eJZAIOaOl0A9lTgES03xvljDilzm14wDR46Fa',
   CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
