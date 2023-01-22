DROP TABLE IF EXISTS lenses;
CREATE TABLE lenses (
  unlockable_id bigint(20) NOT NULL PRIMARY,
  snapcode_url varchar(300)  DEFAULT NULL,
  user_display_name varchar(200) DEFAULT NULL,
  lens_name varchar(200)  DEFAULT NULL,
  lens_status varchar(200)  DEFAULT NULL,
  deeplink varchar(200)  DEFAULT NULL,
  icon_url varchar(150)  DEFAULT NULL,
  thumbnail_media_url varchar(300)  DEFAULT NULL,
  standard_media_url varchar(500)  DEFAULT NULL,
  obfuscated_user_slug varchar(300)  DEFAULT NULL,
  image_sequence json DEFAULT NULL,
  thumbnail_media_poster_url varchar(300)  DEFAULT NULL,
  standard_media_poster_url varchar(300)  DEFAULT NULL,
)


DROP TABLE IF EXISTS unlocks;
CREATE TABLE unlocks (
  lens_id bigint(20) NOT NULL PRIMARY,
  lens_url varchar(300) DEFAULT NULL,
  signature varchar(300) DEFAULT NULL,
  hint_id varchar(200) DEFAULT NULL,
  additional_hint_ids json DEFAULT NULL,
  mirrored int(11) DEFAULT '0',
  PRIMARY KEY (lens_id)
)