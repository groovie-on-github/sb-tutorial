CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Rails Tutorial', 'example@railstutorial.org',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example@railstutorial.org');


/*generated dummy users*/

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Talisha Gottlieb II', 'example-1@railstutorial.org',
    '$2a$10$v6LKcZ581izyZte6Xq125u7vz5g0FOr5cDdIvNrhKIfa0L6nBX7aG', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-1@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Jed Nikolaus', 'example-2@railstutorial.org',
    '$2a$10$qmnL/qYKMVIxHXocqDfXTe12FrZmu3haDCeZIFttWJVgPMKhBU/KC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-2@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Willia Williamson', 'example-3@railstutorial.org',
    '$2a$10$XrhFB1dsHB5m687ubhc04.mNRkQO9bfFel1/aoR6q.K.Nnqjj6bLa', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-3@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Shayne Pouros', 'example-4@railstutorial.org',
    '$2a$10$JmWG5DT7Y8BdLVxk8BRPGOw8OTbAEtgHXQAN3IfuXJ887vm09NgyC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-4@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Karl Dickinson', 'example-5@railstutorial.org',
    '$2a$10$rr54gTwWaddLj.2vc7frgOQQlkyWu7TAAEyXR4BP1qjBzz7vGe6RW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-5@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Wilfredo Kunze', 'example-6@railstutorial.org',
    '$2a$10$F5FTRiqbnZO3LxUO6zHXj.c2oWzvrOPK6A3zFvNoN0JAXDQYDgChm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-6@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Merle Price', 'example-7@railstutorial.org',
    '$2a$10$lDHsZu9QwMc0kpAJK.MID.s9wP7P5wInW0Qky3uGHZc3Kn3obRvdC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-7@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Theodore Glover', 'example-8@railstutorial.org',
    '$2a$10$nPNY6uiuNkppELkTyIK.d.Eow8j2CWn083ec0eLCd9IZON0xbYY0a', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-8@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Demarcus Feeney', 'example-9@railstutorial.org',
    '$2a$10$6RJ5JBubJVsRn0idIKp00.CsWunyzpikJzfTNwh3n2h5jpswMmiM2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-9@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Juanita Swaniawski', 'example-10@railstutorial.org',
    '$2a$10$yEEYj6.tGUu2pz4Beo7kDebI.TCp6P70Se79mQlsS3kjRsscDYXuW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-10@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Lester Blanda', 'example-11@railstutorial.org',
    '$2a$10$jeBSW2FhIwoBCk2L8/7j..QWw63TYaVadn5MufDMMAKTdPHz7z/q2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-11@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Carla Lebsack', 'example-12@railstutorial.org',
    '$2a$10$i2HeZxkrD1OAqN0zHTFLIerLa71O3eaAHMmT5bHYEbsMVesGdzy8W', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-12@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mr. Roxy Pouros', 'example-13@railstutorial.org',
    '$2a$10$0uFlyjIb9cAv0hPuKWpgeevYps89QXvKwLMnGhUWcvgw5baECbkrq', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-13@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Marshall Huel', 'example-14@railstutorial.org',
    '$2a$10$ORc9vn9s/Oq.qci.UoO4Zeuq3AyvJ3tZigwll6h7WuoSBn.hF9muC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-14@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Chad Harber', 'example-15@railstutorial.org',
    '$2a$10$l.zy.3jnTUDDz4/QusuXCOqUbspvhw7fdkESse9tRIV/B6vm5..FW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-15@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Zackary Ritchie', 'example-16@railstutorial.org',
    '$2a$10$UZkfzvLTmu6j/iFTp1pzRuoU/paEGKK6DPlcrDc.PVBNT2lRAyyNy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-16@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Linnea Walter', 'example-17@railstutorial.org',
    '$2a$10$qHWdP0r.eG2Rpf6Ot12i.e/iH3Ga/b8l/WdlzBErVDKybzLyj4tU.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-17@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mr. Kris Boyle', 'example-18@railstutorial.org',
    '$2a$10$rlT9bCUVRfLi9A2HA2ajGOA9J6TClbe1vCaIeqqS1JXaBFtwuz3cW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-18@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Gary Gerlach', 'example-19@railstutorial.org',
    '$2a$10$yPSqrszhBV9mLN5EWQu8EePyOzA8UmorPz0S.4TG8ASZ8tGmf5scy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-19@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Lawerence Miller III', 'example-20@railstutorial.org',
    '$2a$10$4nGQxhoVXBOolLg.kHyyYu015yPkTD51RiyCDdAFvJ0D3qyjTQqp6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-20@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Nathaniel Bogisich DVM', 'example-21@railstutorial.org',
    '$2a$10$EOVQ6tqovAutkGTMLR5rWeKfHfvE6A3wGBErSWlC4FrARHnkKAS62', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-21@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Hilton Schiller', 'example-22@railstutorial.org',
    '$2a$10$AbTvRs9m8DoxEjY9M5kTWuZZXaFSeGYBbKStgHMfFmKA1g.FVjV4e', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-22@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Winford Orn Sr.', 'example-23@railstutorial.org',
    '$2a$10$ODnduw7SLHYK0ft.vdvpGOU4exKFF4Le3DQ.Y5KP359OptCdNp26m', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-23@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Chauncey Schoen', 'example-24@railstutorial.org',
    '$2a$10$HFTnCV.BlpLkJwXB.yyCKuR0/Wn56WfEEkhJycDCFxnf4Ozr8J22K', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-24@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Monroe Stokes', 'example-25@railstutorial.org',
    '$2a$10$8CNT9sGYYqLW2xEDdYYSYeY0FKq4fiegkwKxyQHSIK06HJ5qEPntG', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-25@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Billi Cassin', 'example-26@railstutorial.org',
    '$2a$10$K4jU3rJ9Ps7DWuDmiA5/HO0CPp86vYpW2ba91PSRWenVCQAcdUga.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-26@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Ms. Kareen Auer', 'example-27@railstutorial.org',
    '$2a$10$kdxVidOkzKjebvxuqJsoFOaGiURWoE8r1zjwDg3Tx4VQwWRf3rY4W', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-27@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Laure Cronin', 'example-28@railstutorial.org',
    '$2a$10$KNXamCeu3YWCO.fQaC8qQerRMxgi5XEf3jdiP8dzJ85Sfos9/iYc2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-28@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Dr. Melia Wunsch', 'example-29@railstutorial.org',
    '$2a$10$nwqEzyPfYGtQ3b3c3CJe6O145mi3AB9SdfxCj5MO8sBjATrbL4LkW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-29@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Kourtney Feil', 'example-30@railstutorial.org',
    '$2a$10$EjBZ465d4fbYnIG5jRexseND4hweaUdhE5nE/KQuEd5531amKKdky', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-30@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Ms. Han Pfeffer', 'example-31@railstutorial.org',
    '$2a$10$tu66MR26B5keYIAOloIAIe6oIP/Uns64Ie69WfjHZqCY.KXugc6M6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-31@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Adrien Hintz', 'example-32@railstutorial.org',
    '$2a$10$.Cj8cqi7lo38eRShPe61P.N7J2PVkALCEFdyVz.9mnL/RvS9DiTsm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-32@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Juliet Bruen', 'example-33@railstutorial.org',
    '$2a$10$8OzUp0m/ANvamWiorEO4RuFDtECsws7z995w/9DxJ27/fTzlAU/1S', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-33@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Saundra Kreiger', 'example-34@railstutorial.org',
    '$2a$10$IL0j5UQMcHouI8MHAZpkou7vB2DFvjtEUwTHEphE1j9J2WSw6POxi', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-34@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Raul Mertz', 'example-35@railstutorial.org',
    '$2a$10$Hglmxo8UC3EaLVk2MexxiOxrt00mILHQnzNGeEG.AbMMQIbIWbEZ.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-35@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Larry Bartoletti', 'example-36@railstutorial.org',
    '$2a$10$qYtjbQJ2ixHBzX9aoj580ek3eHNwjbojuAWChQ.RMWn4Kb2EnaB/G', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-36@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Gaylord Bechtelar', 'example-37@railstutorial.org',
    '$2a$10$/qcO//1jOPxIVq83SSWERe7QbpxkDms1tjokG..uv8jYjTRV4Eurm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-37@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Wiley Crist', 'example-38@railstutorial.org',
    '$2a$10$KaOd9ewOch77MCWNBFIwQ.k7wEVLUAW8/4wlVFZHls9b/0gGIYjh2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-38@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Layla Baumbach', 'example-39@railstutorial.org',
    '$2a$10$tsc3FvIgYAb66yp7nGpqQOmjQryeJzO4RrY1kQPmCpZzaGbgFQ3cC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-39@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Chieko Abshire III', 'example-40@railstutorial.org',
    '$2a$10$GyDmGXO06SDF4envR5VOJO7rcSoXxNJunS2XX4qr/Gi41LSQzD7FK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-40@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Margurite Welch', 'example-41@railstutorial.org',
    '$2a$10$0BsXIwIGbIe0yepTPafaXeTpDUhX4VNDH84hXVtIGrvOlCeo.UQpi', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-41@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Dr. Emmanuel Lang', 'example-42@railstutorial.org',
    '$2a$10$wBGd2wqJ31N7/OFn./oWwO8yhxBOQyxixJ55SVWeXmPnz5S6jm1xK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-42@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mr. Yasmin Sporer', 'example-43@railstutorial.org',
    '$2a$10$Z9MP0Qk40kwr0vakfbJWveh6oxf7jMdbOtpWtiyP3j8cwcrIf/7Wy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-43@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Greg Jacobi', 'example-44@railstutorial.org',
    '$2a$10$Kd0AKXPIbYaRuvne8DbZUOpx9mqwdEG8lJBScjloFE7XWWVXOcVLW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-44@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Anisa Gislason', 'example-45@railstutorial.org',
    '$2a$10$HlauhbzDvxN3Us/b4YiVreiIq7.hqdHP6w9ouBpg3ViDCL2GNTlkq', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-45@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Jacques Treutel', 'example-46@railstutorial.org',
    '$2a$10$9.v1PC1ombht5qXQEvJ2s.IPMFZSQaOjiaNqEYOPtUOG2suyEGFoS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-46@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Saul Murazik', 'example-47@railstutorial.org',
    '$2a$10$qBeQhpjdsRXGiKEAOw4Z0e401chmfqd/9.kYyOU8Cx4S4mav9iSWy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-47@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Meagan Herzog', 'example-48@railstutorial.org',
    '$2a$10$5XGF7WHtsNkUE.KfXZ5TL.G.m/9aTxW8KkjloqloZuW/Jf1U0eW46', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-48@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Cristina Volkman', 'example-49@railstutorial.org',
    '$2a$10$rWgz0kqxaOG0yg6AzqF4bugr6TcfmEBjM6uqkyTi9o5GW16u.G58C', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-49@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Hermila Murphy', 'example-50@railstutorial.org',
    '$2a$10$DlPrdutQzBoXLBj8qbxfleTEQjawpSj6XaFyRMB4WazpaImjuOMMW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-50@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mr. Frank Little', 'example-51@railstutorial.org',
    '$2a$10$as6q.chSDjzTl8RmYYUqdu70O8uFBojjvnrtN5un/knzXohGqyneu', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-51@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Tyrone Lehner II', 'example-52@railstutorial.org',
    '$2a$10$7sm8uviEOGEL.wm7CnxGseO6lu1sDwuBg7WXMdvI2LWISRqF0YOFS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-52@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Isaias Mante', 'example-53@railstutorial.org',
    '$2a$10$2QElOK0blzV0VlOr.nHSaucen39oqPwHesxmjxmBn2PgRCW9Fae42', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-53@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Edythe Nolan', 'example-54@railstutorial.org',
    '$2a$10$hGfm6z34S.SRTyDPfbp08OYxxyXdGm3ikVWEoXMvX3wZGoyy.rjPy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-54@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Fritz Zieme', 'example-55@railstutorial.org',
    '$2a$10$fxiB/qItP7Tl12JjFEqXzuwC/umcIKCs5orc9DwaZmDBuaDqRZRTa', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-55@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mrs. Graham Dickens', 'example-56@railstutorial.org',
    '$2a$10$w5702zTkdbM463m1DYAeF.Uqtd9qlZACpi4ChV4DPI.qdIPV/WvDy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-56@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Pamila Paucek', 'example-57@railstutorial.org',
    '$2a$10$UYaVQeYIQd2G.ngbhp9pOuIV/easktAmnuf5KOzRsaj7weMHRtZYG', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-57@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Johnson Sauer', 'example-58@railstutorial.org',
    '$2a$10$2q2OjOfWOycYqf8rMOuqeurHeqrEj7Jfc2xS6RFpbhFPQ3oqNWLJO', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-58@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Robin Christiansen', 'example-59@railstutorial.org',
    '$2a$10$lHizBNAzAhF0zwqIDm9kIOoPDHde7pplHZ87GlOuyGSXCWEv6r4ru', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-59@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Rory Towne', 'example-60@railstutorial.org',
    '$2a$10$1xjVXNiSPnii.LTPmJsDzuD3y5civqh6efIpJBl79pzGikW0.3Eu2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-60@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Spencer Walter', 'example-61@railstutorial.org',
    '$2a$10$KDpPVZR0jGY0srUmladJWuMcZeTMt6QvYw6JLKWnVhPQOfXdU1tCS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-61@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Sandy Macejkovic', 'example-62@railstutorial.org',
    '$2a$10$ABYIYr/uhxD4tU6UYOp4mOwovK6sA.SbDk/zjZV3dsAMWoJrg3u9q', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-62@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Greg Parker', 'example-63@railstutorial.org',
    '$2a$10$VJybT9TH3673Ta2D2NASXOrfZY5XjEz7wB..Wi2moET1uEY/gxk5e', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-63@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Corie Vandervort', 'example-64@railstutorial.org',
    '$2a$10$ZGmuqSpGXa1RGcx1TwTgKeqvDb0p/3.DRbZp1SRn2Faws8BL2trEK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-64@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Bettyann Leffler', 'example-65@railstutorial.org',
    '$2a$10$FX0rEH1AWocyyK3D0ERhb.iDa9cdR407O9vQvXeyJzsko9HzGyv.y', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-65@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Arnetta Wisoky', 'example-66@railstutorial.org',
    '$2a$10$/4BpzRT1wFHAfml1lYgB3ecp1g8qVjsyr1bzYJDhHuqMAfGbYSwCe', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-66@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Ms. Beau Schmidt', 'example-67@railstutorial.org',
    '$2a$10$20LTZVrCeJZbRx5bPcuZ2eM4tQEm47AsupSCx48q7EHsGFtcbLxqq', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-67@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Kenny Hegmann', 'example-68@railstutorial.org',
    '$2a$10$fVOE7Gqz9gPWrudfq7WMv.Ay8ad6WDmoV/evoseNyXoV9mk1IHT9u', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-68@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Amber Vandervort Sr.', 'example-69@railstutorial.org',
    '$2a$10$o9Bpx0pZZx9G7WpMPoBgqe49UJUStPnuDAkMgpxd1ikfQTYipSXK.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-69@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Del Schaefer', 'example-70@railstutorial.org',
    '$2a$10$rS3TeJscXWYXixR2g9o2zO7CNkbpPU1A2bMGUKRDTID/K1rCh6sx.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-70@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Darcey Ondricka', 'example-71@railstutorial.org',
    '$2a$10$DJdmoSZJ55Pfz8GIX8Fw9.oZNS8AFN1k6fJQJ8BeB5Eh/fe/48ivS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-71@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Lindsey Pacocha', 'example-72@railstutorial.org',
    '$2a$10$c/BwU8A2VTNcpYWOj55PpuI2wGeabv3B3gR8LnI8XXEGeYmsTWwqe', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-72@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Katy Simonis DVM', 'example-73@railstutorial.org',
    '$2a$10$cjKYSaXBH2IzMr7MHXLuwe0drDtR7gYk/2Nu.rUdM8n047s1Mjv/y', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-73@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mrs. Carola Stanton', 'example-74@railstutorial.org',
    '$2a$10$FHQcktnuZ01wZvuhRiMlMuGH1fFiQgO56JtGKbuf2Ra7SQgAw5Eay', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-74@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Chin Hilpert', 'example-75@railstutorial.org',
    '$2a$10$2/6Y6he3481EpzwmDy6lCOxiLxB9jrHcOy2QYzR46jxrvG0Ct2PT2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-75@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Amberly Champlin', 'example-76@railstutorial.org',
    '$2a$10$8p5IUOabUDBbZP.MJwIwTuwdgPHRxDIuldMIZlEmieT/Obg47y4Ya', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-76@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Miss Cody Lind', 'example-77@railstutorial.org',
    '$2a$10$9BrXfsAlR1Rs7rbfTo8YleIXfxdr9AcGBi3UaJEfhgDS95yZp0xaW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-77@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Keneth Shanahan', 'example-78@railstutorial.org',
    '$2a$10$pq.yGA944oiGAfQZhnA3Lu6xWkohLza69nyQ9LMfP8VEYJ0AKlrtW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-78@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Rutha Fahey', 'example-79@railstutorial.org',
    '$2a$10$iQMHUYFCDVQDqm.JWVSi4eaMekZbQhiC0qJBD/otJCfC9/OOA/FMe', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-79@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Angela Hammes', 'example-80@railstutorial.org',
    '$2a$10$BvLAiRnn6IW0.1CtghWAfejb/cRXhYVzHytym.5/EnPkDMdghFVe6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-80@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Frederic Johns DDS', 'example-81@railstutorial.org',
    '$2a$10$lbCCubIn9WifpMvdYLf0Me0tAODJUGo6fwxpsnUbI/ZmGrjtI9U5e', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-81@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Nelia Carroll', 'example-82@railstutorial.org',
    '$2a$10$pZq3j8wEtuogDy2vFWJcXO/BXx/Yxnw2EClnhzDgG7fjWzJ9NSXMK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-82@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Portia Kris', 'example-83@railstutorial.org',
    '$2a$10$SYQz9L.F.4aaRvjRaDyq/ekWupa87j7SS5674qUjiumy9/NWJXQSC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-83@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Dr. Echo McClure', 'example-84@railstutorial.org',
    '$2a$10$S0A2FSKeXc7BCB6ac5cDhOqXgQj6kxkjeJt3AKBPgUwB2ul.pEkBi', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-84@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Emilie Welch', 'example-85@railstutorial.org',
    '$2a$10$eaTJHcg32X.0dHNSlfH10OMiMmmw4VNLxifWgeLptu/gVWNyfJIhC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-85@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Leonardo McKenzie DDS', 'example-86@railstutorial.org',
    '$2a$10$iEqUVGiO5lR5bh.cbRDFc.tCMUH8bUxf55DfdVEix2gT.X0JDDiGm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-86@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Charlsie Stoltenberg', 'example-87@railstutorial.org',
    '$2a$10$MKaTfVOOKqfQbcN7uYL0JeG4OQ1hjxDvRd/KT5ZDSYnN8NBUAYSe6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-87@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Lou Moore', 'example-88@railstutorial.org',
    '$2a$10$oE8rY.k2uO4M1FHKidgM.uyoqvLSLgAv8QFNBD2fFjwkzLlyDVhmO', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-88@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Miss Dulcie Kunde', 'example-89@railstutorial.org',
    '$2a$10$DpWZ1eLWNDZ/BR9TkiFQPujA7XI1esRZ0rU4VLGTVSDj/s.c6IcwO', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-89@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Dr. Eldon Stehr', 'example-90@railstutorial.org',
    '$2a$10$4Ai7gBto.danZlwIFNwmYOXhQ/cv/7ELsohZIwgRKw1o.oAQP1B.G', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-90@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Tari Hahn', 'example-91@railstutorial.org',
    '$2a$10$5CXsJJwZU36eggqTW0PxUejlqrsvWcbJkZ.lm6DHWTn/o0yUQJzFC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-91@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Roman Bernier', 'example-92@railstutorial.org',
    '$2a$10$Y6qQUJo.e0jdLl/u5IWIlO..5xbwAi/bzgL8rVYK1xStXMWV0/hIy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-92@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Chu Koepp', 'example-93@railstutorial.org',
    '$2a$10$IQ.svrPUc.f944kESExkLu0gc7QvJTwwhjCsSw46fHyQzRcxHAW4.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-93@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Mrs. Lindsey Dickens', 'example-94@railstutorial.org',
    '$2a$10$Gd7F/zrRNkp8HmXfX7hXJe2C2VjSYYiYID2G4C6L5L1/6en9qlGla', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-94@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Twyla Stark I', 'example-95@railstutorial.org',
    '$2a$10$b/xX4Cwj/Laor3GMBfzGK.gncKDNuphy9CkHJ4zGoefM8K2rlb9U2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-95@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Marg Kovacek', 'example-96@railstutorial.org',
    '$2a$10$TjJLM2UBSASbWTwjZLZRuuGOGmYcwgr.OqL11JFfozVCpNzRHmtEW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-96@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Fonda Gerlach', 'example-97@railstutorial.org',
    '$2a$10$e.8XAw60aHWQsoWE6DEIDOfXLrohkj.uBXu3LD5Wpu.2dRUD4Qdli', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-97@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Arletta Zemlak', 'example-98@railstutorial.org',
    '$2a$10$BwfM8jhxTbyo23JikwCdyuougoslfYY59APQ03dZvxzuNCatZK12.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-98@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Joline Rutherford II', 'example-99@railstutorial.org',
    '$2a$10$4bhPnZH1N30TFucpjYu5z.B3YxhOhRlqWifhofZmtnrd0Cg.9WAlm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-99@railstutorial.org');
