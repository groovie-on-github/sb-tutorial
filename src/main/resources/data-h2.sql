INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Rails Tutorial', 'example@railstutorial.org',
    '$2a$10$26noeZ4APyb0poMi8Vg7wuw8S5OHasdScEPd1ebZyTOrLY3/e3qdW',
    true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example@railstutorial.org');


/*generated dummy users*/

INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Talisha Gottlieb II', 'example-1@railstutorial.org',
    '$2a$10$v6LKcZ581izyZte6Xq125u7vz5g0FOr5cDdIvNrhKIfa0L6nBX7aG', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-1@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Jed Nikolaus', 'example-2@railstutorial.org',
    '$2a$10$qmnL/qYKMVIxHXocqDfXTe12FrZmu3haDCeZIFttWJVgPMKhBU/KC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-2@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Willia Williamson', 'example-3@railstutorial.org',
    '$2a$10$XrhFB1dsHB5m687ubhc04.mNRkQO9bfFel1/aoR6q.K.Nnqjj6bLa', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-3@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Shayne Pouros', 'example-4@railstutorial.org',
    '$2a$10$JmWG5DT7Y8BdLVxk8BRPGOw8OTbAEtgHXQAN3IfuXJ887vm09NgyC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-4@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Karl Dickinson', 'example-5@railstutorial.org',
    '$2a$10$rr54gTwWaddLj.2vc7frgOQQlkyWu7TAAEyXR4BP1qjBzz7vGe6RW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-5@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Wilfredo Kunze', 'example-6@railstutorial.org',
    '$2a$10$F5FTRiqbnZO3LxUO6zHXj.c2oWzvrOPK6A3zFvNoN0JAXDQYDgChm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-6@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Merle Price', 'example-7@railstutorial.org',
    '$2a$10$lDHsZu9QwMc0kpAJK.MID.s9wP7P5wInW0Qky3uGHZc3Kn3obRvdC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-7@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Theodore Glover', 'example-8@railstutorial.org',
    '$2a$10$nPNY6uiuNkppELkTyIK.d.Eow8j2CWn083ec0eLCd9IZON0xbYY0a', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-8@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Demarcus Feeney', 'example-9@railstutorial.org',
    '$2a$10$6RJ5JBubJVsRn0idIKp00.CsWunyzpikJzfTNwh3n2h5jpswMmiM2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-9@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Juanita Swaniawski', 'example-10@railstutorial.org',
    '$2a$10$yEEYj6.tGUu2pz4Beo7kDebI.TCp6P70Se79mQlsS3kjRsscDYXuW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-10@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Lester Blanda', 'example-11@railstutorial.org',
    '$2a$10$jeBSW2FhIwoBCk2L8/7j..QWw63TYaVadn5MufDMMAKTdPHz7z/q2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-11@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Carla Lebsack', 'example-12@railstutorial.org',
    '$2a$10$i2HeZxkrD1OAqN0zHTFLIerLa71O3eaAHMmT5bHYEbsMVesGdzy8W', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-12@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mr. Roxy Pouros', 'example-13@railstutorial.org',
    '$2a$10$0uFlyjIb9cAv0hPuKWpgeevYps89QXvKwLMnGhUWcvgw5baECbkrq', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-13@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Marshall Huel', 'example-14@railstutorial.org',
    '$2a$10$ORc9vn9s/Oq.qci.UoO4Zeuq3AyvJ3tZigwll6h7WuoSBn.hF9muC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-14@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Chad Harber', 'example-15@railstutorial.org',
    '$2a$10$l.zy.3jnTUDDz4/QusuXCOqUbspvhw7fdkESse9tRIV/B6vm5..FW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-15@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Zackary Ritchie', 'example-16@railstutorial.org',
    '$2a$10$UZkfzvLTmu6j/iFTp1pzRuoU/paEGKK6DPlcrDc.PVBNT2lRAyyNy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-16@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Linnea Walter', 'example-17@railstutorial.org',
    '$2a$10$qHWdP0r.eG2Rpf6Ot12i.e/iH3Ga/b8l/WdlzBErVDKybzLyj4tU.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-17@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mr. Kris Boyle', 'example-18@railstutorial.org',
    '$2a$10$rlT9bCUVRfLi9A2HA2ajGOA9J6TClbe1vCaIeqqS1JXaBFtwuz3cW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-18@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Gary Gerlach', 'example-19@railstutorial.org',
    '$2a$10$yPSqrszhBV9mLN5EWQu8EePyOzA8UmorPz0S.4TG8ASZ8tGmf5scy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-19@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Lawerence Miller III', 'example-20@railstutorial.org',
    '$2a$10$4nGQxhoVXBOolLg.kHyyYu015yPkTD51RiyCDdAFvJ0D3qyjTQqp6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-20@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Nathaniel Bogisich DVM', 'example-21@railstutorial.org',
    '$2a$10$EOVQ6tqovAutkGTMLR5rWeKfHfvE6A3wGBErSWlC4FrARHnkKAS62', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-21@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Hilton Schiller', 'example-22@railstutorial.org',
    '$2a$10$AbTvRs9m8DoxEjY9M5kTWuZZXaFSeGYBbKStgHMfFmKA1g.FVjV4e', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-22@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Winford Orn Sr.', 'example-23@railstutorial.org',
    '$2a$10$ODnduw7SLHYK0ft.vdvpGOU4exKFF4Le3DQ.Y5KP359OptCdNp26m', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-23@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Chauncey Schoen', 'example-24@railstutorial.org',
    '$2a$10$HFTnCV.BlpLkJwXB.yyCKuR0/Wn56WfEEkhJycDCFxnf4Ozr8J22K', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-24@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Monroe Stokes', 'example-25@railstutorial.org',
    '$2a$10$8CNT9sGYYqLW2xEDdYYSYeY0FKq4fiegkwKxyQHSIK06HJ5qEPntG', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-25@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Billi Cassin', 'example-26@railstutorial.org',
    '$2a$10$K4jU3rJ9Ps7DWuDmiA5/HO0CPp86vYpW2ba91PSRWenVCQAcdUga.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-26@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Ms. Kareen Auer', 'example-27@railstutorial.org',
    '$2a$10$kdxVidOkzKjebvxuqJsoFOaGiURWoE8r1zjwDg3Tx4VQwWRf3rY4W', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-27@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Laure Cronin', 'example-28@railstutorial.org',
    '$2a$10$KNXamCeu3YWCO.fQaC8qQerRMxgi5XEf3jdiP8dzJ85Sfos9/iYc2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-28@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Dr. Melia Wunsch', 'example-29@railstutorial.org',
    '$2a$10$nwqEzyPfYGtQ3b3c3CJe6O145mi3AB9SdfxCj5MO8sBjATrbL4LkW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-29@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Kourtney Feil', 'example-30@railstutorial.org',
    '$2a$10$EjBZ465d4fbYnIG5jRexseND4hweaUdhE5nE/KQuEd5531amKKdky', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-30@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Ms. Han Pfeffer', 'example-31@railstutorial.org',
    '$2a$10$tu66MR26B5keYIAOloIAIe6oIP/Uns64Ie69WfjHZqCY.KXugc6M6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-31@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Adrien Hintz', 'example-32@railstutorial.org',
    '$2a$10$.Cj8cqi7lo38eRShPe61P.N7J2PVkALCEFdyVz.9mnL/RvS9DiTsm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-32@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Juliet Bruen', 'example-33@railstutorial.org',
    '$2a$10$8OzUp0m/ANvamWiorEO4RuFDtECsws7z995w/9DxJ27/fTzlAU/1S', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-33@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Saundra Kreiger', 'example-34@railstutorial.org',
    '$2a$10$IL0j5UQMcHouI8MHAZpkou7vB2DFvjtEUwTHEphE1j9J2WSw6POxi', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-34@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Raul Mertz', 'example-35@railstutorial.org',
    '$2a$10$Hglmxo8UC3EaLVk2MexxiOxrt00mILHQnzNGeEG.AbMMQIbIWbEZ.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-35@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Larry Bartoletti', 'example-36@railstutorial.org',
    '$2a$10$qYtjbQJ2ixHBzX9aoj580ek3eHNwjbojuAWChQ.RMWn4Kb2EnaB/G', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-36@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Gaylord Bechtelar', 'example-37@railstutorial.org',
    '$2a$10$/qcO//1jOPxIVq83SSWERe7QbpxkDms1tjokG..uv8jYjTRV4Eurm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-37@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Wiley Crist', 'example-38@railstutorial.org',
    '$2a$10$KaOd9ewOch77MCWNBFIwQ.k7wEVLUAW8/4wlVFZHls9b/0gGIYjh2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-38@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Layla Baumbach', 'example-39@railstutorial.org',
    '$2a$10$tsc3FvIgYAb66yp7nGpqQOmjQryeJzO4RrY1kQPmCpZzaGbgFQ3cC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-39@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Chieko Abshire III', 'example-40@railstutorial.org',
    '$2a$10$GyDmGXO06SDF4envR5VOJO7rcSoXxNJunS2XX4qr/Gi41LSQzD7FK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-40@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Margurite Welch', 'example-41@railstutorial.org',
    '$2a$10$0BsXIwIGbIe0yepTPafaXeTpDUhX4VNDH84hXVtIGrvOlCeo.UQpi', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-41@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Dr. Emmanuel Lang', 'example-42@railstutorial.org',
    '$2a$10$wBGd2wqJ31N7/OFn./oWwO8yhxBOQyxixJ55SVWeXmPnz5S6jm1xK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-42@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mr. Yasmin Sporer', 'example-43@railstutorial.org',
    '$2a$10$Z9MP0Qk40kwr0vakfbJWveh6oxf7jMdbOtpWtiyP3j8cwcrIf/7Wy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-43@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Greg Jacobi', 'example-44@railstutorial.org',
    '$2a$10$Kd0AKXPIbYaRuvne8DbZUOpx9mqwdEG8lJBScjloFE7XWWVXOcVLW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-44@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Anisa Gislason', 'example-45@railstutorial.org',
    '$2a$10$HlauhbzDvxN3Us/b4YiVreiIq7.hqdHP6w9ouBpg3ViDCL2GNTlkq', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-45@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Jacques Treutel', 'example-46@railstutorial.org',
    '$2a$10$9.v1PC1ombht5qXQEvJ2s.IPMFZSQaOjiaNqEYOPtUOG2suyEGFoS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-46@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Saul Murazik', 'example-47@railstutorial.org',
    '$2a$10$qBeQhpjdsRXGiKEAOw4Z0e401chmfqd/9.kYyOU8Cx4S4mav9iSWy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-47@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Meagan Herzog', 'example-48@railstutorial.org',
    '$2a$10$5XGF7WHtsNkUE.KfXZ5TL.G.m/9aTxW8KkjloqloZuW/Jf1U0eW46', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-48@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Cristina Volkman', 'example-49@railstutorial.org',
    '$2a$10$rWgz0kqxaOG0yg6AzqF4bugr6TcfmEBjM6uqkyTi9o5GW16u.G58C', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-49@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Hermila Murphy', 'example-50@railstutorial.org',
    '$2a$10$DlPrdutQzBoXLBj8qbxfleTEQjawpSj6XaFyRMB4WazpaImjuOMMW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-50@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mr. Frank Little', 'example-51@railstutorial.org',
    '$2a$10$as6q.chSDjzTl8RmYYUqdu70O8uFBojjvnrtN5un/knzXohGqyneu', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-51@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Tyrone Lehner II', 'example-52@railstutorial.org',
    '$2a$10$7sm8uviEOGEL.wm7CnxGseO6lu1sDwuBg7WXMdvI2LWISRqF0YOFS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-52@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Isaias Mante', 'example-53@railstutorial.org',
    '$2a$10$2QElOK0blzV0VlOr.nHSaucen39oqPwHesxmjxmBn2PgRCW9Fae42', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-53@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Edythe Nolan', 'example-54@railstutorial.org',
    '$2a$10$hGfm6z34S.SRTyDPfbp08OYxxyXdGm3ikVWEoXMvX3wZGoyy.rjPy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-54@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Fritz Zieme', 'example-55@railstutorial.org',
    '$2a$10$fxiB/qItP7Tl12JjFEqXzuwC/umcIKCs5orc9DwaZmDBuaDqRZRTa', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-55@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mrs. Graham Dickens', 'example-56@railstutorial.org',
    '$2a$10$w5702zTkdbM463m1DYAeF.Uqtd9qlZACpi4ChV4DPI.qdIPV/WvDy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-56@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Pamila Paucek', 'example-57@railstutorial.org',
    '$2a$10$UYaVQeYIQd2G.ngbhp9pOuIV/easktAmnuf5KOzRsaj7weMHRtZYG', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-57@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Johnson Sauer', 'example-58@railstutorial.org',
    '$2a$10$2q2OjOfWOycYqf8rMOuqeurHeqrEj7Jfc2xS6RFpbhFPQ3oqNWLJO', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-58@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Robin Christiansen', 'example-59@railstutorial.org',
    '$2a$10$lHizBNAzAhF0zwqIDm9kIOoPDHde7pplHZ87GlOuyGSXCWEv6r4ru', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-59@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Rory Towne', 'example-60@railstutorial.org',
    '$2a$10$1xjVXNiSPnii.LTPmJsDzuD3y5civqh6efIpJBl79pzGikW0.3Eu2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-60@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Spencer Walter', 'example-61@railstutorial.org',
    '$2a$10$KDpPVZR0jGY0srUmladJWuMcZeTMt6QvYw6JLKWnVhPQOfXdU1tCS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-61@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Sandy Macejkovic', 'example-62@railstutorial.org',
    '$2a$10$ABYIYr/uhxD4tU6UYOp4mOwovK6sA.SbDk/zjZV3dsAMWoJrg3u9q', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-62@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Greg Parker', 'example-63@railstutorial.org',
    '$2a$10$VJybT9TH3673Ta2D2NASXOrfZY5XjEz7wB..Wi2moET1uEY/gxk5e', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-63@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Corie Vandervort', 'example-64@railstutorial.org',
    '$2a$10$ZGmuqSpGXa1RGcx1TwTgKeqvDb0p/3.DRbZp1SRn2Faws8BL2trEK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-64@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Bettyann Leffler', 'example-65@railstutorial.org',
    '$2a$10$FX0rEH1AWocyyK3D0ERhb.iDa9cdR407O9vQvXeyJzsko9HzGyv.y', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-65@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Arnetta Wisoky', 'example-66@railstutorial.org',
    '$2a$10$/4BpzRT1wFHAfml1lYgB3ecp1g8qVjsyr1bzYJDhHuqMAfGbYSwCe', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-66@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Ms. Beau Schmidt', 'example-67@railstutorial.org',
    '$2a$10$20LTZVrCeJZbRx5bPcuZ2eM4tQEm47AsupSCx48q7EHsGFtcbLxqq', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-67@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Kenny Hegmann', 'example-68@railstutorial.org',
    '$2a$10$fVOE7Gqz9gPWrudfq7WMv.Ay8ad6WDmoV/evoseNyXoV9mk1IHT9u', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-68@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Amber Vandervort Sr.', 'example-69@railstutorial.org',
    '$2a$10$o9Bpx0pZZx9G7WpMPoBgqe49UJUStPnuDAkMgpxd1ikfQTYipSXK.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-69@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Del Schaefer', 'example-70@railstutorial.org',
    '$2a$10$rS3TeJscXWYXixR2g9o2zO7CNkbpPU1A2bMGUKRDTID/K1rCh6sx.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-70@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Darcey Ondricka', 'example-71@railstutorial.org',
    '$2a$10$DJdmoSZJ55Pfz8GIX8Fw9.oZNS8AFN1k6fJQJ8BeB5Eh/fe/48ivS', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-71@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Lindsey Pacocha', 'example-72@railstutorial.org',
    '$2a$10$c/BwU8A2VTNcpYWOj55PpuI2wGeabv3B3gR8LnI8XXEGeYmsTWwqe', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-72@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Katy Simonis DVM', 'example-73@railstutorial.org',
    '$2a$10$cjKYSaXBH2IzMr7MHXLuwe0drDtR7gYk/2Nu.rUdM8n047s1Mjv/y', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-73@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mrs. Carola Stanton', 'example-74@railstutorial.org',
    '$2a$10$FHQcktnuZ01wZvuhRiMlMuGH1fFiQgO56JtGKbuf2Ra7SQgAw5Eay', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-74@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Chin Hilpert', 'example-75@railstutorial.org',
    '$2a$10$2/6Y6he3481EpzwmDy6lCOxiLxB9jrHcOy2QYzR46jxrvG0Ct2PT2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-75@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Amberly Champlin', 'example-76@railstutorial.org',
    '$2a$10$8p5IUOabUDBbZP.MJwIwTuwdgPHRxDIuldMIZlEmieT/Obg47y4Ya', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-76@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Miss Cody Lind', 'example-77@railstutorial.org',
    '$2a$10$9BrXfsAlR1Rs7rbfTo8YleIXfxdr9AcGBi3UaJEfhgDS95yZp0xaW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-77@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Keneth Shanahan', 'example-78@railstutorial.org',
    '$2a$10$pq.yGA944oiGAfQZhnA3Lu6xWkohLza69nyQ9LMfP8VEYJ0AKlrtW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-78@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Rutha Fahey', 'example-79@railstutorial.org',
    '$2a$10$iQMHUYFCDVQDqm.JWVSi4eaMekZbQhiC0qJBD/otJCfC9/OOA/FMe', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-79@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Angela Hammes', 'example-80@railstutorial.org',
    '$2a$10$BvLAiRnn6IW0.1CtghWAfejb/cRXhYVzHytym.5/EnPkDMdghFVe6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-80@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Frederic Johns DDS', 'example-81@railstutorial.org',
    '$2a$10$lbCCubIn9WifpMvdYLf0Me0tAODJUGo6fwxpsnUbI/ZmGrjtI9U5e', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-81@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Nelia Carroll', 'example-82@railstutorial.org',
    '$2a$10$pZq3j8wEtuogDy2vFWJcXO/BXx/Yxnw2EClnhzDgG7fjWzJ9NSXMK', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-82@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Portia Kris', 'example-83@railstutorial.org',
    '$2a$10$SYQz9L.F.4aaRvjRaDyq/ekWupa87j7SS5674qUjiumy9/NWJXQSC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-83@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Dr. Echo McClure', 'example-84@railstutorial.org',
    '$2a$10$S0A2FSKeXc7BCB6ac5cDhOqXgQj6kxkjeJt3AKBPgUwB2ul.pEkBi', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-84@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Emilie Welch', 'example-85@railstutorial.org',
    '$2a$10$eaTJHcg32X.0dHNSlfH10OMiMmmw4VNLxifWgeLptu/gVWNyfJIhC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-85@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Leonardo McKenzie DDS', 'example-86@railstutorial.org',
    '$2a$10$iEqUVGiO5lR5bh.cbRDFc.tCMUH8bUxf55DfdVEix2gT.X0JDDiGm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-86@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Charlsie Stoltenberg', 'example-87@railstutorial.org',
    '$2a$10$MKaTfVOOKqfQbcN7uYL0JeG4OQ1hjxDvRd/KT5ZDSYnN8NBUAYSe6', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-87@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Lou Moore', 'example-88@railstutorial.org',
    '$2a$10$oE8rY.k2uO4M1FHKidgM.uyoqvLSLgAv8QFNBD2fFjwkzLlyDVhmO', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-88@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Miss Dulcie Kunde', 'example-89@railstutorial.org',
    '$2a$10$DpWZ1eLWNDZ/BR9TkiFQPujA7XI1esRZ0rU4VLGTVSDj/s.c6IcwO', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-89@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Dr. Eldon Stehr', 'example-90@railstutorial.org',
    '$2a$10$4Ai7gBto.danZlwIFNwmYOXhQ/cv/7ELsohZIwgRKw1o.oAQP1B.G', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-90@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Tari Hahn', 'example-91@railstutorial.org',
    '$2a$10$5CXsJJwZU36eggqTW0PxUejlqrsvWcbJkZ.lm6DHWTn/o0yUQJzFC', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-91@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Roman Bernier', 'example-92@railstutorial.org',
    '$2a$10$Y6qQUJo.e0jdLl/u5IWIlO..5xbwAi/bzgL8rVYK1xStXMWV0/hIy', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-92@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Chu Koepp', 'example-93@railstutorial.org',
    '$2a$10$IQ.svrPUc.f944kESExkLu0gc7QvJTwwhjCsSw46fHyQzRcxHAW4.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-93@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Mrs. Lindsey Dickens', 'example-94@railstutorial.org',
    '$2a$10$Gd7F/zrRNkp8HmXfX7hXJe2C2VjSYYiYID2G4C6L5L1/6en9qlGla', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-94@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Twyla Stark I', 'example-95@railstutorial.org',
    '$2a$10$b/xX4Cwj/Laor3GMBfzGK.gncKDNuphy9CkHJ4zGoefM8K2rlb9U2', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-95@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Marg Kovacek', 'example-96@railstutorial.org',
    '$2a$10$TjJLM2UBSASbWTwjZLZRuuGOGmYcwgr.OqL11JFfozVCpNzRHmtEW', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-96@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Fonda Gerlach', 'example-97@railstutorial.org',
    '$2a$10$e.8XAw60aHWQsoWE6DEIDOfXLrohkj.uBXu3LD5Wpu.2dRUD4Qdli', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-97@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Arletta Zemlak', 'example-98@railstutorial.org',
    '$2a$10$BwfM8jhxTbyo23JikwCdyuougoslfYY59APQ03dZvxzuNCatZK12.', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-98@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest, is_activated, activated_at)
  SELECT RANDOM_UUID(), 'Joline Rutherford II', 'example-99@railstutorial.org',
    '$2a$10$4bhPnZH1N30TFucpjYu5z.B3YxhOhRlqWifhofZmtnrd0Cg.9WAlm', true, CURRENT_TIMESTAMP
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-99@railstutorial.org');


