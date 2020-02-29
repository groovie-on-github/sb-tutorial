INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'I just ate an orange!', id,
    TIMESTAMPADD(MINUTE, -10, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='I just ate an orange!' and "user_id" = u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Check out the @tauday site by @mhartl: http://tauday.com', id,
    TIMESTAMPADD(YEAR, -3, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Check out the @tauday site by @mhartl: http://tauday.com' and "user_id" = u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sad cats are sad: http://youtu.be/PKffm2uI4dk', id,
    TIMESTAMPADD(HOUR, -2, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sad cats are sad: http://youtu.be/PKffm2uI4dk' and "user_id" = u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Writing a short test', id,
    CURRENT_TIMESTAMP FROM "user" u WHERE email = 'michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Writing a short test' and "user_id" = u.id);

INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Oh, is that what you want? Because that''s how you get ants!', id,
    TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'duchess@example.gov'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Oh, is that what you want? Because that''s how you get ants!' and "user_id" = u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Danger zone!', id,
    TIMESTAMPADD(DAY, -3, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'duchess@example.gov'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Danger zone!' and "user_id" = u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'I''m sorry. Your words made sense, but your sarcastic tone did not.', id,
    TIMESTAMPADD(MINUTE, -10, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'hands@example.gov'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='I''m sorry. Your words made sense, but your sarcastic tone did not.' and "user_id" = u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Dude, this van''s, like, rolling probable cause.', id,
    TIMESTAMPADD(HOUR, -4, CURRENT_TIMESTAMP) FROM "user" u WHERE email = 'hands@example.gov'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Dude, this van''s, like, rolling probable cause.' and "user_id" = u.id);


/*generated dummy microposts*/

INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Laborum velit et ut nesciunt est facere ut dolorum.', u.id, TIMESTAMPADD(SECOND, -16, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Laborum velit et ut nesciunt est facere ut dolorum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Earum voluptas omnis ullam accusantium.', u.id, TIMESTAMPADD(YEAR, -9, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Earum voluptas omnis ullam accusantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eligendi non qui recusandae architecto et aut.', u.id, TIMESTAMPADD(MONTH, -7, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eligendi non qui recusandae architecto et aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eveniet quibusdam sequi rerum magnam mollitia laudantium.', u.id, TIMESTAMPADD(HOUR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eveniet quibusdam sequi rerum magnam mollitia laudantium.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Optio aliquam vitae aut impedit ut aspernatur aperiam et doloremque.', u.id, TIMESTAMPADD(YEAR, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Optio aliquam vitae aut impedit ut aspernatur aperiam et doloremque.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Officia repellendus voluptatem consequatur est suscipit.', u.id, TIMESTAMPADD(MINUTE, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Officia repellendus voluptatem consequatur est suscipit.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Alias voluptatibus neque blanditiis blanditiis quis pariatur.', u.id, TIMESTAMPADD(YEAR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Alias voluptatibus neque blanditiis blanditiis quis pariatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Assumenda autem itaque voluptatum dolor consequatur dolore et sint molestiae.', u.id, TIMESTAMPADD(HOUR, -18, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Assumenda autem itaque voluptatum dolor consequatur dolore et sint molestiae.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Velit ut fugit ratione dignissimos omnis ut aliquid minus placeat.', u.id, TIMESTAMPADD(SECOND, -30, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Velit ut fugit ratione dignissimos omnis ut aliquid minus placeat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quos ipsam veniam voluptate occaecati occaecati.', u.id, TIMESTAMPADD(DAY, -29, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quos ipsam veniam voluptate occaecati occaecati.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Esse quae dolor nisi dolor id aut earum eum.', u.id, TIMESTAMPADD(YEAR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Esse quae dolor nisi dolor id aut earum eum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Illum quod iure laudantium rerum beatae aut architecto qui.', u.id, TIMESTAMPADD(DAY, -29, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Illum quod iure laudantium rerum beatae aut architecto qui.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ab eveniet officia occaecati enim.', u.id, TIMESTAMPADD(MINUTE, -32, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ab eveniet officia occaecati enim.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Porro optio voluptas eius qui magni saepe.', u.id, TIMESTAMPADD(MONTH, -4, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Porro optio voluptas eius qui magni saepe.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Porro facere fuga itaque quae voluptas velit officiis repudiandae consequatur.', u.id, TIMESTAMPADD(SECOND, -20, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Porro facere fuga itaque quae voluptas velit officiis repudiandae consequatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Ducimus sequi laboriosam recusandae aut atque atque et adipisci illum.', u.id, TIMESTAMPADD(MONTH, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Ducimus sequi laboriosam recusandae aut atque atque et adipisci illum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sequi a eos repellat nihil ut aut.', u.id, TIMESTAMPADD(SECOND, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sequi a eos repellat nihil ut aut.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et consequatur qui repellat sed et.', u.id, TIMESTAMPADD(MONTH, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et consequatur qui repellat sed et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Sunt assumenda consectetur necessitatibus officiis ad eos quod nulla quia.', u.id, TIMESTAMPADD(MINUTE, -44, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Sunt assumenda consectetur necessitatibus officiis ad eos quod nulla quia.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Quia blanditiis modi saepe sint.', u.id, TIMESTAMPADD(MINUTE, -24, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Quia blanditiis modi saepe sint.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eveniet repudiandae ratione enim sed magnam vel deserunt incidunt non.', u.id, TIMESTAMPADD(DAY, -21, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eveniet repudiandae ratione enim sed magnam vel deserunt incidunt non.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae sint est ut sed aut et et.', u.id, TIMESTAMPADD(DAY, -11, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae sint est ut sed aut et et.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Fugiat ut est ea blanditiis consequatur doloribus odio sunt dolorem.', u.id, TIMESTAMPADD(HOUR, -2, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Fugiat ut est ea blanditiis consequatur doloribus odio sunt dolorem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'At id soluta ea suscipit ab voluptatem.', u.id, TIMESTAMPADD(HOUR, -10, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='At id soluta ea suscipit ab voluptatem.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Molestiae qui voluptatem corrupti vitae aut fuga odio consequatur.', u.id, TIMESTAMPADD(MONTH, -1, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Molestiae qui voluptatem corrupti vitae aut fuga odio consequatur.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Eum amet accusamus modi pariatur explicabo quo.', u.id, TIMESTAMPADD(DAY, -6, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Eum amet accusamus modi pariatur explicabo quo.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Voluptatem nam quas laudantium quaerat.', u.id, TIMESTAMPADD(SECOND, -38, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Voluptatem nam quas laudantium quaerat.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Et illum accusantium aut laborum.', u.id, TIMESTAMPADD(SECOND, -27, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Et illum accusantium aut laborum.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Earum at cumque et odit laboriosam.', u.id, TIMESTAMPADD(DAY, -3, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Earum at cumque et odit laboriosam.' AND "user_id"=u.id);
INSERT INTO micropost(id, content, "user_id", created_at)
  SELECT RANDOM_UUID(), 'Accusamus asperiores voluptate fugiat atque nostrum sint velit.', u.id, TIMESTAMPADD(SECOND, -44, CURRENT_TIMESTAMP)
    FROM "user" u WHERE u.email='michael@example.com'
    AND NOT EXISTS(SELECT id FROM micropost WHERE content='Accusamus asperiores voluptate fugiat atque nostrum sint velit.' AND "user_id"=u.id);
