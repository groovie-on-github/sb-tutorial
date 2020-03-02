CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT uuid_generate_v1(), 'Rails Tutorial', 'example@railstutorial.org',
    '$2a$10$26noeZ4APyb0poMi8Vg7wuw8S5OHasdScEPd1ebZyTOrLY3/e3qdW',
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


/*generated dummy microposts*/

INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Atque voluptatem perspiciatis a quod modi atque perspiciatis sit.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Atque voluptatem perspiciatis a quod modi atque perspiciatis sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Itaque similique accusamus delectus voluptate recusandae exercitationem ad.', u.id, CURRENT_TIMESTAMP + interval 'PT-9S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Itaque similique accusamus delectus voluptate recusandae exercitationem ad.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sint aut omnis ipsa perferendis aut.', u.id, CURRENT_TIMESTAMP + interval 'PT-23H'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sint aut omnis ipsa perferendis aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut temporibus nemo maiores fugiat veniam eos.', u.id, CURRENT_TIMESTAMP + interval 'PT-34M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut temporibus nemo maiores fugiat veniam eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et laudantium earum deserunt fuga temporibus debitis quaerat.', u.id, CURRENT_TIMESTAMP + interval 'PT-34M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et laudantium earum deserunt fuga temporibus debitis quaerat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et tenetur enim tenetur voluptates vitae.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et tenetur enim tenetur voluptates vitae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolorem iusto omnis quae omnis est ipsam at officia.', u.id, CURRENT_TIMESTAMP + interval 'P-19D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem iusto omnis quae omnis est ipsam at officia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eum numquam qui sed officiis nobis numquam.', u.id, CURRENT_TIMESTAMP + interval 'PT-16M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eum numquam qui sed officiis nobis numquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Laborum doloremque omnis voluptatibus eos.', u.id, CURRENT_TIMESTAMP + interval 'P-7Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laborum doloremque omnis voluptatibus eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Asperiores ducimus cumque expedita qui nulla.', u.id, CURRENT_TIMESTAMP + interval 'PT-14S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Asperiores ducimus cumque expedita qui nulla.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Doloribus corrupti consequatur cum rem facilis possimus.', u.id, CURRENT_TIMESTAMP + interval 'P-9Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloribus corrupti consequatur cum rem facilis possimus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Vitae quam quo quia sit qui rerum.', u.id, CURRENT_TIMESTAMP + interval 'P-12D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vitae quam quo quia sit qui rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eaque ut debitis amet aliquam rerum qui non.', u.id, CURRENT_TIMESTAMP + interval 'PT-4S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eaque ut debitis amet aliquam rerum qui non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nostrum iste repellat ipsum unde non et.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nostrum iste repellat ipsum unde non et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eos nobis quam tenetur quia quaerat in.', u.id, CURRENT_TIMESTAMP + interval 'PT-59S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eos nobis quam tenetur quia quaerat in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem eum fuga non quibusdam totam sint quod mollitia.', u.id, CURRENT_TIMESTAMP + interval 'P-2Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem eum fuga non quibusdam totam sint quod mollitia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolor nisi quidem quod praesentium molestiae aut et et.', u.id, CURRENT_TIMESTAMP + interval 'PT-25M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolor nisi quidem quod praesentium molestiae aut et et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fuga consectetur et et ut sint quo vero est nobis.', u.id, CURRENT_TIMESTAMP + interval 'P-27D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fuga consectetur et et ut sint quo vero est nobis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut molestiae eum ducimus fuga.', u.id, CURRENT_TIMESTAMP + interval 'PT-45M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut molestiae eum ducimus fuga.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptate rerum et aliquid dolorem non eligendi qui temporibus.', u.id, CURRENT_TIMESTAMP + interval 'PT-1H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptate rerum et aliquid dolorem non eligendi qui temporibus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Vel praesentium et odio velit.', u.id, CURRENT_TIMESTAMP + interval 'P-9M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vel praesentium et odio velit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Provident sapiente quasi sed laborum.', u.id, CURRENT_TIMESTAMP + interval 'PT-14H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Provident sapiente quasi sed laborum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Consequatur ipsa repudiandae officia dolore.', u.id, CURRENT_TIMESTAMP + interval 'P-3Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequatur ipsa repudiandae officia dolore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatibus eius minima quod esse commodi necessitatibus.', u.id, CURRENT_TIMESTAMP + interval 'PT-1H'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatibus eius minima quod esse commodi necessitatibus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Exercitationem aut beatae ad provident aut sit iure accusamus perspiciatis.', u.id, CURRENT_TIMESTAMP + interval 'PT-49S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Exercitationem aut beatae ad provident aut sit iure accusamus perspiciatis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Vitae labore iusto optio porro optio eos.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vitae labore iusto optio porro optio eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui nostrum similique non esse.', u.id, CURRENT_TIMESTAMP + interval 'PT-24M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui nostrum similique non esse.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nemo doloremque consequatur est deserunt est deserunt eveniet iste saepe.', u.id, CURRENT_TIMESTAMP + interval 'P-9M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nemo doloremque consequatur est deserunt est deserunt eveniet iste saepe.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ullam laborum dolor ipsa cum dolorum mollitia dolore minima ex.', u.id, CURRENT_TIMESTAMP + interval 'P-14D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ullam laborum dolor ipsa cum dolorum mollitia dolore minima ex.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est esse consequatur totam velit quia.', u.id, CURRENT_TIMESTAMP + interval 'PT-51S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est esse consequatur totam velit quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Architecto natus nulla distinctio veritatis ut earum unde.', u.id, CURRENT_TIMESTAMP + interval 'P-1M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Architecto natus nulla distinctio veritatis ut earum unde.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eos consequatur aut minus autem neque architecto voluptas.', u.id, CURRENT_TIMESTAMP + interval 'PT-40M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eos consequatur aut minus autem neque architecto voluptas.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Placeat non aut et impedit.', u.id, CURRENT_TIMESTAMP + interval 'PT-43S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Placeat non aut et impedit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Architecto assumenda ducimus architecto corrupti veritatis numquam facere.', u.id, CURRENT_TIMESTAMP + interval 'PT-33S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Architecto assumenda ducimus architecto corrupti veritatis numquam facere.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolore quis molestiae voluptatem quia quos aperiam alias rerum voluptas.', u.id, CURRENT_TIMESTAMP + interval 'P-8D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolore quis molestiae voluptatem quia quos aperiam alias rerum voluptas.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Saepe omnis eum ea nam magnam ex excepturi.', u.id, CURRENT_TIMESTAMP + interval 'PT-10M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Saepe omnis eum ea nam magnam ex excepturi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est eos accusantium iusto ipsam.', u.id, CURRENT_TIMESTAMP + interval 'PT-53M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est eos accusantium iusto ipsam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Blanditiis temporibus pariatur omnis veniam.', u.id, CURRENT_TIMESTAMP + interval 'P-6M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Blanditiis temporibus pariatur omnis veniam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui vel aut consequatur ut dolore cumque consequuntur omnis.', u.id, CURRENT_TIMESTAMP + interval 'PT-36M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui vel aut consequatur ut dolore cumque consequuntur omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolores saepe sint maiores cumque.', u.id, CURRENT_TIMESTAMP + interval 'PT-30M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolores saepe sint maiores cumque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Minima perferendis debitis cum sed.', u.id, CURRENT_TIMESTAMP + interval 'PT-6S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Minima perferendis debitis cum sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Consequatur iure qui et explicabo qui id accusamus aspernatur.', u.id, CURRENT_TIMESTAMP + interval 'PT-43M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequatur iure qui et explicabo qui id accusamus aspernatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nisi non iure voluptates quaerat voluptates non et dolores odit.', u.id, CURRENT_TIMESTAMP + interval 'P-3M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nisi non iure voluptates quaerat voluptates non et dolores odit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptates a nisi ut aliquam.', u.id, CURRENT_TIMESTAMP + interval 'P-11M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptates a nisi ut aliquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Soluta fugiat doloribus similique odio adipisci fuga atque.', u.id, CURRENT_TIMESTAMP + interval 'P-13D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Soluta fugiat doloribus similique odio adipisci fuga atque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Necessitatibus dolores sint quibusdam occaecati consectetur mollitia.', u.id, CURRENT_TIMESTAMP + interval 'PT-34M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Necessitatibus dolores sint quibusdam occaecati consectetur mollitia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Similique illum velit quibusdam saepe non illo quidem quis.', u.id, CURRENT_TIMESTAMP + interval 'P-6D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Similique illum velit quibusdam saepe non illo quidem quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Doloremque rem neque consequuntur dignissimos assumenda.', u.id, CURRENT_TIMESTAMP + interval 'P-17D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloremque rem neque consequuntur dignissimos assumenda.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Facere doloremque aut facilis est.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facere doloremque aut facilis est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Explicabo quia qui laborum sed soluta quisquam eos.', u.id, CURRENT_TIMESTAMP + interval 'P-2M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Explicabo quia qui laborum sed soluta quisquam eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolor aliquid dolorem facilis ut autem minima consectetur et est.', u.id, CURRENT_TIMESTAMP + interval 'PT-9S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolor aliquid dolorem facilis ut autem minima consectetur et est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et accusamus omnis fugiat omnis.', u.id, CURRENT_TIMESTAMP + interval 'PT-36M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et accusamus omnis fugiat omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Optio alias officiis magni beatae aliquid rem corporis qui distinctio.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Optio alias officiis magni beatae aliquid rem corporis qui distinctio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ullam unde magnam quis ut exercitationem voluptas cumque reprehenderit.', u.id, CURRENT_TIMESTAMP + interval 'PT-16M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ullam unde magnam quis ut exercitationem voluptas cumque reprehenderit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rem non in in quam vero.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rem non in in quam vero.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Enim expedita consequuntur sequi ut voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'P-1D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Enim expedita consequuntur sequi ut voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Expedita fugit quod eum fuga est quas.', u.id, CURRENT_TIMESTAMP + interval 'PT-27M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Expedita fugit quod eum fuga est quas.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem voluptates saepe est velit.', u.id, CURRENT_TIMESTAMP + interval 'P-29D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem voluptates saepe est velit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Doloremque perferendis provident sapiente nisi atque officia qui amet nulla.', u.id, CURRENT_TIMESTAMP + interval 'P-14D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloremque perferendis provident sapiente nisi atque officia qui amet nulla.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ipsum placeat consequatur officia nam sit eveniet quibusdam deserunt ut.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ipsum placeat consequatur officia nam sit eveniet quibusdam deserunt ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Tenetur ipsa unde quisquam animi magni eveniet voluptatem saepe accusantium.', u.id, CURRENT_TIMESTAMP + interval 'PT-43M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Tenetur ipsa unde quisquam animi magni eveniet voluptatem saepe accusantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Pariatur pariatur dolor amet temporibus eligendi blanditiis molestiae consequuntur.', u.id, CURRENT_TIMESTAMP + interval 'PT-17S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Pariatur pariatur dolor amet temporibus eligendi blanditiis molestiae consequuntur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Distinctio rerum aut vero ipsum dolorum.', u.id, CURRENT_TIMESTAMP + interval 'PT-43M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Distinctio rerum aut vero ipsum dolorum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Reiciendis non non omnis repellat consequatur.', u.id, CURRENT_TIMESTAMP + interval 'PT-53M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reiciendis non non omnis repellat consequatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Odio exercitationem sed dolorem repellendus.', u.id, CURRENT_TIMESTAMP + interval 'P-9D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Odio exercitationem sed dolorem repellendus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem assumenda fugiat omnis sit excepturi illum.', u.id, CURRENT_TIMESTAMP + interval 'P-7Y'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem assumenda fugiat omnis sit excepturi illum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Harum molestias ut provident rerum sit iure ipsum alias.', u.id, CURRENT_TIMESTAMP + interval 'P-8Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Harum molestias ut provident rerum sit iure ipsum alias.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eius explicabo tenetur quasi mollitia dolorem qui.', u.id, CURRENT_TIMESTAMP + interval 'P-10Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eius explicabo tenetur quasi mollitia dolorem qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ipsam quam aliquid inventore quaerat doloribus delectus sed laudantium.', u.id, CURRENT_TIMESTAMP + interval 'P-9Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ipsam quam aliquid inventore quaerat doloribus delectus sed laudantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Libero amet id consequatur possimus eos.', u.id, CURRENT_TIMESTAMP + interval 'PT-9S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Libero amet id consequatur possimus eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Perspiciatis officia fuga consequatur incidunt autem et.', u.id, CURRENT_TIMESTAMP + interval 'P-11M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Perspiciatis officia fuga consequatur incidunt autem et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Laboriosam ea architecto fugiat quos veritatis numquam porro recusandae odit.', u.id, CURRENT_TIMESTAMP + interval 'PT-59S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laboriosam ea architecto fugiat quos veritatis numquam porro recusandae odit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sed sunt enim quo nostrum velit sed.', u.id, CURRENT_TIMESTAMP + interval 'PT-23S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed sunt enim quo nostrum velit sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'At nesciunt voluptates rerum sit.', u.id, CURRENT_TIMESTAMP + interval 'PT-39M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='At nesciunt voluptates rerum sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Officiis velit harum nam voluptates architecto repudiandae.', u.id, CURRENT_TIMESTAMP + interval 'P-9Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Officiis velit harum nam voluptates architecto repudiandae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sunt eum quos iste ipsam numquam veritatis expedita.', u.id, CURRENT_TIMESTAMP + interval 'P-2D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sunt eum quos iste ipsam numquam veritatis expedita.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Harum dolore enim laudantium doloribus nemo eius exercitationem dignissimos maiores.', u.id, CURRENT_TIMESTAMP + interval 'P-3Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Harum dolore enim laudantium doloribus nemo eius exercitationem dignissimos maiores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quod velit ullam soluta magnam libero voluptate fugiat consequuntur.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quod velit ullam soluta magnam libero voluptate fugiat consequuntur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ducimus iste ad nihil dolores in.', u.id, CURRENT_TIMESTAMP + interval 'PT-44S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ducimus iste ad nihil dolores in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Id cupiditate qui consequuntur aut officiis qui consectetur.', u.id, CURRENT_TIMESTAMP + interval 'P-9M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id cupiditate qui consequuntur aut officiis qui consectetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Iste commodi eaque id voluptas quo.', u.id, CURRENT_TIMESTAMP + interval 'PT-22H'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iste commodi eaque id voluptas quo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Repudiandae eaque veniam voluptatem et sapiente sint consequuntur provident minima.', u.id, CURRENT_TIMESTAMP + interval 'P-10M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repudiandae eaque veniam voluptatem et sapiente sint consequuntur provident minima.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Veniam ut repellat sit hic dignissimos.', u.id, CURRENT_TIMESTAMP + interval 'P-25D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Veniam ut repellat sit hic dignissimos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Corrupti rerum illum explicabo atque quae.', u.id, CURRENT_TIMESTAMP + interval 'PT-11H'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Corrupti rerum illum explicabo atque quae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sed quas et tempora recusandae sequi.', u.id, CURRENT_TIMESTAMP + interval 'P-28D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed quas et tempora recusandae sequi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut sit a facere quae provident quidem esse.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut sit a facere quae provident quidem esse.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nihil id nostrum enim atque.', u.id, CURRENT_TIMESTAMP + interval 'PT-11M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil id nostrum enim atque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Inventore voluptate ratione reprehenderit impedit tempora reprehenderit unde.', u.id, CURRENT_TIMESTAMP + interval 'P-3M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Inventore voluptate ratione reprehenderit impedit tempora reprehenderit unde.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui corporis numquam occaecati voluptatibus.', u.id, CURRENT_TIMESTAMP + interval 'P-14D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui corporis numquam occaecati voluptatibus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Facere non est atque qui qui corrupti hic.', u.id, CURRENT_TIMESTAMP + interval 'P-28D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facere non est atque qui qui corrupti hic.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut corrupti consequatur et totam.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut corrupti consequatur et totam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem voluptas est repudiandae totam voluptatum aut perspiciatis aut consequuntur.', u.id, CURRENT_TIMESTAMP + interval 'P-14D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem voluptas est repudiandae totam voluptatum aut perspiciatis aut consequuntur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nobis cum minus et quod numquam ducimus explicabo natus.', u.id, CURRENT_TIMESTAMP + interval 'PT-58S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nobis cum minus et quod numquam ducimus explicabo natus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut labore architecto deserunt molestias.', u.id, CURRENT_TIMESTAMP + interval 'P-22D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut labore architecto deserunt molestias.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aliquid deleniti consequatur ea facilis.', u.id, CURRENT_TIMESTAMP + interval 'PT-6H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aliquid deleniti consequatur ea facilis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ea consequatur earum ut quia qui est quia at.', u.id, CURRENT_TIMESTAMP + interval 'PT-55M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ea consequatur earum ut quia qui est quia at.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dicta repellendus doloribus iure qui qui cum iste.', u.id, CURRENT_TIMESTAMP + interval 'P-4Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dicta repellendus doloribus iure qui qui cum iste.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dignissimos omnis sequi debitis est.', u.id, CURRENT_TIMESTAMP + interval 'PT-28S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dignissimos omnis sequi debitis est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et laborum deleniti quaerat nemo dignissimos deserunt quisquam corrupti asperiores.', u.id, CURRENT_TIMESTAMP + interval 'P-1M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et laborum deleniti quaerat nemo dignissimos deserunt quisquam corrupti asperiores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ducimus nihil voluptatem ipsum fuga.', u.id, CURRENT_TIMESTAMP + interval 'PT-39M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ducimus nihil voluptatem ipsum fuga.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Officiis sapiente est et molestiae consequuntur.', u.id, CURRENT_TIMESTAMP + interval 'PT-51S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Officiis sapiente est et molestiae consequuntur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quis alias expedita adipisci molestiae soluta omnis saepe.', u.id, CURRENT_TIMESTAMP + interval 'PT-30S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quis alias expedita adipisci molestiae soluta omnis saepe.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Doloribus quasi qui excepturi architecto dolorum dolorem voluptatem voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'P-4Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloribus quasi qui excepturi architecto dolorum dolorem voluptatem voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Magni dolore et harum et qui non dolores repudiandae.', u.id, CURRENT_TIMESTAMP + interval 'P-12D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Magni dolore et harum et qui non dolores repudiandae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quibusdam eveniet autem delectus rerum.', u.id, CURRENT_TIMESTAMP + interval 'P-11M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quibusdam eveniet autem delectus rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui a rerum modi non rerum quod dolorum.', u.id, CURRENT_TIMESTAMP + interval 'P-8Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui a rerum modi non rerum quod dolorum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Expedita sit error ipsum blanditiis quis doloribus.', u.id, CURRENT_TIMESTAMP + interval 'PT-49S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Expedita sit error ipsum blanditiis quis doloribus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Commodi aut fugiat et et libero occaecati omnis.', u.id, CURRENT_TIMESTAMP + interval 'P-4M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Commodi aut fugiat et et libero occaecati omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ad perspiciatis nemo ad non nulla corporis.', u.id, CURRENT_TIMESTAMP + interval 'P-24D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ad perspiciatis nemo ad non nulla corporis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Veritatis velit voluptas illum consequatur.', u.id, CURRENT_TIMESTAMP + interval 'PT-12S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Veritatis velit voluptas illum consequatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Vel fuga qui adipisci assumenda commodi iusto voluptatem eveniet assumenda.', u.id, CURRENT_TIMESTAMP + interval 'P-2Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vel fuga qui adipisci assumenda commodi iusto voluptatem eveniet assumenda.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quae omnis ut est est in eaque eos consequatur et.', u.id, CURRENT_TIMESTAMP + interval 'P-12D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quae omnis ut est est in eaque eos consequatur et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Tenetur omnis et nesciunt quidem saepe.', u.id, CURRENT_TIMESTAMP + interval 'PT-2H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Tenetur omnis et nesciunt quidem saepe.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Cumque molestiae consequatur omnis dicta itaque praesentium sint id voluptas.', u.id, CURRENT_TIMESTAMP + interval 'P-3D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cumque molestiae consequatur omnis dicta itaque praesentium sint id voluptas.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Non sunt repudiandae debitis sint et quia voluptatum ut.', u.id, CURRENT_TIMESTAMP + interval 'PT-18H'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non sunt repudiandae debitis sint et quia voluptatum ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui quia eius aut ut non perferendis.', u.id, CURRENT_TIMESTAMP + interval 'PT-23M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui quia eius aut ut non perferendis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut suscipit ratione fugiat ut ducimus voluptatibus.', u.id, CURRENT_TIMESTAMP + interval 'PT-33M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut suscipit ratione fugiat ut ducimus voluptatibus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut ratione voluptatem et sed.', u.id, CURRENT_TIMESTAMP + interval 'PT-43S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut ratione voluptatem et sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ad laudantium quod odio voluptatum nisi explicabo ea.', u.id, CURRENT_TIMESTAMP + interval 'PT-3M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ad laudantium quod odio voluptatum nisi explicabo ea.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'A eligendi voluptas accusantium hic qui officia.', u.id, CURRENT_TIMESTAMP + interval 'P-3D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='A eligendi voluptas accusantium hic qui officia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Repellendus consectetur dolor aut ut voluptates et.', u.id, CURRENT_TIMESTAMP + interval 'P-6D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repellendus consectetur dolor aut ut voluptates et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Animi qui facere dolores aperiam expedita molestias debitis quaerat.', u.id, CURRENT_TIMESTAMP + interval 'PT-9H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi qui facere dolores aperiam expedita molestias debitis quaerat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui et quia earum in.', u.id, CURRENT_TIMESTAMP + interval 'P-3D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui et quia earum in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Veniam dolor exercitationem vitae nobis qui amet recusandae asperiores.', u.id, CURRENT_TIMESTAMP + interval 'PT-11H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Veniam dolor exercitationem vitae nobis qui amet recusandae asperiores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est voluptatem et in qui sapiente et eius.', u.id, CURRENT_TIMESTAMP + interval 'P-10Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est voluptatem et in qui sapiente et eius.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Iste nihil enim laboriosam voluptas quos eaque.', u.id, CURRENT_TIMESTAMP + interval 'PT-28S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iste nihil enim laboriosam voluptas quos eaque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolorem quam laborum consequatur doloribus.', u.id, CURRENT_TIMESTAMP + interval 'P-20D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem quam laborum consequatur doloribus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut qui accusamus odit eos expedita harum.', u.id, CURRENT_TIMESTAMP + interval 'PT-6S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut qui accusamus odit eos expedita harum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Animi illo eum quisquam ratione beatae quibusdam repudiandae amet.', u.id, CURRENT_TIMESTAMP + interval 'PT-9M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi illo eum quisquam ratione beatae quibusdam repudiandae amet.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Vitae natus sit molestias est hic quam rerum sed.', u.id, CURRENT_TIMESTAMP + interval 'PT-56S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vitae natus sit molestias est hic quam rerum sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est fugiat ut provident et et similique.', u.id, CURRENT_TIMESTAMP + interval 'P-8Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est fugiat ut provident et et similique.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Tenetur magnam commodi magnam et.', u.id, CURRENT_TIMESTAMP + interval 'PT-5H'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Tenetur magnam commodi magnam et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui labore consequatur modi consequuntur occaecati veniam consequatur quae.', u.id, CURRENT_TIMESTAMP + interval 'P-4M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui labore consequatur modi consequuntur occaecati veniam consequatur quae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quae nisi blanditiis impedit aspernatur minus odio.', u.id, CURRENT_TIMESTAMP + interval 'P-2M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quae nisi blanditiis impedit aspernatur minus odio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'At deserunt ut ea harum impedit est voluptates quisquam.', u.id, CURRENT_TIMESTAMP + interval 'P-3Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='At deserunt ut ea harum impedit est voluptates quisquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem dolor voluptatibus magnam ipsa facere nam dolorum adipisci.', u.id, CURRENT_TIMESTAMP + interval 'P-7Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem dolor voluptatibus magnam ipsa facere nam dolorum adipisci.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fuga et molestiae minima facilis ex molestiae dolorem dolorum.', u.id, CURRENT_TIMESTAMP + interval 'PT-31S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fuga et molestiae minima facilis ex molestiae dolorem dolorum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut provident minus itaque quidem odit sit molestiae.', u.id, CURRENT_TIMESTAMP + interval 'P-5M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut provident minus itaque quidem odit sit molestiae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Earum aut voluptatem ut eum quidem voluptatem qui et.', u.id, CURRENT_TIMESTAMP + interval 'P-9Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Earum aut voluptatem ut eum quidem voluptatem qui et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quisquam omnis veniam sit quam esse omnis aliquam consequatur rerum.', u.id, CURRENT_TIMESTAMP + interval 'PT-50S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quisquam omnis veniam sit quam esse omnis aliquam consequatur rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Facere ratione qui earum eum.', u.id, CURRENT_TIMESTAMP + interval 'P-2Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facere ratione qui earum eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Exercitationem architecto dolore assumenda animi laudantium tempore consectetur qui.', u.id, CURRENT_TIMESTAMP + interval 'P-5M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Exercitationem architecto dolore assumenda animi laudantium tempore consectetur qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eum aut deserunt et veritatis quae et consequatur deserunt.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eum aut deserunt et veritatis quae et consequatur deserunt.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut repudiandae ex consequatur eius eum sit laborum.', u.id, CURRENT_TIMESTAMP + interval 'PT-49M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut repudiandae ex consequatur eius eum sit laborum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quo quisquam eos distinctio consequatur delectus omnis.', u.id, CURRENT_TIMESTAMP + interval 'PT-5H'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quo quisquam eos distinctio consequatur delectus omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et quam consequatur itaque animi explicabo maiores eos sint.', u.id, CURRENT_TIMESTAMP + interval 'P-4M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et quam consequatur itaque animi explicabo maiores eos sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Molestias dolorem fugit eos nihil dolores.', u.id, CURRENT_TIMESTAMP + interval 'PT-34M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestias dolorem fugit eos nihil dolores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ex explicabo quia minus incidunt voluptatibus eos repellendus aut.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ex explicabo quia minus incidunt voluptatibus eos repellendus aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Minima voluptatem occaecati deleniti quam sit minus voluptates facilis.', u.id, CURRENT_TIMESTAMP + interval 'P-29D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Minima voluptatem occaecati deleniti quam sit minus voluptates facilis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et ipsam optio ut soluta.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et ipsam optio ut soluta.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quia voluptas magni eos qui ut maiores ut itaque.', u.id, CURRENT_TIMESTAMP + interval 'P-15D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia voluptas magni eos qui ut maiores ut itaque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut impedit tenetur eum dolores quo.', u.id, CURRENT_TIMESTAMP + interval 'PT-9H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut impedit tenetur eum dolores quo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quia est ipsum quod nulla cupiditate et dolor placeat.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia est ipsum quod nulla cupiditate et dolor placeat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolores id quis eum non sint error.', u.id, CURRENT_TIMESTAMP + interval 'P-3D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolores id quis eum non sint error.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nisi animi dolorem porro commodi in qui enim alias.', u.id, CURRENT_TIMESTAMP + interval 'PT-3H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nisi animi dolorem porro commodi in qui enim alias.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Cumque soluta et fugit iste sequi labore.', u.id, CURRENT_TIMESTAMP + interval 'P-6M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cumque soluta et fugit iste sequi labore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nihil qui ratione corporis fuga doloribus id.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil qui ratione corporis fuga doloribus id.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sit et voluptatem harum voluptatum placeat reiciendis ut repellat rerum.', u.id, CURRENT_TIMESTAMP + interval 'PT-6H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sit et voluptatem harum voluptatum placeat reiciendis ut repellat rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Veniam magnam veniam deleniti in.', u.id, CURRENT_TIMESTAMP + interval 'PT-22S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Veniam magnam veniam deleniti in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aliquam explicabo commodi quod id sit consequatur repellendus officiis voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'P-11M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aliquam explicabo commodi quod id sit consequatur repellendus officiis voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Non sed eveniet sed odit blanditiis accusamus non adipisci quisquam.', u.id, CURRENT_TIMESTAMP + interval 'P-7D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non sed eveniet sed odit blanditiis accusamus non adipisci quisquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut vel eos occaecati et vitae nihil odit sunt aut.', u.id, CURRENT_TIMESTAMP + interval 'PT-57M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut vel eos occaecati et vitae nihil odit sunt aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fugit dolor doloremque vel consequuntur est harum ipsa dolor omnis.', u.id, CURRENT_TIMESTAMP + interval 'PT-38S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fugit dolor doloremque vel consequuntur est harum ipsa dolor omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Tenetur quis quos et consequatur laborum sint animi delectus quia.', u.id, CURRENT_TIMESTAMP + interval 'PT-47S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Tenetur quis quos et consequatur laborum sint animi delectus quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quam sunt eos eligendi labore est.', u.id, CURRENT_TIMESTAMP + interval 'PT-23H'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quam sunt eos eligendi labore est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ea reprehenderit quia voluptatum corrupti sint veniam consectetur expedita.', u.id, CURRENT_TIMESTAMP + interval 'P-9M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ea reprehenderit quia voluptatum corrupti sint veniam consectetur expedita.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rerum nihil omnis cumque tempore voluptatum voluptatem sed.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum nihil omnis cumque tempore voluptatum voluptatem sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est magnam illum aut aut natus voluptas debitis.', u.id, CURRENT_TIMESTAMP + interval 'PT-1H'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est magnam illum aut aut natus voluptas debitis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Reiciendis eos maiores similique et placeat rerum placeat et molestiae.', u.id, CURRENT_TIMESTAMP + interval 'P-10M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reiciendis eos maiores similique et placeat rerum placeat et molestiae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Officia in cumque mollitia beatae omnis maxime velit maiores.', u.id, CURRENT_TIMESTAMP + interval 'P-15D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Officia in cumque mollitia beatae omnis maxime velit maiores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Corrupti laborum cupiditate provident velit voluptas recusandae molestiae nostrum.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Corrupti laborum cupiditate provident velit voluptas recusandae molestiae nostrum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Minima consequatur fuga ut nisi voluptatem laborum voluptatibus qui.', u.id, CURRENT_TIMESTAMP + interval 'PT-3S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Minima consequatur fuga ut nisi voluptatem laborum voluptatibus qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quaerat fuga quia itaque quae in.', u.id, CURRENT_TIMESTAMP + interval 'PT-29S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quaerat fuga quia itaque quae in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quia dolorem est ea voluptates harum ut sit.', u.id, CURRENT_TIMESTAMP + interval 'P-4M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia dolorem est ea voluptates harum ut sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Id soluta quo quis dignissimos enim.', u.id, CURRENT_TIMESTAMP + interval 'PT-47M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id soluta quo quis dignissimos enim.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui adipisci et voluptatem tempore maxime aut eius quia voluptate.', u.id, CURRENT_TIMESTAMP + interval 'P-10D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui adipisci et voluptatem tempore maxime aut eius quia voluptate.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Id nam aut voluptatum rem sint et repellat qui eos.', u.id, CURRENT_TIMESTAMP + interval 'P-27D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id nam aut voluptatum rem sint et repellat qui eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fugit velit sit et aut sint maxime in.', u.id, CURRENT_TIMESTAMP + interval 'PT-20H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fugit velit sit et aut sint maxime in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eos molestiae architecto omnis vel saepe est aliquid ex.', u.id, CURRENT_TIMESTAMP + interval 'PT-17S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eos molestiae architecto omnis vel saepe est aliquid ex.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Consequuntur praesentium sit sit sed voluptatem aut.', u.id, CURRENT_TIMESTAMP + interval 'PT-14S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequuntur praesentium sit sit sed voluptatem aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Doloribus adipisci exercitationem voluptas illo consequatur laudantium nisi omnis quis.', u.id, CURRENT_TIMESTAMP + interval 'PT-1M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloribus adipisci exercitationem voluptas illo consequatur laudantium nisi omnis quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut esse amet quasi voluptatum est fugiat id provident.', u.id, CURRENT_TIMESTAMP + interval 'PT-3S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut esse amet quasi voluptatum est fugiat id provident.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptas omnis quae nam et.', u.id, CURRENT_TIMESTAMP + interval 'PT-21H'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas omnis quae nam et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Necessitatibus totam porro id et quis qui inventore et aliquid.', u.id, CURRENT_TIMESTAMP + interval 'PT-1H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Necessitatibus totam porro id et quis qui inventore et aliquid.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut delectus dolorum delectus omnis est facilis fuga ad et.', u.id, CURRENT_TIMESTAMP + interval 'PT-10H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut delectus dolorum delectus omnis est facilis fuga ad et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et aperiam numquam deleniti omnis optio cupiditate rem qui quia.', u.id, CURRENT_TIMESTAMP + interval 'P-11M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et aperiam numquam deleniti omnis optio cupiditate rem qui quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Soluta iste enim eum minus ea nisi.', u.id, CURRENT_TIMESTAMP + interval 'P-9D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Soluta iste enim eum minus ea nisi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et maxime aut aut nemo optio cupiditate.', u.id, CURRENT_TIMESTAMP + interval 'PT-39M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et maxime aut aut nemo optio cupiditate.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rerum facere sed aut nulla repellendus reprehenderit.', u.id, CURRENT_TIMESTAMP + interval 'P-2M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum facere sed aut nulla repellendus reprehenderit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolores libero aut vitae enim libero.', u.id, CURRENT_TIMESTAMP + interval 'PT-16H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolores libero aut vitae enim libero.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem dolores laudantium blanditiis dicta ad nisi.', u.id, CURRENT_TIMESTAMP + interval 'PT-15H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem dolores laudantium blanditiis dicta ad nisi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut ut doloribus voluptas nihil ratione unde optio enim.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut ut doloribus voluptas nihil ratione unde optio enim.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et neque iste maxime qui.', u.id, CURRENT_TIMESTAMP + interval 'PT-2S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et neque iste maxime qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nihil qui aut autem quos eligendi vel blanditiis adipisci.', u.id, CURRENT_TIMESTAMP + interval 'P-3M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil qui aut autem quos eligendi vel blanditiis adipisci.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dignissimos aspernatur sunt odit sed consequatur ut qui.', u.id, CURRENT_TIMESTAMP + interval 'P-3D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dignissimos aspernatur sunt odit sed consequatur ut qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aperiam perferendis ut et repellat sunt temporibus quibusdam.', u.id, CURRENT_TIMESTAMP + interval 'PT-11H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aperiam perferendis ut et repellat sunt temporibus quibusdam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Modi nobis culpa provident exercitationem qui quis.', u.id, CURRENT_TIMESTAMP + interval 'PT-24M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Modi nobis culpa provident exercitationem qui quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Doloremque sapiente quo qui minima laudantium amet omnis.', u.id, CURRENT_TIMESTAMP + interval 'P-6Y'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloremque sapiente quo qui minima laudantium amet omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eligendi rem excepturi eos voluptatum omnis earum sit.', u.id, CURRENT_TIMESTAMP + interval 'PT-34S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eligendi rem excepturi eos voluptatum omnis earum sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatum atque rerum eos in.', u.id, CURRENT_TIMESTAMP + interval 'P-3D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatum atque rerum eos in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Esse aspernatur molestiae sunt harum fugiat.', u.id, CURRENT_TIMESTAMP + interval 'P-4Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Esse aspernatur molestiae sunt harum fugiat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Debitis et sunt ratione quasi consectetur nobis quia debitis sit.', u.id, CURRENT_TIMESTAMP + interval 'P-8Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Debitis et sunt ratione quasi consectetur nobis quia debitis sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Iusto porro beatae eveniet vero non neque inventore sit.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iusto porro beatae eveniet vero non neque inventore sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Blanditiis accusantium autem et repellat error qui optio facere.', u.id, CURRENT_TIMESTAMP + interval 'PT-23H'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Blanditiis accusantium autem et repellat error qui optio facere.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Neque modi ut quis ea provident sint.', u.id, CURRENT_TIMESTAMP + interval 'P-2M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Neque modi ut quis ea provident sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptate ex ipsa aut est aut esse dolore repellendus illum.', u.id, CURRENT_TIMESTAMP + interval 'PT-33S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptate ex ipsa aut est aut esse dolore repellendus illum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sit et praesentium odit voluptas commodi ut tempore distinctio.', u.id, CURRENT_TIMESTAMP + interval 'P-3Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sit et praesentium odit voluptas commodi ut tempore distinctio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sapiente et labore incidunt pariatur.', u.id, CURRENT_TIMESTAMP + interval 'P-10M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sapiente et labore incidunt pariatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Modi quae ut fugit expedita temporibus.', u.id, CURRENT_TIMESTAMP + interval 'P-6Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Modi quae ut fugit expedita temporibus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Perferendis ducimus explicabo in iure asperiores ut vitae.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Perferendis ducimus explicabo in iure asperiores ut vitae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et dolores voluptate cum deleniti error voluptatibus.', u.id, CURRENT_TIMESTAMP + interval 'PT-6H'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et dolores voluptate cum deleniti error voluptatibus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem sint ipsam et inventore officiis.', u.id, CURRENT_TIMESTAMP + interval 'PT-15S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem sint ipsam et inventore officiis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Cupiditate aut consectetur rerum id.', u.id, CURRENT_TIMESTAMP + interval 'P-13D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cupiditate aut consectetur rerum id.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Veritatis consequuntur autem sit similique.', u.id, CURRENT_TIMESTAMP + interval 'PT-53S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Veritatis consequuntur autem sit similique.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Repellat voluptatem eum culpa sit recusandae placeat sed.', u.id, CURRENT_TIMESTAMP + interval 'PT-11H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repellat voluptatem eum culpa sit recusandae placeat sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut praesentium assumenda eum saepe fuga voluptatem in.', u.id, CURRENT_TIMESTAMP + interval 'PT-9M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut praesentium assumenda eum saepe fuga voluptatem in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rerum eveniet blanditiis alias et.', u.id, CURRENT_TIMESTAMP + interval 'P-1M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum eveniet blanditiis alias et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem sint sint dignissimos suscipit ducimus earum non alias.', u.id, CURRENT_TIMESTAMP + interval 'P-9Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem sint sint dignissimos suscipit ducimus earum non alias.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Numquam laborum ipsam ut repellendus neque dolor qui consequuntur.', u.id, CURRENT_TIMESTAMP + interval 'PT-9M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Numquam laborum ipsam ut repellendus neque dolor qui consequuntur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fugit eum corporis incidunt ex sint.', u.id, CURRENT_TIMESTAMP + interval 'PT-16M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fugit eum corporis incidunt ex sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nihil molestiae eum dolor laboriosam tempore et velit.', u.id, CURRENT_TIMESTAMP + interval 'PT-3H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil molestiae eum dolor laboriosam tempore et velit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Odio corporis rem aut vitae nostrum.', u.id, CURRENT_TIMESTAMP + interval 'P-3Y'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Odio corporis rem aut vitae nostrum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Vel ipsum est et ut dolor totam hic dolor commodi.', u.id, CURRENT_TIMESTAMP + interval 'PT-17S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vel ipsum est et ut dolor totam hic dolor commodi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Cupiditate vel assumenda est rerum et.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cupiditate vel assumenda est rerum et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et eos iste odio quibusdam exercitationem qui neque architecto.', u.id, CURRENT_TIMESTAMP + interval 'PT-33M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et eos iste odio quibusdam exercitationem qui neque architecto.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rerum laudantium et saepe quo consequatur vel et.', u.id, CURRENT_TIMESTAMP + interval 'PT-8H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum laudantium et saepe quo consequatur vel et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Reiciendis repellendus voluptate voluptas debitis ducimus voluptatem harum ex.', u.id, CURRENT_TIMESTAMP + interval 'PT-9M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reiciendis repellendus voluptate voluptas debitis ducimus voluptatem harum ex.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sint placeat voluptates quia aut corporis velit distinctio.', u.id, CURRENT_TIMESTAMP + interval 'P-9D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sint placeat voluptates quia aut corporis velit distinctio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et hic consectetur eum eveniet est dolorem optio quaerat illum.', u.id, CURRENT_TIMESTAMP + interval 'PT-11M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et hic consectetur eum eveniet est dolorem optio quaerat illum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Earum ea et qui rem non quia voluptas illo ullam.', u.id, CURRENT_TIMESTAMP + interval 'PT-17H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Earum ea et qui rem non quia voluptas illo ullam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Eligendi laborum velit vitae et dolor recusandae exercitationem et vitae.', u.id, CURRENT_TIMESTAMP + interval 'PT-10M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eligendi laborum velit vitae et dolor recusandae exercitationem et vitae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Provident dignissimos cupiditate provident nesciunt exercitationem qui quos.', u.id, CURRENT_TIMESTAMP + interval 'P-23D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Provident dignissimos cupiditate provident nesciunt exercitationem qui quos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'In non qui eaque perspiciatis est blanditiis voluptatem exercitationem sed.', u.id, CURRENT_TIMESTAMP + interval 'PT-11H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='In non qui eaque perspiciatis est blanditiis voluptatem exercitationem sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Iste cum ad exercitationem neque vel qui molestiae.', u.id, CURRENT_TIMESTAMP + interval 'P-10M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iste cum ad exercitationem neque vel qui molestiae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatibus sit deserunt ipsa cum eveniet consequuntur perspiciatis dolorem quos.', u.id, CURRENT_TIMESTAMP + interval 'PT-22S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatibus sit deserunt ipsa cum eveniet consequuntur perspiciatis dolorem quos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fuga debitis deleniti ut architecto ipsam.', u.id, CURRENT_TIMESTAMP + interval 'P-26D'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fuga debitis deleniti ut architecto ipsam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quae quo perferendis delectus voluptatem totam.', u.id, CURRENT_TIMESTAMP + interval 'P-10M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quae quo perferendis delectus voluptatem totam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolores placeat culpa inventore facilis cumque dolorem.', u.id, CURRENT_TIMESTAMP + interval 'PT-36M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolores placeat culpa inventore facilis cumque dolorem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nam voluptatibus sapiente sit sed alias voluptas corporis est voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'PT-11S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nam voluptatibus sapiente sit sed alias voluptas corporis est voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sed odio repellat eligendi illum nihil.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed odio repellat eligendi illum nihil.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Repellat est qui vitae sit.', u.id, CURRENT_TIMESTAMP + interval 'PT-46M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repellat est qui vitae sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Omnis illo harum quis nisi.', u.id, CURRENT_TIMESTAMP + interval 'PT-19H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Omnis illo harum quis nisi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quis magnam omnis sunt maiores tempore voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'P-29D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quis magnam omnis sunt maiores tempore voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et porro quisquam non rerum molestiae eum est voluptas rem.', u.id, CURRENT_TIMESTAMP + interval 'P-1Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et porro quisquam non rerum molestiae eum est voluptas rem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Laboriosam enim ut vel vero nobis distinctio ad debitis velit.', u.id, CURRENT_TIMESTAMP + interval 'PT-18H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laboriosam enim ut vel vero nobis distinctio ad debitis velit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quo assumenda vel non provident.', u.id, CURRENT_TIMESTAMP + interval 'PT-38M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quo assumenda vel non provident.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Consequatur enim reiciendis dolorem labore minus ea voluptates.', u.id, CURRENT_TIMESTAMP + interval 'P-25D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequatur enim reiciendis dolorem labore minus ea voluptates.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quo aut aut temporibus aut dolore.', u.id, CURRENT_TIMESTAMP + interval 'P-3M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quo aut aut temporibus aut dolore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ut voluptatem odit ullam sit laboriosam reiciendis cumque veritatis expedita.', u.id, CURRENT_TIMESTAMP + interval 'PT-18H'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut voluptatem odit ullam sit laboriosam reiciendis cumque veritatis expedita.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nisi neque omnis dolorem velit odio eos.', u.id, CURRENT_TIMESTAMP + interval 'PT-33S'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nisi neque omnis dolorem velit odio eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Non quidem ducimus non voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'PT-14M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non quidem ducimus non voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et suscipit et hic aperiam ad quia et consequatur dolores.', u.id, CURRENT_TIMESTAMP + interval 'PT-11S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et suscipit et hic aperiam ad quia et consequatur dolores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Animi exercitationem libero veritatis voluptatem sunt.', u.id, CURRENT_TIMESTAMP + interval 'PT-5H'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi exercitationem libero veritatis voluptatem sunt.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Molestiae sapiente velit dolorum voluptatem facere.', u.id, CURRENT_TIMESTAMP + interval 'P-2M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae sapiente velit dolorum voluptatem facere.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Explicabo sint quam provident ipsum unde facilis qui voluptas beatae.', u.id, CURRENT_TIMESTAMP + interval 'PT-46M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Explicabo sint quam provident ipsum unde facilis qui voluptas beatae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est accusamus aut sunt tempore molestias sapiente aut.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est accusamus aut sunt tempore molestias sapiente aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Libero laboriosam inventore laborum sint aspernatur eum eligendi.', u.id, CURRENT_TIMESTAMP + interval 'PT-11H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Libero laboriosam inventore laborum sint aspernatur eum eligendi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem maiores reiciendis natus facilis illo maxime.', u.id, CURRENT_TIMESTAMP + interval 'PT-30M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem maiores reiciendis natus facilis illo maxime.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fugiat in rerum quos delectus veritatis ea consectetur.', u.id, CURRENT_TIMESTAMP + interval 'P-30D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fugiat in rerum quos delectus veritatis ea consectetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui quaerat dolore nam quidem ut ipsam provident.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui quaerat dolore nam quidem ut ipsam provident.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Adipisci eum et consectetur facilis.', u.id, CURRENT_TIMESTAMP + interval 'PT-22S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Adipisci eum et consectetur facilis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Et quod rerum doloremque reiciendis in eaque inventore est excepturi.', u.id, CURRENT_TIMESTAMP + interval 'P-4D'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et quod rerum doloremque reiciendis in eaque inventore est excepturi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Maiores accusantium tempora sunt ex ab aut.', u.id, CURRENT_TIMESTAMP + interval 'PT-2M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Maiores accusantium tempora sunt ex ab aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est est dolores culpa architecto.', u.id, CURRENT_TIMESTAMP + interval 'PT-38M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est est dolores culpa architecto.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quas soluta perspiciatis sint deserunt et vitae voluptates perspiciatis.', u.id, CURRENT_TIMESTAMP + interval 'P-6M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quas soluta perspiciatis sint deserunt et vitae voluptates perspiciatis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sed nulla recusandae quis aliquam nulla blanditiis.', u.id, CURRENT_TIMESTAMP + interval 'PT-18H'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed nulla recusandae quis aliquam nulla blanditiis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Accusamus sed aut quasi ipsam cupiditate tenetur laborum non et.', u.id, CURRENT_TIMESTAMP + interval 'P-6D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Accusamus sed aut quasi ipsam cupiditate tenetur laborum non et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sed voluptatum voluptatibus ut officia.', u.id, CURRENT_TIMESTAMP + interval 'P-10Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed voluptatum voluptatibus ut officia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rem et quis necessitatibus quis reprehenderit sint est voluptatem modi.', u.id, CURRENT_TIMESTAMP + interval 'PT-15H'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rem et quis necessitatibus quis reprehenderit sint est voluptatem modi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Repudiandae dolorem beatae quis quo.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repudiandae dolorem beatae quis quo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Labore accusantium quidem dolore ea non sed eum esse.', u.id, CURRENT_TIMESTAMP + interval 'P-1D'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Labore accusantium quidem dolore ea non sed eum esse.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nihil enim consectetur exercitationem nihil eum soluta molestias error non.', u.id, CURRENT_TIMESTAMP + interval 'P-8M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil enim consectetur exercitationem nihil eum soluta molestias error non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aut distinctio molestiae officia omnis sint fugit dicta.', u.id, CURRENT_TIMESTAMP + interval 'P-8D'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut distinctio molestiae officia omnis sint fugit dicta.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sunt esse quia quis aut et.', u.id, CURRENT_TIMESTAMP + interval 'P-10Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sunt esse quia quis aut et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Aliquid tempore dolorem delectus autem ullam et.', u.id, CURRENT_TIMESTAMP + interval 'PT-2S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aliquid tempore dolorem delectus autem ullam et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Optio porro nulla iste rerum voluptatem aspernatur sit.', u.id, CURRENT_TIMESTAMP + interval 'PT-14S'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Optio porro nulla iste rerum voluptatem aspernatur sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Ab et consequuntur omnis cumque corrupti inventore.', u.id, CURRENT_TIMESTAMP + interval 'PT-13H'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ab et consequuntur omnis cumque corrupti inventore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quia temporibus dolore sequi dolor rerum laborum at.', u.id, CURRENT_TIMESTAMP + interval 'P-4Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia temporibus dolore sequi dolor rerum laborum at.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est occaecati modi eius quasi delectus eos.', u.id, CURRENT_TIMESTAMP + interval 'P-10Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est occaecati modi eius quasi delectus eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Consequatur eius ut sint voluptatem et omnis qui.', u.id, CURRENT_TIMESTAMP + interval 'PT-56M'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequatur eius ut sint voluptatem et omnis qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Voluptatem dolorem itaque esse in.', u.id, CURRENT_TIMESTAMP + interval 'P-2M'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem dolorem itaque esse in.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Est delectus ratione vel a.', u.id, CURRENT_TIMESTAMP + interval 'PT-17H'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est delectus ratione vel a.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Temporibus ratione et rerum ratione vitae tenetur.', u.id, CURRENT_TIMESTAMP + interval 'PT-35S'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Temporibus ratione et rerum ratione vitae tenetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Deserunt error sed assumenda id eaque quis ullam est.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Deserunt error sed assumenda id eaque quis ullam est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Fuga et consequatur ut maxime consequuntur autem dolor ut.', u.id, CURRENT_TIMESTAMP + interval 'P-2Y'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fuga et consequatur ut maxime consequuntur autem dolor ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Magni sint debitis minima qui deleniti laboriosam cum accusantium eligendi.', u.id, CURRENT_TIMESTAMP + interval 'PT-14H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Magni sint debitis minima qui deleniti laboriosam cum accusantium eligendi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Consequuntur ut ab molestiae vitae quasi.', u.id, CURRENT_TIMESTAMP + interval 'PT-43S'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequuntur ut ab molestiae vitae quasi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Rerum esse laborum facilis minima.', u.id, CURRENT_TIMESTAMP + interval 'P-10D'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum esse laborum facilis minima.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Saepe qui ut dolorem nisi harum totam quaerat.', u.id, CURRENT_TIMESTAMP + interval 'PT-28M'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Saepe qui ut dolorem nisi harum totam quaerat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Qui dolor voluptatem quis quis asperiores maiores quia laboriosam eum.', u.id, CURRENT_TIMESTAMP + interval 'PT-17M'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui dolor voluptatem quis quis asperiores maiores quia laboriosam eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Nesciunt ut ea voluptas enim qui.', u.id, CURRENT_TIMESTAMP + interval 'PT-15S'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nesciunt ut ea voluptas enim qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Reprehenderit et in odio aut quam delectus non.', u.id, CURRENT_TIMESTAMP + interval 'PT-18H'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reprehenderit et in odio aut quam delectus non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Molestiae quo error ut est.', u.id, CURRENT_TIMESTAMP + interval 'P-7D'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae quo error ut est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Dolores architecto laudantium aspernatur sit omnis.', u.id, CURRENT_TIMESTAMP + interval 'P-8Y'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolores architecto laudantium aspernatur sit omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Unde possimus dolorum corporis doloribus expedita quod et.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Unde possimus dolorum corporis doloribus expedita quod et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Pariatur alias dicta expedita velit excepturi qui officiis quae voluptatem.', u.id, CURRENT_TIMESTAMP + interval 'PT-50S'
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Pariatur alias dicta expedita velit excepturi qui officiis quae voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Labore est eum autem molestiae et et minus.', u.id, CURRENT_TIMESTAMP + interval 'P-7M'
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Labore est eum autem molestiae et et minus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Quia iste vitae vel earum qui aut blanditiis.', u.id, CURRENT_TIMESTAMP + interval 'P-5Y'
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia iste vitae vel earum qui aut blanditiis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Harum dolorem assumenda consequuntur ut omnis reiciendis.', u.id, CURRENT_TIMESTAMP + interval 'P-3Y'
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Harum dolorem assumenda consequuntur ut omnis reiciendis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT uuid_generate_v1(), 'Sed aperiam qui sint repudiandae.', u.id, CURRENT_TIMESTAMP + interval 'PT-31M'
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed aperiam qui sint repudiandae.' AND "user_id"=u.id);


