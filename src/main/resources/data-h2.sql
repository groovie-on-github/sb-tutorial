INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Rails Tutorial', 'example@railstutorial.org',
    '$2a$10$vTMfKHlPfq/RLgHzgQd59.hKG63IPGDLj8oHLJdUtAj65nmflgm2O'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example@railstutorial.org');


INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Edmundo Predovic', 'example-1@railstutorial.org',
    '$2a$10$rgnbEiLKP9y.QChs1h.NHOjpVRcPRghM56GCmIeTwwBv/o8Zx6hX2'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-1@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Carmelina Vandervort', 'example-2@railstutorial.org',
    '$2a$10$8uVA2s3PR887WNCoaA6BZ.PSkhHEFVQNsm964YcZqKpXsS7/NxXZi'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-2@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dr. Brice Wehner', 'example-3@railstutorial.org',
    '$2a$10$ofblZvhyc6a4yRP7J38oQOCABDlDoQ4Gbz0Ouod5dN3e0Cm5vISaS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-3@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dana Baumbach', 'example-4@railstutorial.org',
    '$2a$10$leCf1qaBrQ/1sMal5fr.JuE9JQeGRtFgAWlKwWEik42zgLM3PPdOm'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-4@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Tomasa Rohan', 'example-5@railstutorial.org',
    '$2a$10$2iF3MZTwE0IezS/xaPH.vu8OLWJ3yP7LTnJeEbjYW/zMEh7e7DJ7W'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-5@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Lauri Smitham III', 'example-6@railstutorial.org',
    '$2a$10$ls4YnecveqKp57V8V5a4d.qpid/iNLwuOEQxXLhexpv4sFGtwZot.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-6@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Carson Kulas Jr.', 'example-7@railstutorial.org',
    '$2a$10$9QatQB4n0LZ0Iz7qS.5W7OQJgVCnXgR/DomrGSGlrD0P0Nl71YnkW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-7@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Shaquita Sporer', 'example-8@railstutorial.org',
    '$2a$10$KW1NdRh7tl16Gf4FMpypdOO5JzOBSkvO4oR2SJFMYct7wZLx6SCTW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-8@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mr. Lawerence Gorczany', 'example-9@railstutorial.org',
    '$2a$10$aGXRZwllhD2F5XsdbK4M4eabodD6osNuiEPsiDh2k6qdYy6sq2516'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-9@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Estrella Heaney', 'example-10@railstutorial.org',
    '$2a$10$eP2AL0CwLITfS2YrPKf77.nEmALta0l4MPzvVgzmXBLgnr.zL/pa6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-10@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Tyson Marquardt I', 'example-11@railstutorial.org',
    '$2a$10$vw6.G9c.r4/QYUyvn9rYCexcxUk1yzPiIru6ABK5.sRYOdaa/d0yG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-11@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Moses Stehr', 'example-12@railstutorial.org',
    '$2a$10$25ZEVv2.lYaN5ObVNbKd/u0YL76NCjWMx.FdI4LFr6QLEWLWgtHHG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-12@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Tom Grimes III', 'example-13@railstutorial.org',
    '$2a$10$GWngGApuNnov7KHFjPVUk.cD/Yy99FFnBBnEr26yWdbO2PPpbuEKu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-13@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Honey Boyer', 'example-14@railstutorial.org',
    '$2a$10$5xHDJz8M1T4z2IyQ0bcjF.XFzIeQwG4UcmZ99idgA1CQA2ycJuXNG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-14@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mr. Deloris Senger', 'example-15@railstutorial.org',
    '$2a$10$CNdgtOxLx7DFQMIBmvNFH.ZVJKBtQRcLJevqQ.GpJnlioIdUvCDSW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-15@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Jena Reynolds', 'example-16@railstutorial.org',
    '$2a$10$0md6VS1q7dZbAz6VEkshBeWNJFTt7mimWG4Nz2SLyU3qNTzi7iCC.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-16@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Maura Wiza', 'example-17@railstutorial.org',
    '$2a$10$CjgdC52VHoHA1YKRxK.6meHWGMxr0nyKYHvoab0ITt8fQNet/hqCC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-17@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Cleta Huels', 'example-18@railstutorial.org',
    '$2a$10$4PcA3zzsUEoG7GvxIUXnqufVcNznwcNFuj7WVe2SjbrEoVH2T02yK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-18@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Romaine Larson', 'example-19@railstutorial.org',
    '$2a$10$ZaZUO0GkXh6UnBxQeEOjN.cwxjE0qR0OBZmBp4CLeUmJNLUg75ztK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-19@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'David Kassulke DDS', 'example-20@railstutorial.org',
    '$2a$10$Hwz4C.lVjyo5bw1mXE.YT.8ZqKZeGTCPp.WwVZgj8QSlPavuy9Dcy'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-20@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Fernando Sauer', 'example-21@railstutorial.org',
    '$2a$10$rR9HL.THMzzc7EmyEb.OROp9Fm5BYz8CLRBGjnEAzup/rjJLyYbyK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-21@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Michal Moore', 'example-22@railstutorial.org',
    '$2a$10$1U8mrBIyXDFmZ3kdWnROfOddDik0IFDmZGkW5uU6y.137QQDGxghS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-22@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Aurora Jakubowski Sr.', 'example-23@railstutorial.org',
    '$2a$10$8U7L0caRoEYlQW1jcT9lueT82rwD9pIWDxZGP8wZxHEyfAMv695ny'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-23@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Frederic Crist', 'example-24@railstutorial.org',
    '$2a$10$P24CoZkyrbuIG7qtfFpTMuQSIbtnVCudq32w0vImVQCpu1v5NCWuu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-24@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Cliff Yost', 'example-25@railstutorial.org',
    '$2a$10$LinRDu7ykOEOI5n.Eee97epeKHFWUVq6qaJTNKSynAvtnge9Cj5O2'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-25@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Phylicia Farrell V', 'example-26@railstutorial.org',
    '$2a$10$F0AFOMJNpah61GmfkF32/.WCNbDjSHvlOBXDAZw0HauPIK2UVIMFC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-26@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Izetta Herzog', 'example-27@railstutorial.org',
    '$2a$10$NmTwJfL/uRgiQkSkuIFtWe0wcVhIAsmkxj9i1./Eb5/EcFzJzfRDO'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-27@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Daina Osinski', 'example-28@railstutorial.org',
    '$2a$10$8ZviitvZSZREuubxrE6Sc.yD9Lui7gB9zrZMFMLNPsJ/OxzAVjPam'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-28@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mrs. Junita Hammes', 'example-29@railstutorial.org',
    '$2a$10$7SgL8XsWgPZE3sfKWQPNaOLn6vYJr.kz7ER/N8K4.3dTeOxWzWmx.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-29@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Ms. Ariel Ebert', 'example-30@railstutorial.org',
    '$2a$10$9ZoPIzE39teJp4rnu1sL4OytkMUFiFv7/Zp5v4aChEb4ztulhW.ZG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-30@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Carlos Rice', 'example-31@railstutorial.org',
    '$2a$10$pYeKItolxCGEoZnYJTEkgu7nkCMzaIO90IzCFGU2B6J1JcrmHjaVu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-31@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Nena Nolan III', 'example-32@railstutorial.org',
    '$2a$10$BIKRol4bFUh.PnSx5vs/k.Vchc4irSDTxhDH7fCHKecVBPkGPqGpC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-32@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Pasty Shanahan', 'example-33@railstutorial.org',
    '$2a$10$xqWfUBKQxqkEWxYAjfWdAuDbynjUks4PDd8OB8iL8VoCWaC2eG.tO'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-33@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Cary Boyer', 'example-34@railstutorial.org',
    '$2a$10$Ru8U3B/CHsXZlIS3jy1psOCtmIk.mellLdg9zbSfLsZP25.4M99tW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-34@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Marcell Marvin', 'example-35@railstutorial.org',
    '$2a$10$0chWAKeE8lX81MuwozeaouKXWQvtzQSWAyU/yUcQdtR2m5dbwe2cu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-35@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Cornell Crooks', 'example-36@railstutorial.org',
    '$2a$10$yphU2LRG17UxyKI2wfIUP.kdoyaDpqOAyej1N1onUFDwbV8/X/tFK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-36@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Cheyenne Rowe', 'example-37@railstutorial.org',
    '$2a$10$ozcWsLoysieQOM2QpLSbd.6jrBzOyLQok0ORJdBjFHBmZc9afxduq'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-37@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Neida Carroll', 'example-38@railstutorial.org',
    '$2a$10$epqmrilbV8nOxb6MtmJzOuadZ1PPV.Dey/eJN2pZKk798cBaZP/Sa'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-38@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dr. Josphine Hessel', 'example-39@railstutorial.org',
    '$2a$10$scgb0z1cnGLOVOMua4KQLe430TMHSvo/vrbWQ1Gw2G8epFDXJ16xq'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-39@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Burt Langosh', 'example-40@railstutorial.org',
    '$2a$10$rNXapi3WX.kCgg6x5GPWL.udo2w3nZ5ABl6eCwBjGONCWrLrmijGK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-40@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mrs. Elroy Bechtelar', 'example-41@railstutorial.org',
    '$2a$10$OuMmCQVFjEkT51WikbQXEOuV6BhssQDZJsmZLjwSzSaK7ZziiMF3y'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-41@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dr. Emanuel Lehner', 'example-42@railstutorial.org',
    '$2a$10$GAGKUZON935ucy.E347Rn.9xO11giOWclhKcBu.9QbhfDvFizDsKG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-42@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Sherlyn Mosciski', 'example-43@railstutorial.org',
    '$2a$10$FBr0jif3SSn0dc0RoH3.ke37V2hBVL0CaJPXFqi.AmFNHko4HyQ4K'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-43@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mr. Wilmer Volkman', 'example-44@railstutorial.org',
    '$2a$10$1qqNi4gqpBhAZkwZPuafC.74mZuxs4z5kfJIEC8D/yp0gfg4GrBxy'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-44@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Yee Johns', 'example-45@railstutorial.org',
    '$2a$10$HzAyRmxgXeb3foEg6WJ15OvAzu8QAdeEJvMf/j4pUwfMThkyX9m5a'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-45@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Lauren Kuhic DVM', 'example-46@railstutorial.org',
    '$2a$10$DPSUAhy4RphsbM0QQ7JjB.2UJOz./SBj6y3vjXYOM6Ibzrn76E0kq'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-46@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Roscoe Bashirian I', 'example-47@railstutorial.org',
    '$2a$10$3DyxCSwjJUUfnYGrMqBE7.UFqFZALDt24AfX3BPmTXH.tYPE/0yaW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-47@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Donnell Wiza', 'example-48@railstutorial.org',
    '$2a$10$w7uTit1hRPjlUrWhirYPJO85C9Bc7AHnn3N11GBv54B7SoPiWGaQC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-48@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Edda Greenfelder DDS', 'example-49@railstutorial.org',
    '$2a$10$kgdZiEB5h/6vXxIltvj2L.uYN2tkjq/8DPQHFrIqCWaGBOQDqDwRe'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-49@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Jayson Keebler', 'example-50@railstutorial.org',
    '$2a$10$gFKLJ8AHaNYQ6gKCsEolzesCf1T/0DBZw6mN1m.mpOiAGVxjtkpLK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-50@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Miss Deloras Volkman', 'example-51@railstutorial.org',
    '$2a$10$8tyUBvh9LLx/xfXm2WQ5VuQW7zJZcszZLaQM2sTPfc4zA7nxvu9y.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-51@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Jarrett Ortiz', 'example-52@railstutorial.org',
    '$2a$10$qFf5/xPOhGJBNw9vt3WP.O8o6IYbdp9sPsG/LUQrMQauJuWuqi1h6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-52@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Jesica Legros', 'example-53@railstutorial.org',
    '$2a$10$v6DyK0uVoRxsX0ynpOkCk.4nRpbm19IHsVIEBNcf2Zhhn9LrUeZ3C'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-53@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Melia Koss', 'example-54@railstutorial.org',
    '$2a$10$I09PQ9AxzniWSHMbAHKKFu.7vEB8MG5WW8Cxm8khpPv42FT72EXTi'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-54@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Hosea Jakubowski III', 'example-55@railstutorial.org',
    '$2a$10$6DytmA0ZpMpqvgJSNWr8fe.t0VqAbsFv.6.gWg1.0HWhhfVn/k8gm'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-55@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Pamila Kuhic', 'example-56@railstutorial.org',
    '$2a$10$GW8ZPIjjcYydcsbQSJrmq.37gkU/FLL9SOgH/8FYrZKRi7peOnpm.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-56@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Gale Hartmann', 'example-57@railstutorial.org',
    '$2a$10$FObKX0QCPt2KBsZBhIybFuvUBlhk04Tm77xpbSNHzitrAqseckOm.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-57@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Chun Okuneva', 'example-58@railstutorial.org',
    '$2a$10$3g1kzQmZ/4w0ut7mTz2tDee/udFuUT2u85Qhwwwnl86Y1UMxewN1W'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-58@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Clarine Senger', 'example-59@railstutorial.org',
    '$2a$10$Lmh/IP90d43jtShP0hdtxuRib8HTwFZtvL2yHTe0lVG.NlMOmAQGW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-59@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Phuong Braun', 'example-60@railstutorial.org',
    '$2a$10$zeL3SC3nDH7vabZu0FDPF.LphX5z1q3xr6uvZpMJQ1nlPMvIE4N6u'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-60@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Yong Green', 'example-61@railstutorial.org',
    '$2a$10$2junPCkKsSq7QUX.EWNHvOuEbd7pZEVso9glbYqG8vQgsZxZA/v/K'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-61@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Ms. Reginald Reynolds', 'example-62@railstutorial.org',
    '$2a$10$dGPEm0NKtw05PCS7vGeIjOPXSPmu.C1F2li7Yzs2yaKmD.GHYptfe'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-62@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Chin Lakin', 'example-63@railstutorial.org',
    '$2a$10$hOJ1/sbVSwVgcrcpB8YRr.3cp71qEURXXeZRSePtcE9VNfyk6TkLu'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-63@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Normand Hahn DVM', 'example-64@railstutorial.org',
    '$2a$10$Obmbloyr94D0aN7oN3CpueV3IT2GRsbTl8S6V/pJppUAzh8fMgH9q'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-64@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Jerold Thompson', 'example-65@railstutorial.org',
    '$2a$10$0GO30FTDrt1KZ1hq2CR8r.IzEzmviGtwSZ98ldE.di98tzlGxlxti'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-65@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Erik Ondricka I', 'example-66@railstutorial.org',
    '$2a$10$3K1U3ZJeML4WjO0dDnh97./GvMrkca5ysD06uSW.WfOFVX.fUuBGq'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-66@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dani Bashirian', 'example-67@railstutorial.org',
    '$2a$10$imOFmgEYvYxC9p7BnXRyc.0U35IzeE2s2ZIVxh1BCKaobZDNfYYCC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-67@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Salvatore Collins', 'example-68@railstutorial.org',
    '$2a$10$3jVA3A9tGajKCe5KzIPiSuyhoEV6HJAGG1xGMwOzuqraIaVYUUE5m'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-68@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Tayna Baumbach', 'example-69@railstutorial.org',
    '$2a$10$IBXjCZM5tJ7QWOaMaDJwG.EQao/dIgpTO8q2ye/k6udHv.sP5QoBK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-69@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Fred Leffler', 'example-70@railstutorial.org',
    '$2a$10$OtdATIamheus812eKou1VOY5gckx8lda/50DWomYcjdBXIVo.aAGi'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-70@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Sheridan Fisher', 'example-71@railstutorial.org',
    '$2a$10$keRpjTqJSHOtJSEuVkNwgOKHunB6j/L0SdNxk5CvKfEgC19bO/jaS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-71@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Miss Bennie Hills', 'example-72@railstutorial.org',
    '$2a$10$16sTzqCI4kpGALriobW8ze2b7JordhaAzQUm0pt3TBaa5pRV.mIZC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-72@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Beata Romaguera DVM', 'example-73@railstutorial.org',
    '$2a$10$e2Hzwgkd35FZwh42/TcLb.CW3zpjbptp/t8YPDK3v6ze03h5Qe7A6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-73@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Penelope Watsica DVM', 'example-74@railstutorial.org',
    '$2a$10$yFpmszJU9vGL3jnbHmAkm.PS7xdBv4Mtndr0GZ8A3dDfzaXQQXesm'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-74@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mark Towne', 'example-75@railstutorial.org',
    '$2a$10$3o3sZssHMZpUrlvuzvTKbO4EJtW2Z4xR79aqrwsqVC3hSXnc/5IdC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-75@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Emmitt Kessler DDS', 'example-76@railstutorial.org',
    '$2a$10$pZX5veg1LuV4zo/h57hSP.LFhb1uiSYEQuzPJFrRQ8gMz/.xhX35e'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-76@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Maegan Conroy II', 'example-77@railstutorial.org',
    '$2a$10$OPbk0L4WgQWkV2A14UG4IOhMaAePvIINBZiGNrq.J9PggRHnMpqMy'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-77@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Ms. Quyen Berge', 'example-78@railstutorial.org',
    '$2a$10$qxhdXAYBCjlx0MGdxHJ83OQSrNX3VeIH5276sLcPd066YzN3g4wGm'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-78@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mathew Kautzer', 'example-79@railstutorial.org',
    '$2a$10$Jxu5pmTU6xc9K2iUE46LZe09t5c7LajbEB/fdxJkNQCjj.DxepEBa'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-79@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dwain Kling V', 'example-80@railstutorial.org',
    '$2a$10$tRMAGv94DYlT6u202Zn2kOuipdN473WWVRlsLnLlDz0rwe1fMtHXS'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-80@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mr. Emelia Boyer', 'example-81@railstutorial.org',
    '$2a$10$Zk4u0cj1/EdTYWqc7PXQKeZyGV9EMcc3igDFuQyb5FETCnikrDwQW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-81@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Noe Reynolds V', 'example-82@railstutorial.org',
    '$2a$10$UVusd2SjdjW2L6R2CUUS2u2kIbFEDFTvrE.4gBxS/tR9kDAlcriDG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-82@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Mr. Bobby Bartoletti', 'example-83@railstutorial.org',
    '$2a$10$KxVIFk7Z0Ar/FmA1eg1FHO1ehv7D.dq91cWD.1OwsFE65v/mJGkEC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-83@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dr. Geraldo Pagac', 'example-84@railstutorial.org',
    '$2a$10$a5EEyKv3ZtUA4cvNuVrVA.UoNEpHwJoENLMxcNuJvtQwKOc7Q7PWG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-84@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Allan Prohaska', 'example-85@railstutorial.org',
    '$2a$10$g9o63r9vdiYONts4Yqw3oOnalhSj56tXvPmFZ4JRnjUuNygAf3HI6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-85@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Maryanne Rempel', 'example-86@railstutorial.org',
    '$2a$10$gytSLfjSikQ0.u3uUfFaE.aIUV.hvvq4MmOiM8/d.ukBwWejxILDC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-86@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Cody Mosciski', 'example-87@railstutorial.org',
    '$2a$10$fx.pWPafUhiGfFBLvaKXD.bv2S/DkYGXuvouOfSZ0R3.matYbqXge'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-87@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Zachary Bogisich', 'example-88@railstutorial.org',
    '$2a$10$TPnvMkcmQvqGXQZKRyP4IO.u01a0AA1cPyTqi0N8HiEQ3XmdBtTTC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-88@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Lucienne Gerhold', 'example-89@railstutorial.org',
    '$2a$10$abRK1xV0ecFRIveSDN646e5wLneFC66q5mE3kh2kELoJ6nHpvGD/G'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-89@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Lachelle Franecki', 'example-90@railstutorial.org',
    '$2a$10$jixMddsksecW8Q22uttmhOBsCqRzIzYSp53733AamrzjFZAlBH6dW'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-90@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Ramiro Kertzmann', 'example-91@railstutorial.org',
    '$2a$10$Oan6Oj1AKsrO9k5oYzuNx.neB4CBf.zPiH/a0Ql0rbRHxsiwuwqZK'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-91@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Reggie Boyer', 'example-92@railstutorial.org',
    '$2a$10$GyEYBXdppGY2wd7BCthZJuv8sQ5haoxtfGjPip1fGN/T768MP33Q6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-92@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dr. Adan Bartoletti', 'example-93@railstutorial.org',
    '$2a$10$H7gooOCreTnKHxOtLox16ObVxMRGfw0P71SSDAXecw4cepC13nBvC'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-93@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Willa Reilly', 'example-94@railstutorial.org',
    '$2a$10$OwaNCB6qeu2R.upcmwB5fOPutYLTknI/SBp.iwI0XcQrkdFMPrMby'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-94@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Trinity McCullough', 'example-95@railstutorial.org',
    '$2a$10$KZgNkK8/TlANIdg.SD10KOsXI8C53is9Zt4AUfGrbYhLAJGhF6sy.'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-95@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Stacy Kautzer', 'example-96@railstutorial.org',
    '$2a$10$2Xk6HvjXoGLLyuxolW35JO55j5XG4R4OrBiFecTsJMNF36eG8IfH6'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-96@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Anthony Mohr', 'example-97@railstutorial.org',
    '$2a$10$wUdiFw23.OnyACWB0pmtxup/EleOWUNrxvanhaUGezIbAaXWcwyyq'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-97@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Imogene Koss', 'example-98@railstutorial.org',
    '$2a$10$33n2nbwNZZAuHsjNocfK2u6hpsp0otx0D2u.KBUgzPgRvpKvtg5hG'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-98@railstutorial.org');
INSERT INTO "user"(id, name, email, password_digest)
  SELECT RANDOM_UUID(), 'Dr. Danita Kemmer', 'example-99@railstutorial.org',
    '$2a$10$24jdSpGMppeQHMkNFD/Cve/WXNd.iArS18bRq2/BSPIW7FjvC8IAi'
    WHERE NOT EXISTS(SELECT id FROM "user" WHERE email='example-99@railstutorial.org');