/*generated dummy microposts*/

INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et quaerat totam impedit illum perferendis et et.', u.id, TIMESTAMPADD(MINUTE, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et quaerat totam impedit illum perferendis et et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sit repudiandae accusantium quaerat ipsa voluptatibus sint delectus qui maxime.', u.id, TIMESTAMPADD(HOUR, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sit repudiandae accusantium quaerat ipsa voluptatibus sint delectus qui maxime.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et laudantium reprehenderit sed laboriosam provident et eos placeat voluptas.', u.id, TIMESTAMPADD(YEAR, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et laudantium reprehenderit sed laboriosam provident et eos placeat voluptas.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Accusantium beatae itaque ut voluptas eos et non aperiam magni.', u.id, TIMESTAMPADD(DAY, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Accusantium beatae itaque ut voluptas eos et non aperiam magni.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptatem esse molestiae sed cum eaque ut doloribus.', u.id, TIMESTAMPADD(YEAR, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem esse molestiae sed cum eaque ut doloribus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ullam ea ea sit repudiandae ut dicta.', u.id, TIMESTAMPADD(MONTH, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ullam ea ea sit repudiandae ut dicta.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Praesentium laboriosam magnam expedita non accusantium et porro nemo dicta.', u.id, TIMESTAMPADD(MINUTE, -5, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Praesentium laboriosam magnam expedita non accusantium et porro nemo dicta.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nostrum consequatur possimus non voluptas nobis est est ut doloribus.', u.id, TIMESTAMPADD(DAY, -29, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nostrum consequatur possimus non voluptas nobis est est ut doloribus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aperiam non sunt in aliquid.', u.id, TIMESTAMPADD(HOUR, -5, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aperiam non sunt in aliquid.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ea deserunt sapiente sint excepturi qui.', u.id, TIMESTAMPADD(SECOND, -37, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ea deserunt sapiente sint excepturi qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Commodi eos cupiditate maiores ut nobis quas quos ut.', u.id, TIMESTAMPADD(MONTH, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Commodi eos cupiditate maiores ut nobis quas quos ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aspernatur exercitationem fuga quo beatae molestias quia rerum aut.', u.id, TIMESTAMPADD(DAY, -21, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aspernatur exercitationem fuga quo beatae molestias quia rerum aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Temporibus reiciendis saepe vitae nisi inventore aut libero odit.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Temporibus reiciendis saepe vitae nisi inventore aut libero odit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ab sed laboriosam magnam repellat mollitia eaque ut sint.', u.id, TIMESTAMPADD(YEAR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ab sed laboriosam magnam repellat mollitia eaque ut sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dicta blanditiis enim repudiandae amet omnis temporibus quia animi et.', u.id, TIMESTAMPADD(SECOND, -22, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dicta blanditiis enim repudiandae amet omnis temporibus quia animi et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ut et qui similique esse enim explicabo.', u.id, TIMESTAMPADD(MONTH, -5, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut et qui similique esse enim explicabo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Facere dolor ipsum soluta enim suscipit facilis.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facere dolor ipsum soluta enim suscipit facilis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sequi autem at nemo saepe qui sit provident.', u.id, TIMESTAMPADD(HOUR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sequi autem at nemo saepe qui sit provident.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ut neque impedit sed occaecati voluptatem aspernatur.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut neque impedit sed occaecati voluptatem aspernatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nam veritatis aliquid quo nihil in maiores maxime non.', u.id, TIMESTAMPADD(SECOND, -59, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nam veritatis aliquid quo nihil in maiores maxime non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorem et qui voluptatem nihil aut dolorum optio.', u.id, TIMESTAMPADD(MINUTE, -48, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem et qui voluptatem nihil aut dolorum optio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'At qui nostrum in voluptatibus hic deleniti nihil ipsum.', u.id, TIMESTAMPADD(MINUTE, -54, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='At qui nostrum in voluptatibus hic deleniti nihil ipsum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorum accusantium aliquid sit qui quisquam aut ex aliquid.', u.id, TIMESTAMPADD(MONTH, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorum accusantium aliquid sit qui quisquam aut ex aliquid.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Id omnis error beatae quos voluptatum nostrum quas numquam quia.', u.id, TIMESTAMPADD(DAY, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id omnis error beatae quos voluptatum nostrum quas numquam quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Unde dolor eos odit ad ratione quos tenetur.', u.id, TIMESTAMPADD(MONTH, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Unde dolor eos odit ad ratione quos tenetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sed et et consectetur tempore aut qui molestias reprehenderit tenetur.', u.id, TIMESTAMPADD(MINUTE, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed et et consectetur tempore aut qui molestias reprehenderit tenetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae culpa magni similique at aliquam dolores hic quo.', u.id, TIMESTAMPADD(HOUR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae culpa magni similique at aliquam dolores hic quo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Distinctio ut nihil nisi ex doloribus fugit omnis.', u.id, TIMESTAMPADD(MONTH, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Distinctio ut nihil nisi ex doloribus fugit omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nam rerum est sit dicta non optio omnis dolor.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nam rerum est sit dicta non optio omnis dolor.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Atque dignissimos impedit aut perspiciatis laudantium dignissimos eum.', u.id, TIMESTAMPADD(DAY, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Atque dignissimos impedit aut perspiciatis laudantium dignissimos eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Doloribus eum amet qui dolorum officiis ab et a rem.', u.id, TIMESTAMPADD(DAY, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloribus eum amet qui dolorum officiis ab et a rem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Rerum occaecati maiores molestiae iusto cupiditate cumque.', u.id, TIMESTAMPADD(YEAR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum occaecati maiores molestiae iusto cupiditate cumque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ea placeat quisquam sunt et officia cum nisi.', u.id, TIMESTAMPADD(MINUTE, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ea placeat quisquam sunt et officia cum nisi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'In molestiae quos ut incidunt exercitationem eos ut id.', u.id, TIMESTAMPADD(DAY, -26, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='In molestiae quos ut incidunt exercitationem eos ut id.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Reprehenderit et quia reiciendis perferendis cumque inventore dolorem aut.', u.id, TIMESTAMPADD(YEAR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reprehenderit et quia reiciendis perferendis cumque inventore dolorem aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ratione sint occaecati ipsum non a rem.', u.id, TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ratione sint occaecati ipsum non a rem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Totam voluptates ex dolorum quibusdam dolores praesentium vel consequatur.', u.id, TIMESTAMPADD(MINUTE, -58, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Totam voluptates ex dolorum quibusdam dolores praesentium vel consequatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Expedita rerum animi nesciunt ducimus laborum nobis a perferendis laboriosam.', u.id, TIMESTAMPADD(MINUTE, -57, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Expedita rerum animi nesciunt ducimus laborum nobis a perferendis laboriosam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nihil expedita cum a quo porro facere et est sapiente.', u.id, TIMESTAMPADD(DAY, -27, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil expedita cum a quo porro facere et est sapiente.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Vero sed ea ut voluptates quod reiciendis iusto a.', u.id, TIMESTAMPADD(SECOND, -41, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vero sed ea ut voluptates quod reiciendis iusto a.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Repellendus nobis omnis quae ex veritatis quisquam.', u.id, TIMESTAMPADD(HOUR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repellendus nobis omnis quae ex veritatis quisquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Error voluptatibus error fuga dolores quam omnis laboriosam nulla.', u.id, TIMESTAMPADD(MONTH, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Error voluptatibus error fuga dolores quam omnis laboriosam nulla.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Necessitatibus recusandae eveniet sit unde.', u.id, TIMESTAMPADD(MINUTE, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Necessitatibus recusandae eveniet sit unde.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quasi sunt aut placeat sed quos eligendi cumque occaecati laudantium.', u.id, TIMESTAMPADD(HOUR, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quasi sunt aut placeat sed quos eligendi cumque occaecati laudantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut provident assumenda ut repudiandae et velit natus.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut provident assumenda ut repudiandae et velit natus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Corporis voluptatem consequatur odio repudiandae doloribus porro similique saepe.', u.id, TIMESTAMPADD(MONTH, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Corporis voluptatem consequatur odio repudiandae doloribus porro similique saepe.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae rerum nihil perspiciatis accusantium.', u.id, TIMESTAMPADD(MINUTE, -50, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae rerum nihil perspiciatis accusantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eveniet eos vel ut sit.', u.id, TIMESTAMPADD(MINUTE, -48, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eveniet eos vel ut sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ab sunt esse aliquid et soluta provident.', u.id, TIMESTAMPADD(DAY, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ab sunt esse aliquid et soluta provident.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et possimus consequatur asperiores et dolor quae.', u.id, TIMESTAMPADD(MONTH, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et possimus consequatur asperiores et dolor quae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'At veniam qui tempore pariatur.', u.id, TIMESTAMPADD(DAY, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='At veniam qui tempore pariatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'In ea vitae eos sit.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='In ea vitae eos sit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eum facilis error nostrum modi pariatur et.', u.id, TIMESTAMPADD(YEAR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eum facilis error nostrum modi pariatur et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Doloremque beatae vero porro consectetur esse omnis dolorem molestiae sint.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloremque beatae vero porro consectetur esse omnis dolorem molestiae sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Animi provident dolor est sed explicabo.', u.id, TIMESTAMPADD(HOUR, -18, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi provident dolor est sed explicabo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et laboriosam accusantium corporis quisquam autem non.', u.id, TIMESTAMPADD(MINUTE, -44, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et laboriosam accusantium corporis quisquam autem non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Laboriosam dolorem odio sed repellendus.', u.id, TIMESTAMPADD(MONTH, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laboriosam dolorem odio sed repellendus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptas ipsam inventore nihil eos.', u.id, TIMESTAMPADD(DAY, -13, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas ipsam inventore nihil eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Id commodi eos fugit non.', u.id, TIMESTAMPADD(MINUTE, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id commodi eos fugit non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Saepe perspiciatis ab nostrum ducimus autem.', u.id, TIMESTAMPADD(MINUTE, -5, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Saepe perspiciatis ab nostrum ducimus autem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Libero perferendis voluptas praesentium velit.', u.id, TIMESTAMPADD(MINUTE, -50, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Libero perferendis voluptas praesentium velit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'A minus deleniti soluta natus quidem occaecati laborum ipsum.', u.id, TIMESTAMPADD(SECOND, -23, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='A minus deleniti soluta natus quidem occaecati laborum ipsum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Animi dolorem voluptatibus sit illum ratione eveniet animi.', u.id, TIMESTAMPADD(HOUR, -22, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi dolorem voluptatibus sit illum ratione eveniet animi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Porro ut dolorem aliquid est quia.', u.id, TIMESTAMPADD(HOUR, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Porro ut dolorem aliquid est quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptas qui et dolorem earum.', u.id, TIMESTAMPADD(MINUTE, -43, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas qui et dolorem earum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Perspiciatis necessitatibus molestias dolor dolore repellat explicabo pariatur omnis.', u.id, TIMESTAMPADD(HOUR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Perspiciatis necessitatibus molestias dolor dolore repellat explicabo pariatur omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Consequatur impedit vel et facere.', u.id, TIMESTAMPADD(SECOND, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequatur impedit vel et facere.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ipsa eius et libero id.', u.id, TIMESTAMPADD(MINUTE, -58, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ipsa eius et libero id.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Commodi quaerat aut quis reprehenderit ut.', u.id, TIMESTAMPADD(DAY, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Commodi quaerat aut quis reprehenderit ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Numquam aliquid autem illum debitis voluptatem est.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Numquam aliquid autem illum debitis voluptatem est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Reiciendis dolor laborum qui omnis velit dolores vitae omnis porro.', u.id, TIMESTAMPADD(DAY, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reiciendis dolor laborum qui omnis velit dolores vitae omnis porro.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Blanditiis sed sed eos omnis magni.', u.id, TIMESTAMPADD(DAY, -20, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Blanditiis sed sed eos omnis magni.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nihil aliquid nemo sunt voluptatem architecto corrupti expedita et.', u.id, TIMESTAMPADD(DAY, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil aliquid nemo sunt voluptatem architecto corrupti expedita et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'A illo beatae harum necessitatibus delectus.', u.id, TIMESTAMPADD(MINUTE, -59, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='A illo beatae harum necessitatibus delectus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorem quia nulla voluptatum ut odit.', u.id, TIMESTAMPADD(MINUTE, -58, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem quia nulla voluptatum ut odit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dignissimos est facere necessitatibus consequatur voluptas sunt nesciunt.', u.id, TIMESTAMPADD(DAY, -30, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dignissimos est facere necessitatibus consequatur voluptas sunt nesciunt.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Architecto doloribus ea et perspiciatis at adipisci et.', u.id, TIMESTAMPADD(MINUTE, -26, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Architecto doloribus ea et perspiciatis at adipisci et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Libero repellendus deleniti voluptatem animi nesciunt est in nobis et.', u.id, TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Libero repellendus deleniti voluptatem animi nesciunt est in nobis et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Deserunt ab et sunt voluptas quod dolor tempore esse ut.', u.id, TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Deserunt ab et sunt voluptas quod dolor tempore esse ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aspernatur veniam atque ipsum eius.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aspernatur veniam atque ipsum eius.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Cumque occaecati vero sint laboriosam rerum molestiae qui asperiores ex.', u.id, TIMESTAMPADD(YEAR, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cumque occaecati vero sint laboriosam rerum molestiae qui asperiores ex.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Delectus quia et atque cumque perferendis aliquid et aliquid.', u.id, TIMESTAMPADD(MINUTE, -47, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Delectus quia et atque cumque perferendis aliquid et aliquid.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eos exercitationem voluptas autem odit vero ducimus inventore aliquid dolor.', u.id, TIMESTAMPADD(MONTH, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eos exercitationem voluptas autem odit vero ducimus inventore aliquid dolor.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ex eveniet consequatur vel dolor.', u.id, TIMESTAMPADD(YEAR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ex eveniet consequatur vel dolor.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ipsam ipsum non labore quis sit et dolor.', u.id, TIMESTAMPADD(DAY, -23, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ipsam ipsum non labore quis sit et dolor.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Facere earum quia alias maxime est asperiores cum sed.', u.id, TIMESTAMPADD(MINUTE, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facere earum quia alias maxime est asperiores cum sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aperiam dignissimos distinctio odit excepturi quaerat.', u.id, TIMESTAMPADD(YEAR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aperiam dignissimos distinctio odit excepturi quaerat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae ducimus atque ducimus et et deserunt vel libero reiciendis.', u.id, TIMESTAMPADD(MINUTE, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae ducimus atque ducimus et et deserunt vel libero reiciendis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quidem occaecati et quis est quod.', u.id, TIMESTAMPADD(DAY, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quidem occaecati et quis est quod.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ipsum architecto minima necessitatibus reiciendis ea quia aut.', u.id, TIMESTAMPADD(YEAR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ipsum architecto minima necessitatibus reiciendis ea quia aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Non quia nulla omnis maiores ipsa.', u.id, TIMESTAMPADD(SECOND, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non quia nulla omnis maiores ipsa.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae aut harum molestiae vel veniam quasi.', u.id, TIMESTAMPADD(SECOND, -58, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae aut harum molestiae vel veniam quasi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aspernatur repudiandae ea dolores doloribus ut a et tenetur.', u.id, TIMESTAMPADD(DAY, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aspernatur repudiandae ea dolores doloribus ut a et tenetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quibusdam officiis dolorem id rerum enim illo vitae.', u.id, TIMESTAMPADD(MONTH, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quibusdam officiis dolorem id rerum enim illo vitae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Mollitia in est sit ducimus.', u.id, TIMESTAMPADD(DAY, -25, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Mollitia in est sit ducimus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Fugiat dolore assumenda sint voluptatem laboriosam vel quia voluptates.', u.id, TIMESTAMPADD(MINUTE, -57, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fugiat dolore assumenda sint voluptatem laboriosam vel quia voluptates.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Animi possimus fugit sequi provident quibusdam quo aliquid.', u.id, TIMESTAMPADD(HOUR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi possimus fugit sequi provident quibusdam quo aliquid.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut laudantium modi tempore quidem tempora voluptatem.', u.id, TIMESTAMPADD(SECOND, -57, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut laudantium modi tempore quidem tempora voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Similique quis ut soluta est et.', u.id, TIMESTAMPADD(DAY, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Similique quis ut soluta est et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Temporibus omnis expedita omnis illo facere quis molestias autem quis.', u.id, TIMESTAMPADD(MINUTE, -26, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Temporibus omnis expedita omnis illo facere quis molestias autem quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Recusandae facere exercitationem cum et voluptas placeat quibusdam quia.', u.id, TIMESTAMPADD(HOUR, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Recusandae facere exercitationem cum et voluptas placeat quibusdam quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nam impedit saepe laudantium mollitia laudantium.', u.id, TIMESTAMPADD(YEAR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nam impedit saepe laudantium mollitia laudantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Amet commodi quibusdam voluptatem voluptatibus soluta ut consequuntur iste illo.', u.id, TIMESTAMPADD(DAY, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Amet commodi quibusdam voluptatem voluptatibus soluta ut consequuntur iste illo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut quos et accusamus et ex illo.', u.id, TIMESTAMPADD(SECOND, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut quos et accusamus et ex illo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Commodi et odio a fuga minima non.', u.id, TIMESTAMPADD(SECOND, -45, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Commodi et odio a fuga minima non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Perspiciatis recusandae rerum ipsum odio.', u.id, TIMESTAMPADD(HOUR, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Perspiciatis recusandae rerum ipsum odio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Saepe excepturi error eligendi quia est.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Saepe excepturi error eligendi quia est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quia nam quis velit enim est voluptatem.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia nam quis velit enim est voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ipsam eaque velit et dolorem ea nihil et temporibus rerum.', u.id, TIMESTAMPADD(YEAR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ipsam eaque velit et dolorem ea nihil et temporibus rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'A animi sit magnam non.', u.id, TIMESTAMPADD(HOUR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='A animi sit magnam non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Vel ea ratione quam libero.', u.id, TIMESTAMPADD(HOUR, -20, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vel ea ratione quam libero.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Enim a eos doloribus similique.', u.id, TIMESTAMPADD(HOUR, -14, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Enim a eos doloribus similique.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quam nihil aut magnam voluptatum.', u.id, TIMESTAMPADD(MINUTE, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quam nihil aut magnam voluptatum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Vitae et aliquam optio maxime rem dignissimos aut perferendis ut.', u.id, TIMESTAMPADD(SECOND, -59, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vitae et aliquam optio maxime rem dignissimos aut perferendis ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Qui ut amet et voluptatem dignissimos reprehenderit laborum.', u.id, TIMESTAMPADD(YEAR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui ut amet et voluptatem dignissimos reprehenderit laborum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Omnis et ut velit quia rerum eligendi voluptate facilis repellat.', u.id, TIMESTAMPADD(HOUR, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Omnis et ut velit quia rerum eligendi voluptate facilis repellat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Qui eos est consequatur veniam voluptas est quis.', u.id, TIMESTAMPADD(SECOND, -55, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui eos est consequatur veniam voluptas est quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Fuga beatae magnam quam tenetur sint in nostrum et optio.', u.id, TIMESTAMPADD(HOUR, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fuga beatae magnam quam tenetur sint in nostrum et optio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Autem eaque aliquam et repudiandae voluptatem sint.', u.id, TIMESTAMPADD(MONTH, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Autem eaque aliquam et repudiandae voluptatem sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ut vitae atque minima eum.', u.id, TIMESTAMPADD(MINUTE, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut vitae atque minima eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptatem odio minus ad hic facere tenetur.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem odio minus ad hic facere tenetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Accusantium omnis incidunt sed omnis error aliquam.', u.id, TIMESTAMPADD(HOUR, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Accusantium omnis incidunt sed omnis error aliquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Blanditiis doloribus id expedita modi odit.', u.id, TIMESTAMPADD(MONTH, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Blanditiis doloribus id expedita modi odit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Excepturi soluta praesentium saepe ex qui.', u.id, TIMESTAMPADD(DAY, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Excepturi soluta praesentium saepe ex qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorem omnis ut quia odit accusamus esse eum.', u.id, TIMESTAMPADD(HOUR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem omnis ut quia odit accusamus esse eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dicta temporibus necessitatibus sequi reiciendis quia cum aut tempore.', u.id, TIMESTAMPADD(SECOND, -52, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dicta temporibus necessitatibus sequi reiciendis quia cum aut tempore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Non rerum rerum non in expedita suscipit.', u.id, TIMESTAMPADD(DAY, -20, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non rerum rerum non in expedita suscipit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Explicabo ratione laboriosam qui sit adipisci.', u.id, TIMESTAMPADD(YEAR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Explicabo ratione laboriosam qui sit adipisci.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dicta sapiente omnis quia est.', u.id, TIMESTAMPADD(HOUR, -22, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dicta sapiente omnis quia est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Odio sed delectus atque vero.', u.id, TIMESTAMPADD(MINUTE, -51, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Odio sed delectus atque vero.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quia optio voluptate numquam nam.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia optio voluptate numquam nam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ducimus alias minus impedit sit dolorum illo impedit.', u.id, TIMESTAMPADD(MINUTE, -55, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ducimus alias minus impedit sit dolorum illo impedit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et odio ducimus optio cupiditate cumque praesentium.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et odio ducimus optio cupiditate cumque praesentium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Provident officiis mollitia cupiditate modi minus odio.', u.id, TIMESTAMPADD(DAY, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Provident officiis mollitia cupiditate modi minus odio.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Iusto dolor fugit recusandae molestiae praesentium.', u.id, TIMESTAMPADD(MINUTE, -43, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iusto dolor fugit recusandae molestiae praesentium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestias modi sed sapiente numquam ipsum vitae quidem accusantium dolor.', u.id, TIMESTAMPADD(HOUR, -23, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestias modi sed sapiente numquam ipsum vitae quidem accusantium dolor.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eius laborum architecto facilis et.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eius laborum architecto facilis et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Non ut veniam velit quo molestiae ipsum optio non iusto.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non ut veniam velit quo molestiae ipsum optio non iusto.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Autem praesentium vel est est.', u.id, TIMESTAMPADD(SECOND, -28, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Autem praesentium vel est est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ut qui laudantium qui rerum nihil ipsam ut.', u.id, TIMESTAMPADD(SECOND, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut qui laudantium qui rerum nihil ipsam ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sit doloremque fuga veritatis ut at ut corrupti ut.', u.id, TIMESTAMPADD(SECOND, -34, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sit doloremque fuga veritatis ut at ut corrupti ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et et voluptatem animi qui molestias sapiente vitae sunt corporis.', u.id, TIMESTAMPADD(MONTH, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et et voluptatem animi qui molestias sapiente vitae sunt corporis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Veritatis iusto eaque et eos fuga rem consequatur incidunt cupiditate.', u.id, TIMESTAMPADD(MINUTE, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Veritatis iusto eaque et eos fuga rem consequatur incidunt cupiditate.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Maiores est voluptatem quis est voluptatem.', u.id, TIMESTAMPADD(HOUR, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Maiores est voluptatem quis est voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptate dolores et quia omnis autem consequuntur et.', u.id, TIMESTAMPADD(YEAR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptate dolores et quia omnis autem consequuntur et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Est exercitationem recusandae vitae omnis.', u.id, TIMESTAMPADD(MINUTE, -24, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est exercitationem recusandae vitae omnis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Officia aut accusamus ab quia est et.', u.id, TIMESTAMPADD(SECOND, -22, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Officia aut accusamus ab quia est et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Soluta officia quas reiciendis et.', u.id, TIMESTAMPADD(MINUTE, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Soluta officia quas reiciendis et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nobis odio veritatis quidem fugit.', u.id, TIMESTAMPADD(DAY, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nobis odio veritatis quidem fugit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ex quam sint eos aut adipisci consequuntur.', u.id, TIMESTAMPADD(SECOND, -45, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ex quam sint eos aut adipisci consequuntur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quas doloremque id cum animi et.', u.id, TIMESTAMPADD(HOUR, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quas doloremque id cum animi et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Excepturi laboriosam voluptas quos ea vitae libero ipsam.', u.id, TIMESTAMPADD(HOUR, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Excepturi laboriosam voluptas quos ea vitae libero ipsam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Impedit quod et pariatur voluptas a est.', u.id, TIMESTAMPADD(SECOND, -54, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Impedit quod et pariatur voluptas a est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Accusamus eos ratione atque error quas suscipit ab autem.', u.id, TIMESTAMPADD(MINUTE, -46, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Accusamus eos ratione atque error quas suscipit ab autem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nesciunt odio possimus sint assumenda soluta eum iste.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nesciunt odio possimus sint assumenda soluta eum iste.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Inventore debitis harum animi voluptatem.', u.id, TIMESTAMPADD(SECOND, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Inventore debitis harum animi voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Enim ut mollitia itaque recusandae iure consequuntur molestias.', u.id, TIMESTAMPADD(MINUTE, -35, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Enim ut mollitia itaque recusandae iure consequuntur molestias.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Praesentium iure et porro vel.', u.id, TIMESTAMPADD(SECOND, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Praesentium iure et porro vel.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Laudantium harum nam non recusandae asperiores.', u.id, TIMESTAMPADD(MINUTE, -28, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laudantium harum nam non recusandae asperiores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Commodi est sapiente doloremque debitis sequi.', u.id, TIMESTAMPADD(SECOND, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Commodi est sapiente doloremque debitis sequi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Totam laborum et aspernatur est.', u.id, TIMESTAMPADD(DAY, -24, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Totam laborum et aspernatur est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sed quasi occaecati voluptas fuga ut officia esse.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sed quasi occaecati voluptas fuga ut officia esse.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Hic quae perferendis deleniti omnis repellendus quasi.', u.id, TIMESTAMPADD(SECOND, -33, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Hic quae perferendis deleniti omnis repellendus quasi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Fuga dolorum odit qui rerum officiis eius magnam sapiente animi.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fuga dolorum odit qui rerum officiis eius magnam sapiente animi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Corrupti nostrum quam aliquam fuga et.', u.id, TIMESTAMPADD(HOUR, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Corrupti nostrum quam aliquam fuga et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Deleniti rerum magni ullam qui qui sint est.', u.id, TIMESTAMPADD(MINUTE, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Deleniti rerum magni ullam qui qui sint est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Omnis necessitatibus eos et sed commodi fugit.', u.id, TIMESTAMPADD(MONTH, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Omnis necessitatibus eos et sed commodi fugit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Praesentium est delectus et ut sapiente optio inventore.', u.id, TIMESTAMPADD(HOUR, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Praesentium est delectus et ut sapiente optio inventore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Consequuntur quis aut quibusdam ratione sunt occaecati qui beatae non.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Consequuntur quis aut quibusdam ratione sunt occaecati qui beatae non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Repellendus dolores laboriosam vel necessitatibus rerum ex sed.', u.id, TIMESTAMPADD(DAY, -18, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repellendus dolores laboriosam vel necessitatibus rerum ex sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Corrupti voluptates accusamus est velit consectetur.', u.id, TIMESTAMPADD(HOUR, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Corrupti voluptates accusamus est velit consectetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Neque deleniti et voluptatem earum tenetur et quis.', u.id, TIMESTAMPADD(HOUR, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Neque deleniti et voluptatem earum tenetur et quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Porro dolores sint maxime cum voluptas culpa.', u.id, TIMESTAMPADD(HOUR, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Porro dolores sint maxime cum voluptas culpa.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Deserunt mollitia rerum consectetur reiciendis eos autem dolor alias.', u.id, TIMESTAMPADD(MINUTE, -36, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Deserunt mollitia rerum consectetur reiciendis eos autem dolor alias.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aliquam minima et quam consectetur aut.', u.id, TIMESTAMPADD(HOUR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aliquam minima et quam consectetur aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Minima temporibus occaecati ad non possimus expedita.', u.id, TIMESTAMPADD(YEAR, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Minima temporibus occaecati ad non possimus expedita.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quo magnam et reprehenderit ut qui quod cum mollitia.', u.id, TIMESTAMPADD(SECOND, -25, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quo magnam et reprehenderit ut qui quod cum mollitia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Suscipit dolores nisi nemo et ut vero.', u.id, TIMESTAMPADD(DAY, -13, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Suscipit dolores nisi nemo et ut vero.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Non delectus optio velit quae ratione repudiandae quo.', u.id, TIMESTAMPADD(MONTH, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Non delectus optio velit quae ratione repudiandae quo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Animi sed repellat autem ut et nesciunt at iure.', u.id, TIMESTAMPADD(HOUR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi sed repellat autem ut et nesciunt at iure.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eos minima labore provident aspernatur aut at.', u.id, TIMESTAMPADD(HOUR, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eos minima labore provident aspernatur aut at.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Iusto totam ut sunt fugit natus quo optio hic.', u.id, TIMESTAMPADD(DAY, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iusto totam ut sunt fugit natus quo optio hic.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Labore beatae occaecati qui non maiores dolores ut et.', u.id, TIMESTAMPADD(DAY, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Labore beatae occaecati qui non maiores dolores ut et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nihil veritatis vitae cumque maxime.', u.id, TIMESTAMPADD(DAY, -29, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil veritatis vitae cumque maxime.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et numquam sunt natus ut accusamus possimus voluptatem.', u.id, TIMESTAMPADD(HOUR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et numquam sunt natus ut accusamus possimus voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Distinctio nobis consequuntur ipsa ipsa excepturi qui veniam nihil labore.', u.id, TIMESTAMPADD(SECOND, -14, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Distinctio nobis consequuntur ipsa ipsa excepturi qui veniam nihil labore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Placeat facere ea voluptatibus nobis consequatur animi nobis cupiditate.', u.id, TIMESTAMPADD(DAY, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Placeat facere ea voluptatibus nobis consequatur animi nobis cupiditate.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptas illum amet in dignissimos odio consequatur nulla qui reprehenderit.', u.id, TIMESTAMPADD(SECOND, -54, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas illum amet in dignissimos odio consequatur nulla qui reprehenderit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Error illum similique corrupti non quia placeat.', u.id, TIMESTAMPADD(SECOND, -47, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Error illum similique corrupti non quia placeat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Vel natus vel ut modi enim saepe.', u.id, TIMESTAMPADD(DAY, -23, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vel natus vel ut modi enim saepe.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Omnis autem voluptate nesciunt ea tempora assumenda at.', u.id, TIMESTAMPADD(SECOND, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Omnis autem voluptate nesciunt ea tempora assumenda at.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolore magni rem et quia totam.', u.id, TIMESTAMPADD(SECOND, -25, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolore magni rem et quia totam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Vel est repudiandae ut ipsa.', u.id, TIMESTAMPADD(DAY, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Vel est repudiandae ut ipsa.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quaerat tempore corrupti ipsa aut ut est.', u.id, TIMESTAMPADD(HOUR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quaerat tempore corrupti ipsa aut ut est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eveniet sit dolores nam nihil nemo eveniet architecto corporis dolor.', u.id, TIMESTAMPADD(SECOND, -31, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eveniet sit dolores nam nihil nemo eveniet architecto corporis dolor.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Reprehenderit vitae beatae consequatur molestias quia voluptatem voluptas voluptatem commodi.', u.id, TIMESTAMPADD(DAY, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reprehenderit vitae beatae consequatur molestias quia voluptatem voluptas voluptatem commodi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Doloribus aut maxime nihil velit et deleniti.', u.id, TIMESTAMPADD(DAY, -18, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Doloribus aut maxime nihil velit et deleniti.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Soluta laboriosam mollitia sunt tenetur possimus sequi eius qui.', u.id, TIMESTAMPADD(SECOND, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Soluta laboriosam mollitia sunt tenetur possimus sequi eius qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Perspiciatis nobis impedit optio libero natus consequatur doloribus non.', u.id, TIMESTAMPADD(MONTH, -5, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Perspiciatis nobis impedit optio libero natus consequatur doloribus non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et ea fuga non qui debitis.', u.id, TIMESTAMPADD(MONTH, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et ea fuga non qui debitis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Laudantium dolor quia possimus voluptas quaerat dicta quis suscipit eum.', u.id, TIMESTAMPADD(HOUR, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laudantium dolor quia possimus voluptas quaerat dicta quis suscipit eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quaerat quidem sed fugiat dolor eligendi.', u.id, TIMESTAMPADD(HOUR, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quaerat quidem sed fugiat dolor eligendi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Animi omnis id at consequatur.', u.id, TIMESTAMPADD(MINUTE, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Animi omnis id at consequatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Magni sit quibusdam molestias assumenda quidem eveniet ea.', u.id, TIMESTAMPADD(MONTH, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Magni sit quibusdam molestias assumenda quidem eveniet ea.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quia modi quia libero nihil nulla.', u.id, TIMESTAMPADD(SECOND, -38, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia modi quia libero nihil nulla.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut maiores omnis alias in inventore.', u.id, TIMESTAMPADD(DAY, -22, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut maiores omnis alias in inventore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Illum fugiat excepturi est et.', u.id, TIMESTAMPADD(HOUR, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Illum fugiat excepturi est et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Laboriosam aperiam voluptate explicabo voluptates dignissimos occaecati necessitatibus veritatis.', u.id, TIMESTAMPADD(MINUTE, -54, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laboriosam aperiam voluptate explicabo voluptates dignissimos occaecati necessitatibus veritatis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Recusandae esse est debitis earum mollitia consequatur quod et.', u.id, TIMESTAMPADD(HOUR, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Recusandae esse est debitis earum mollitia consequatur quod et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Qui veritatis omnis aut fugiat voluptate aut.', u.id, TIMESTAMPADD(DAY, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui veritatis omnis aut fugiat voluptate aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Est et nemo quidem at nobis.', u.id, TIMESTAMPADD(SECOND, -39, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Est et nemo quidem at nobis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut suscipit voluptas molestiae quidem.', u.id, TIMESTAMPADD(SECOND, -36, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut suscipit voluptas molestiae quidem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Magnam occaecati aut aperiam sed qui tempora.', u.id, TIMESTAMPADD(SECOND, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Magnam occaecati aut aperiam sed qui tempora.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Odit aspernatur aut eaque sed distinctio iure.', u.id, TIMESTAMPADD(HOUR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Odit aspernatur aut eaque sed distinctio iure.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Corporis ipsa aut quia dignissimos reiciendis rerum error.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Corporis ipsa aut quia dignissimos reiciendis rerum error.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Nihil dolorem quibusdam suscipit ut rerum.', u.id, TIMESTAMPADD(MONTH, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Nihil dolorem quibusdam suscipit ut rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quidem id deserunt maxime sed enim dicta consequatur praesentium qui.', u.id, TIMESTAMPADD(MONTH, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quidem id deserunt maxime sed enim dicta consequatur praesentium qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Adipisci consequuntur nobis atque sint assumenda omnis sed dolor asperiores.', u.id, TIMESTAMPADD(YEAR, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Adipisci consequuntur nobis atque sint assumenda omnis sed dolor asperiores.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptas sed harum maiores optio optio dolore.', u.id, TIMESTAMPADD(SECOND, -18, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas sed harum maiores optio optio dolore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Suscipit eius ad ut ab eligendi voluptatem.', u.id, TIMESTAMPADD(DAY, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Suscipit eius ad ut ab eligendi voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et non laborum reprehenderit voluptas velit molestiae quia.', u.id, TIMESTAMPADD(HOUR, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et non laborum reprehenderit voluptas velit molestiae quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sit omnis eveniet est est autem quis.', u.id, TIMESTAMPADD(SECOND, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sit omnis eveniet est est autem quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Omnis animi et ut fugit animi delectus illo.', u.id, TIMESTAMPADD(DAY, -19, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Omnis animi et ut fugit animi delectus illo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut a totam aut accusamus dolor inventore omnis impedit.', u.id, TIMESTAMPADD(DAY, -25, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut a totam aut accusamus dolor inventore omnis impedit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Deleniti enim unde et eveniet non rerum.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Deleniti enim unde et eveniet non rerum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'A qui ut quia aut quo facere.', u.id, TIMESTAMPADD(MONTH, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='A qui ut quia aut quo facere.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Error iure iusto dolor eum et est.', u.id, TIMESTAMPADD(DAY, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Error iure iusto dolor eum et est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Cupiditate odit officia nihil eveniet voluptatem.', u.id, TIMESTAMPADD(DAY, -14, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cupiditate odit officia nihil eveniet voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ea est aut veritatis aut repellat.', u.id, TIMESTAMPADD(SECOND, -15, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ea est aut veritatis aut repellat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et enim quia saepe sed est eos et.', u.id, TIMESTAMPADD(HOUR, -14, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et enim quia saepe sed est eos et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Reiciendis laborum et dolores autem deserunt dolores rem.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Reiciendis laborum et dolores autem deserunt dolores rem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Repellendus amet labore asperiores nemo et consectetur mollitia.', u.id, TIMESTAMPADD(SECOND, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repellendus amet labore asperiores nemo et consectetur mollitia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptatem ducimus sed cum veniam repellat est.', u.id, TIMESTAMPADD(MINUTE, -45, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem ducimus sed cum veniam repellat est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Perspiciatis eos accusamus nulla molestias cupiditate eos.', u.id, TIMESTAMPADD(HOUR, -13, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Perspiciatis eos accusamus nulla molestias cupiditate eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Porro ea voluptates ut qui esse.', u.id, TIMESTAMPADD(DAY, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Porro ea voluptates ut qui esse.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Odio sint maxime rerum corrupti reiciendis omnis quis possimus.', u.id, TIMESTAMPADD(SECOND, -31, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Odio sint maxime rerum corrupti reiciendis omnis quis possimus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Laboriosam dolorum explicabo quo officia aut iure.', u.id, TIMESTAMPADD(SECOND, -25, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laboriosam dolorum explicabo quo officia aut iure.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Accusantium impedit quia quidem beatae laborum ut esse voluptas.', u.id, TIMESTAMPADD(HOUR, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Accusantium impedit quia quidem beatae laborum ut esse voluptas.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptate consectetur eum veritatis amet deleniti qui.', u.id, TIMESTAMPADD(HOUR, -12, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptate consectetur eum veritatis amet deleniti qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Qui et doloribus a necessitatibus sed qui quos laborum aut.', u.id, TIMESTAMPADD(DAY, -13, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Qui et doloribus a necessitatibus sed qui quos laborum aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Necessitatibus quis impedit facilis et id non eaque esse quia.', u.id, TIMESTAMPADD(MINUTE, -24, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Necessitatibus quis impedit facilis et id non eaque esse quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolores tenetur odit similique totam illo eos aut illum aut.', u.id, TIMESTAMPADD(HOUR, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolores tenetur odit similique totam illo eos aut illum aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ea excepturi fugit nesciunt quos.', u.id, TIMESTAMPADD(HOUR, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ea excepturi fugit nesciunt quos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptas et similique nihil voluptas consequatur consequatur ea.', u.id, TIMESTAMPADD(SECOND, -40, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas et similique nihil voluptas consequatur consequatur ea.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Facere sit soluta perspiciatis voluptas minima perspiciatis nihil.', u.id, TIMESTAMPADD(MINUTE, -46, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facere sit soluta perspiciatis voluptas minima perspiciatis nihil.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et et deleniti aut eos officiis velit ullam quia.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et et deleniti aut eos officiis velit ullam quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut qui dolores soluta ipsa nemo provident enim possimus.', u.id, TIMESTAMPADD(DAY, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut qui dolores soluta ipsa nemo provident enim possimus.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Iure optio enim debitis qui dignissimos aut labore ullam.', u.id, TIMESTAMPADD(MINUTE, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Iure optio enim debitis qui dignissimos aut labore ullam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Commodi totam id quos et nihil non hic.', u.id, TIMESTAMPADD(SECOND, -35, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Commodi totam id quos et nihil non hic.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorem perspiciatis repellat nulla molestiae vitae.', u.id, TIMESTAMPADD(HOUR, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem perspiciatis repellat nulla molestiae vitae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et quam quos commodi sunt.', u.id, TIMESTAMPADD(YEAR, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et quam quos commodi sunt.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Assumenda voluptatibus in doloribus dolorem amet porro qui numquam.', u.id, TIMESTAMPADD(HOUR, -18, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Assumenda voluptatibus in doloribus dolorem amet porro qui numquam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Rerum similique et excepturi error vitae laboriosam unde quam.', u.id, TIMESTAMPADD(MONTH, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Rerum similique et excepturi error vitae laboriosam unde quam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptatem sed corrupti et corporis et recusandae nihil ipsa.', u.id, TIMESTAMPADD(SECOND, -51, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem sed corrupti et corporis et recusandae nihil ipsa.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dignissimos dignissimos placeat minima deserunt.', u.id, TIMESTAMPADD(SECOND, -33, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dignissimos dignissimos placeat minima deserunt.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Tenetur et inventore laboriosam saepe fugit mollitia dolorem nostrum.', u.id, TIMESTAMPADD(SECOND, -35, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Tenetur et inventore laboriosam saepe fugit mollitia dolorem nostrum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Officiis aut alias voluptatem velit eum.', u.id, TIMESTAMPADD(SECOND, -32, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Officiis aut alias voluptatem velit eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Explicabo beatae ipsam a rerum ea inventore.', u.id, TIMESTAMPADD(MONTH, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Explicabo beatae ipsam a rerum ea inventore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sint a consequatur itaque doloremque dignissimos aliquid.', u.id, TIMESTAMPADD(HOUR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sint a consequatur itaque doloremque dignissimos aliquid.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Provident fuga odit aperiam dolorem consectetur.', u.id, TIMESTAMPADD(HOUR, -20, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Provident fuga odit aperiam dolorem consectetur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et aut est ut modi dolorem.', u.id, TIMESTAMPADD(YEAR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et aut est ut modi dolorem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quia id voluptatem quos aspernatur facere vel qui dolores soluta.', u.id, TIMESTAMPADD(SECOND, -47, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia id voluptatem quos aspernatur facere vel qui dolores soluta.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Architecto architecto nihil et voluptas sequi minima vero.', u.id, TIMESTAMPADD(DAY, -22, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Architecto architecto nihil et voluptas sequi minima vero.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Odit et ut rem quasi odio rerum molestiae nisi eaque.', u.id, TIMESTAMPADD(MINUTE, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Odit et ut rem quasi odio rerum molestiae nisi eaque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae dolor a corrupti sint.', u.id, TIMESTAMPADD(SECOND, -41, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae dolor a corrupti sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dicta ullam voluptas dolore dolor accusamus eaque aut nisi.', u.id, TIMESTAMPADD(HOUR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dicta ullam voluptas dolore dolor accusamus eaque aut nisi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Maxime sit alias voluptatem praesentium dignissimos.', u.id, TIMESTAMPADD(DAY, -13, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Maxime sit alias voluptatem praesentium dignissimos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ullam in corporis repellat adipisci.', u.id, TIMESTAMPADD(MONTH, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ullam in corporis repellat adipisci.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et et recusandae asperiores dolorem.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et et recusandae asperiores dolorem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sunt impedit aut reprehenderit tempora.', u.id, TIMESTAMPADD(MINUTE, -38, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sunt impedit aut reprehenderit tempora.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quisquam dolorem non ullam asperiores deserunt laboriosam.', u.id, TIMESTAMPADD(SECOND, -56, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quisquam dolorem non ullam asperiores deserunt laboriosam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Possimus illo sunt id deserunt qui.', u.id, TIMESTAMPADD(SECOND, -45, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Possimus illo sunt id deserunt qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolore vel blanditiis nostrum sequi.', u.id, TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolore vel blanditiis nostrum sequi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Enim necessitatibus odit quia et animi itaque tempora eos.', u.id, TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Enim necessitatibus odit quia et animi itaque tempora eos.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et temporibus dicta laudantium labore.', u.id, TIMESTAMPADD(SECOND, -45, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et temporibus dicta laudantium labore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eligendi animi illum voluptatem illum et magnam quibusdam nobis quis.', u.id, TIMESTAMPADD(DAY, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eligendi animi illum voluptatem illum et magnam quibusdam nobis quis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Id reiciendis commodi dolorem consectetur non minus non iure dolore.', u.id, TIMESTAMPADD(SECOND, -58, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id reiciendis commodi dolorem consectetur non minus non iure dolore.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptas et facere aliquam ducimus ratione.', u.id, TIMESTAMPADD(HOUR, -8, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptas et facere aliquam ducimus ratione.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ut et placeat eligendi asperiores quia eligendi.', u.id, TIMESTAMPADD(DAY, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ut et placeat eligendi asperiores quia eligendi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Placeat voluptate est ex ut quod ut.', u.id, TIMESTAMPADD(DAY, -14, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Placeat voluptate est ex ut quod ut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorem magni rerum totam est.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem magni rerum totam est.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Id autem quia asperiores suscipit omnis aliquid occaecati.', u.id, TIMESTAMPADD(YEAR, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id autem quia asperiores suscipit omnis aliquid occaecati.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Omnis maiores architecto rerum est soluta.', u.id, TIMESTAMPADD(YEAR, -5, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Omnis maiores architecto rerum est soluta.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dolorem quo tenetur quo perferendis.', u.id, TIMESTAMPADD(SECOND, -51, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dolorem quo tenetur quo perferendis.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestias excepturi molestiae sequi incidunt ab.', u.id, TIMESTAMPADD(SECOND, -32, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestias excepturi molestiae sequi incidunt ab.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aliquid cumque perspiciatis sit vero nisi qui et.', u.id, TIMESTAMPADD(HOUR, -14, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aliquid cumque perspiciatis sit vero nisi qui et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Cupiditate quam nisi cupiditate laborum.', u.id, TIMESTAMPADD(MINUTE, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Cupiditate quam nisi cupiditate laborum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Suscipit ad omnis non similique qui debitis officia odio qui.', u.id, TIMESTAMPADD(MINUTE, -17, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Suscipit ad omnis non similique qui debitis officia odio qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Repudiandae odio amet ut commodi.', u.id, TIMESTAMPADD(HOUR, -20, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Repudiandae odio amet ut commodi.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestias et ab sint nostrum consequuntur perferendis voluptatem.', u.id, TIMESTAMPADD(SECOND, -50, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestias et ab sint nostrum consequuntur perferendis voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aut minus qui necessitatibus provident sed doloribus aliquam et.', u.id, TIMESTAMPADD(HOUR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aut minus qui necessitatibus provident sed doloribus aliquam et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Aspernatur debitis saepe qui dolorem in qui dolore repellendus occaecati.', u.id, TIMESTAMPADD(MONTH, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Aspernatur debitis saepe qui dolorem in qui dolore repellendus occaecati.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et iste libero ipsum aliquam veniam.', u.id, TIMESTAMPADD(MONTH, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et iste libero ipsum aliquam veniam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Excepturi molestias quia aut est sit consequatur eius odit.', u.id, TIMESTAMPADD(MONTH, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Excepturi molestias quia aut est sit consequatur eius odit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quia incidunt perspiciatis aperiam dolorem est quaerat adipisci autem sed.', u.id, TIMESTAMPADD(SECOND, -54, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia incidunt perspiciatis aperiam dolorem est quaerat adipisci autem sed.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Provident ut dolore occaecati facere in fugiat.', u.id, TIMESTAMPADD(HOUR, -21, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-1@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Provident ut dolore occaecati facere in fugiat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Id recusandae esse ut error blanditiis occaecati.', u.id, TIMESTAMPADD(MONTH, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-2@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id recusandae esse ut error blanditiis occaecati.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Id sequi quo eos sunt dolores error et.', u.id, TIMESTAMPADD(SECOND, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-3@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Id sequi quo eos sunt dolores error et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Velit quia voluptatem architecto blanditiis magni et nihil.', u.id, TIMESTAMPADD(YEAR, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-4@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Velit quia voluptatem architecto blanditiis magni et nihil.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Facilis a molestiae et repudiandae ea et adipisci.', u.id, TIMESTAMPADD(MINUTE, -36, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='example-5@railstutorial.org'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Facilis a molestiae et repudiandae ea et adipisci.' AND "user_id"=u.id);