/* generated user_relationships*/

INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-6@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-7@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-8@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-9@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-10@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-11@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-12@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-13@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-14@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-15@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-16@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-17@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-18@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-19@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-20@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-21@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-22@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-23@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-24@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-25@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-26@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-27@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-28@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-29@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-30@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-31@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-32@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-33@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-34@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-35@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-36@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-37@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-38@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-39@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-40@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-41@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-42@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-43@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-44@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-45@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-46@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-47@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-48@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-49@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" follower CROSS JOIN "user" followed
    WHERE follower.email='example@railstutorial.org' AND followed.email='example-50@railstutorial.org'
    AND NOT EXISTS(SELECT follower_id FROM user_relationships WHERE follower_id=follower.id AND followed_id=followed.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-6@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-7@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-8@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-9@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-10@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-11@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-12@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-13@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-14@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-15@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-16@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-17@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-18@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-19@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-20@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-21@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-22@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-23@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-24@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-25@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-26@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-27@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-28@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-29@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-30@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-31@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-32@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-33@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-34@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-35@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-36@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-37@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-38@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-39@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
INSERT INTO user_relationships(follower_id, followed_id)
  SELECT follower.id, followed.id FROM "user" followed CROSS JOIN "user" follower
    WHERE followed.email='example@railstutorial.org' AND follower.email='example-40@railstutorial.org'
    AND NOT EXISTS(SELECT followed_id FROM user_relationships WHERE followed_id=followed.id AND follower_id=follower.id);
