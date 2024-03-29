DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artist(
      id_artist INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name_artist VARCHAR(45) NOT NULL

  )ENGINE = InnoDB;

    CREATE TABLE SpotifyClone.album(
      id_album INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name_album VARCHAR(45) NOT NULL,
      id_artist INT NOT NULL,
      ano_lancamento INTEGER NOT NULL,
      FOREIGN KEY(id_artist)REFERENCES SpotifyClone.artist(id_artist)
      
      )ENGINE = InnoDB;

   CREATE TABLE SpotifyClone.songs(
      id_song INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      id_album INT NOT NULL,
      name_song VARCHAR(60) NOT NULL,
      duracao_segundos INTEGER NOT NULL,
      FOREIGN KEY(id_album)REFERENCES SpotifyClone.album(id_album)

      
  ) ENGINE = InnoDB;

    CREATE TABLE SpotifyClone.plan(
      id_plan INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name_plan VARCHAR(45) NOT NULL,
      valor DECIMAL(3,2) NOT NULL

  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.user(
      user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      user_name VARCHAR(45) NOT NULL,
      idade INTEGER,
	  id_plan INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (id_plan) REFERENCES SpotifyClone.plan(id_plan)
      
  ) ENGINE = InnoDB;


  CREATE TABLE SpotifyClone.following_artist(
      user_id INT NOT NULL,
      id_artist INT NOT NULL,
      CONSTRAINT PRIMARY KEY(user_id, id_artist),
      FOREIGN KEY(user_id) REFERENCES SpotifyClone.user(user_id),
      FOREIGN KEY(id_artist) REFERENCES SpotifyClone.artist(id_artist)

  ) ENGINE = InnoDB;

   CREATE TABLE SpotifyClone.historic(
      user_id INT NOT NULL,
      id_song INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY(user_id,id_song),
      FOREIGN KEY(user_id)REFERENCES SpotifyClone.user(user_id),
      FOREIGN KEY(id_song)REFERENCES SpotifyClone.songs(id_song)
      
  ) ENGINE = InnoDB;




  INSERT INTO SpotifyClone.artist (name_artist)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.album (name_album, id_artist, ano_lancamento)
  VALUES
    ('Renaissance',1,2022),
    ('Jazz',2,1978),
    ('Hot Space',2,1982),
    ('Falso Brilhante',3,1998),
    ('Vento de Maio',3,2001),
    ('QVVJFA?',4,2003),
    ('Somewhere Far Beyond',5,2007),
    ('I Put A Spell On You',6,2012);

  INSERT INTO SpotifyClone.songs (name_song, id_album ,duracao_segundos)
  VALUES
    ('BREAK MY SOUL',1,279),
    ('VIRGO’S GROOVE',1,369),
    ('ALIEN SUPERSTAR',1,116),
    ('Don’t Stop Me Now',2,203),
    ('Under Pressure',3,152),
    ('Como Nossos Pais',4,105),
    ('O Medo de Amar é o Medo de Ser Livre',5,207),
    ('Samba em Paris',4,267),
    ('The Bard’s Song',5,244),
    ('Feeling Good',6,100);

  INSERT INTO SpotifyClone.plan (name_plan,valor)
  VALUES
    ('gratuito',0.00),
    ('familiar',7.99),
    ('universitário',5.99),
    ('pessoal',6.99);

  INSERT INTO SpotifyClone.user (user_name, idade,id_plan,data_assinatura)
  VALUES
    ('Barbara Liskov', 82,1,'2019-10-20'),
    ('Robert Cecil Martin', 58,1,'2017-01-06'),
    ('Ada Lovelace', 37,2,'2017-12-30'),
    ('Martin Fowler',46,2,'2017-01-17'),
    ('Sandi Metz', 58,2,'2018-04-29'),
    ('Paulo Freire',19,3,'2018-02-14'),
    ('Bell Hooks',26,3,'2018-01-05'),
    ('Christopher Alexander',85,4,'2019-06-05'),
    ('Judith Butler',45,4,'2020-05-13'),
    ('Jorge Amado',58,4,'2017-02-17');




  INSERT INTO SpotifyClone.following_artist (user_id, id_artist)
  VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (2,3),
    (3,2),
    (4,4),
    (5,5),
    (5,6),
    (6,1),
	(6, 6),
    (7,6),
    (9,3),
    (10,2);

  INSERT INTO SpotifyClone.historic (user_id, id_song, data_reproducao)
  VALUES
    (1,8,'2022-02-28 10:45:55'),
    (1,2,'2020-05-02 05:30:35'),
    (1,10,'2020-03-06 11:22:33'),
    (2,10,'2022-08-05 08:05:17'),
    (2,7,'2020-01-02 07:40:33'),
    (3,10,'2020-11-13 16:55:13'),
    (3,2,'2020-12-05 18:38:30'),
    (4,8,'2021-08-15 17:10:10'),
    (5,8,'2022-01-09 01:44:33'),
    (5,5,'2020-08-06 15:23:43'),
    (6,7,'2017-01-24 00:31:17'),
    (6,1,'2017-10-12 12:35:20'),
    (7,4,'2011-12-15 22:30:49'),
    (8,4,'2012-03-17 14:56:41'),
    (9,9,'2022-02-24 21:14:22'),
    (10,3,'2015-12-13 08:30:22');