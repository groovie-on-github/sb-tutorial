DELETE FROM "user";

INSERT INTO "user" ( id, name, email )
    VALUES ( RANDOM_UUID(), 'test user1', 'user1@example.com' );
INSERT INTO "user" ( id, name, email )
    VALUES (RANDOM_UUID(),  'test user1', 'user1.alternate@example.com' );
INSERT INTO "user" ( id, name, email )
    VALUES (RANDOM_UUID(),  'test user2', 'user2@example.com' );

INSERT INTO micropost ( id, content, "user_id" )
    SELECT RANDOM_UUID(), 'test micropost1-1', id FROM "user" WHERE email = 'user1@example.com';
INSERT INTO micropost ( id, content, "user_id" )
    SELECT RANDOM_UUID(), 'test micropost1-2', id FROM "user" WHERE email = 'user1@example.com';
INSERT INTO micropost ( id, content, "user_id" )
    SELECT RANDOM_UUID(), 'test micropost2-1', id FROM "user" WHERE email = 'user2@example.com';
