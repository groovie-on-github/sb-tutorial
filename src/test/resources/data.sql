INSERT INTO "user"(id, name, email, password_digest, is_admin)
  SELECT RANDOM_UUID(), 'Michael Example', 'michael@example.com',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O', true
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='michael@example.com');

INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Sterling Archer', 'duchess@example.gov',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='duchess@example.gov');

INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Lana Kane', 'hands@example.gov',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='hands@example.gov');

INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Malory Archer', 'boss@example.gov',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='boss@example.gov');



INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 1', 'user-1@example.com', '$2a$10$PkzgSibYcXqY2WvMcjtcqOU5.7JI7QAdG1nUgc4ldPK8E6eunPzcq'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-1@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 2', 'user-2@example.com', '$2a$10$sZes20crQlkEuQ/.JKTOGONYFPXWvJEprz1RKS71826TstFFjfK.y'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-2@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 3', 'user-3@example.com', '$2a$10$rR301tSKVSo/BHcOYjRl5eYCFZrnLPgk5I0At/pHAqHaQv2u6xO7S'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-3@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 4', 'user-4@example.com', '$2a$10$SSPlrTP/QxqNX9u6aUplIuLF853bJIDpN3KjKZ3xyzhZgny1QXORm'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-4@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 5', 'user-5@example.com', '$2a$10$fXxLlgPkR3In1CgNtkUuT.bGPNguckzGAlthnFb5u.i0XnEo9oxQu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-5@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 6', 'user-6@example.com', '$2a$10$WqAY.bUaRJ8nSbo4It9JHOiBmTH2Dwx3szQpx95iaTVyoNLgAQ93C'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-6@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 7', 'user-7@example.com', '$2a$10$/sDnK6ttDeMwQ0tTxojdMe3OCKCgASAjhZumtXyVXsLrYQNMcoU7i'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-7@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 8', 'user-8@example.com', '$2a$10$mHBL2Cc9OMd59o9YfraCr.a5kGcuQG.xZkR6JsdkkMicNtw4Fm0SO'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-8@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 9', 'user-9@example.com', '$2a$10$NETLs9ltTns47kMJOkeo9u12rF4K8IC/DWgJ4nHtgVrYI.f5IWBIS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-9@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 10', 'user-10@example.com', '$2a$10$WCD3dnUs0w8lHnaU4ieVW.SBAXgQIwYKq42ntk7Cm26MAXy1cGkVi'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-10@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 11', 'user-11@example.com', '$2a$10$8jp.p9yAlO6FGp8JGwJ1suGyBFRAlWbYotANGF9rxvg08dn3iBOkm'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-11@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 12', 'user-12@example.com', '$2a$10$f.al6Vue4MriFm.2sJUQTOJi1XX0c6ZnvyrM9qwXpYeCxZvcY1c/i'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-12@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 13', 'user-13@example.com', '$2a$10$sl.P6XwBD72Iu0bdVwL1vuhYaJweAdlo.GPp6Zs1Uu20cIpYI3ZBu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-13@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 14', 'user-14@example.com', '$2a$10$KtbraEfTagu9jotCqeagietBS3TCRx3iDGrIWBpRjDHRFbcwlSEJu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-14@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 15', 'user-15@example.com', '$2a$10$KysR0vOs4NS3P9p9iLU3YOLZyLPRN3iK2e7AIN9jPYmoeoEJKP.gS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-15@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 16', 'user-16@example.com', '$2a$10$hTz3umq6PZeZFteKq24zk.YHYaQ4knYMlOYIkj2.POdpyBiKxy5LS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-16@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 17', 'user-17@example.com', '$2a$10$BoA4tRy8fV5U2I0sHYV/w.bn1nbI2TN5/RDKaYPLaM2RYref51uh2'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-17@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 18', 'user-18@example.com', '$2a$10$u861ojEh.D0zRWthmkELk.JOs5KgN/y4RXdYuDDf7N/IZrKEUP42O'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-18@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 19', 'user-19@example.com', '$2a$10$Lxy6pH/nAQ3zpMq9EXU8FuBH1w8Ku7ThbT0jgX7O5bUAhzLaF0F8q'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-19@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 20', 'user-20@example.com', '$2a$10$g.vhBsKVOizM573Rz0nQ.OlkbJUQhOXYj8hTxNnJiWN4p6u5bd442'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-20@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 21', 'user-21@example.com', '$2a$10$1JQ9/shjUsSQ5I.oRAgKhejSU96aDFGp3etjbE4OLtJ2e43ZquEva'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-21@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 22', 'user-22@example.com', '$2a$10$UeLMiPelp1wAbkpOj2m0zuLYhUzYyEt5zvogT0gHqlqFY/9R8gWFG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-22@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 23', 'user-23@example.com', '$2a$10$ymXy2xOzGsCS5IrVQgg02.LhVlHSip7nGHpq9WRidyJvJJaJUkYPy'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-23@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 24', 'user-24@example.com', '$2a$10$bG6LTDNQp/k8S7TJkINyhOiJjMS2fisBUtxpS/wHLzDh9fv7g7.pC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-24@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 25', 'user-25@example.com', '$2a$10$.8KfDsIzs/smXdjJWaSl4ucDrevooWcrbBUm/oo.4/3peyHhS15QO'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-25@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 26', 'user-26@example.com', '$2a$10$7B0/iv58MnAFAcnX.K4H9e26b8gFIlcsxPlNpWC/APKnI2InVUlla'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-26@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 27', 'user-27@example.com', '$2a$10$WpcWiqmOgrQQmv77kFckv.q4sIoFUAK8NrgVXf5nF.CxWpHtnzPA6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-27@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 28', 'user-28@example.com', '$2a$10$odQ02ZQJ06eOXJYpZFoHjuBVDABSnO2lBztC/h4TauR.HVqJOd4Ke'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-28@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 29', 'user-29@example.com', '$2a$10$blC91C9NWPbWfU2xst3ZDe9S6ZbLHQJTAPz9lflsQgvUthPSr861i'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-29@example.com');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'User 30', 'user-30@example.com', '$2a$10$q3fKzS43kfB1x9NU1uAJBOh4DLgXIXnQ2OkjuNeUVPCSuTL3wBqti'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='user-30@example.com');
