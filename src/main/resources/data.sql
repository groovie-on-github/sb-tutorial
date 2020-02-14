DELETE FROM "user";

INSERT INTO "user"(id, name, email, password_digest, created_at, updated_at)
  VALUES(RANDOM_UUID(), 'Rails Tutorial', 'example@railstutorial.org',
   '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O',
   CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP());
