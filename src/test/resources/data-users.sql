INSERT INTO "user"(id, name, email, password_digest, is_admin, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Michael Example', 'michael@example.com',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O', true,
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='michael@example.com');

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Sterling Archer', 'duchess@example.gov',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='duchess@example.gov');

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Lana Kane', 'hands@example.gov',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O',
    false, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='hands@example.gov');

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Malory Archer', 'boss@example.gov',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='boss@example.gov');


/*generated dummy users*/

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 1', 'user-1@example.com', '$2a$10$N/7leuG70TNCi0cRKkIsseRJD.ijCXvGW4jjwTzgi.oIqVvZnSBx2',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-1@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 2', 'user-2@example.com', '$2a$10$B6aEHN2At9RKb.LrZKEVTO9CfUTA.LV6AfXVoEg5Fw4jqD3eyVzk6',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-2@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 3', 'user-3@example.com', '$2a$10$8ylBgrVpcvjIO64nXHArse9LXvOIM.5cF8Dr3gI8/1r5wV1T9HLNK',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-3@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 4', 'user-4@example.com', '$2a$10$lYd/Qsz8waK9M6YtPxWuEuGk.O.uW3wG.0jMohmpui2mYXcYMNJOK',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-4@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 5', 'user-5@example.com', '$2a$10$AuV4C5sOLnij7slYRT6vT.3AN4/0rrzf7Y4d5HJUb/lHzD5qYDSle',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-5@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 6', 'user-6@example.com', '$2a$10$u8dlxsB5JzD.iAqgtsciJusENhh7QyW6cRG6zCpkKqH77JS//hOkS',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-6@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 7', 'user-7@example.com', '$2a$10$gIuuvDHmts4pICn8j88T8.RCxzQgiv22jmkJGoOYEZt3ZXRjPmoyS',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-7@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 8', 'user-8@example.com', '$2a$10$Vc8mPH9cS1/gqAFztRSK7eB3S7ZMjbLNg56Rhj74zNbt840712bHi',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-8@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 9', 'user-9@example.com', '$2a$10$/bR9yYMccbpuynXDv31Y/uKgr7TVSNelVD6iW1bILLh8QQVaO9p3i',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-9@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 10', 'user-10@example.com', '$2a$10$hJePC7ZVLhBz8gu.oJGMf.WxTXpLB5p8K9npMpecGnB7U0sjph0UW',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-10@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 11', 'user-11@example.com', '$2a$10$emDkUixAAzM0bw86lwMKF.JQLdmMpU5rhtssUWkU7koWotDUUy/l2',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-11@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 12', 'user-12@example.com', '$2a$10$LGtzPrbVVFm2tyq2X.NaH.oXO6VVRqxfUt/jZBl0T4Yno2csrq12O',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-12@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 13', 'user-13@example.com', '$2a$10$wOLIVnfJrTBbNsTX/WgseeYDcTbgvw4DMmKLOQvtItPZ6yMJzIpyG',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-13@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 14', 'user-14@example.com', '$2a$10$weg5Ds8x.THzWOxkGLALveyf7lz9jnY0hudvT0Ffov4McCVf9.9hi',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-14@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 15', 'user-15@example.com', '$2a$10$ercMuXs4xKXdhEH4zeoTyeHGt3VGgfDK5g1g0v.pU3PPDHqzU7hiK',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-15@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 16', 'user-16@example.com', '$2a$10$FDEA478QUmiK2ESGys7Ob./CueuE6NqJ2gfz2PxHyGRViTEX0fr3m',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-16@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 17', 'user-17@example.com', '$2a$10$4PijSzvRt/zkuplaqYbp1.Kg/.2659yTccTOhH65zynP.vFG1ZS6m',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-17@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 18', 'user-18@example.com', '$2a$10$SXOD7fPvClwKo79/ayxQNuzYhcDDyZn4wX79jD2Kum636Itp/r86i',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-18@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 19', 'user-19@example.com', '$2a$10$tK9uZTeJ/sV/3QLY/9q7lO/pflT8c1pMAAms6o/gXGvyni9RpQfOq',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-19@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 20', 'user-20@example.com', '$2a$10$It/HPMcAbX4AUNpkm99ix.7UYR0VzeuSAlMGWhBa25V3e8NAbmz3q',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-20@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 21', 'user-21@example.com', '$2a$10$mT2tdHatrQCIMlFDri8u5OKYnC2uUGE/L2dleDw1m27v1eLbZGTie',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-21@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 22', 'user-22@example.com', '$2a$10$Gpb7madYA0H0xg0AjpD97u4WS1dxq4KasP7IJR0Jt0CS/eNI9QtGm',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-22@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 23', 'user-23@example.com', '$2a$10$enbVCiFQ3VwqhkoG/fER/eNuUi3u.ph7UoiYmhn2PzaEs/IcVVRdu',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-23@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 24', 'user-24@example.com', '$2a$10$gQx419xZKEoK.ya.BWlO7u960nRXHDUjrw9akSrcl1UcqSDUS8y8K',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-24@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 25', 'user-25@example.com', '$2a$10$TEL.mx.Ct3sf3rgfippI6umq74Zy2CPQkhGRpmTsA6x418qwMflN.',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-25@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 26', 'user-26@example.com', '$2a$10$kdUFSMIcJwrW7eEh4TngqOt8b02rU7l3zDonJHZFaEsj1v34ZQ.RS',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-26@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 27', 'user-27@example.com', '$2a$10$xSFUOZuZ/VL.6gkjMZ5zYeOWNzeFf9Kk2RCL8aaP7Qchy3zxjQao2',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-27@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 28', 'user-28@example.com', '$2a$10$qUh/MVapLCqvPw6o3U0Ix.aHJ92YmbOYgHzZc8pM07EYfQpB.RiG6',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-28@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 29', 'user-29@example.com', '$2a$10$N6ovoDSGx6KCoFOCg4r7ZuobfRRIOjfkfEHHwVVz/hdRDLi15Pb1.',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-29@example.com');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'User 30', 'user-30@example.com', '$2a$10$DDff6yG4WIM7w7Q.SCv7LuYQnK3rddTHGomTSdQdbHPtl4sgolEHe',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-30@example.com');
