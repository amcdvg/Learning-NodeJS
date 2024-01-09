USE moviesdb;

create table movie(
  id binary(16) primary key default (uuid_to_bin(uuid())),
  title varchar(255) not null,
  year int not null,
  director varchar(255) not null,
  duration int not null,
  poster text,
  rate decimal(2,1) not null 
  
);

create table genre(
  id int auto_increment primary key,
  name varchar(255) not null unique
);

create table movie_genres(
   movie_id binary(16) references movies(id),
   genre_id int references genres(id),
   primary key (movie_id, genre_id)
);

insert into genre (name) values
  ("Drama"),
  ('Action'),
  ('Crime'),
  ('Adventure'),
  ('Sci-Fi'),
  ('Romance'),
  ('Comedy'),
  ("Biography"),
  ("Fantasy");
  


insert into movie (id, title,year, director, duration, poster, rate) values
(uuid_to_bin(uuid()), "The Shawshank Redemption",1994,"Frank Darabont",142,"https://i.ebayimg.com/images/g/4goAAOSwMyBe7hnQ/s-l1200.webp",9.3),
(uuid_to_bin(uuid()),"The Dark Knight",2008,"Christopher Nolan",152,"https://i.ebayimg.com/images/g/yokAAOSw8w1YARbm/s-l1200.jpg",9.0),
(uuid_to_bin(uuid()),"Inception",2010,"Christopher Nolan",148,"https://m.media-amazon.com/images/I/91Rc8cAmnAL._AC_UF1000,1000_QL80_.jpg",8.8),
(uuid_to_bin(uuid()),"Pulp Fiction",1994,"Quentin Tarantino",154,"https://www.themoviedb.org/t/p/original/vQWk5YBFWF4bZaofAbv0tShwBvQ.jpg",8.9),
(uuid_to_bin(uuid()),"Forrest Gump",1994,"Robert Zemeckis",142,"https://i.ebayimg.com/images/g/qR8AAOSwkvRZzuMD/s-l1600.jpg",8.8),
(uuid_to_bin(uuid()),"Gladiator",2000,"Ridley Scott",155,"https://img.fruugo.com/product/0/60/14417600_max.jpg",8.5),
(uuid_to_bin(uuid()),"The Matrix",1999,"Lana Wachowski",136,"https://i.ebayimg.com/images/g/QFQAAOSwAQpfjaA6/s-l1200.jpg",8.7),
(uuid_to_bin(uuid()), "The Lord of the Rings: The Return of the King",2003,"Peter Jackson",201,"https://i.ebayimg.com/images/g/0hoAAOSwe7peaMLW/s-l1600.jpg",8.9),
(uuid_to_bin(uuid()),"The Avengers",2012,"Joss Whedon",143,"https://img.fruugo.com/product/7/41/14532417_max.jpg",8.0),
(uuid_to_bin(uuid()),"Jurassic Park",1993,"Steven Spielberg",127,"https://vice-press.com/cdn/shop/products/Jurassic-Park-Editions-poster-florey.jpg?v=1654518755&width=1024",8.1),
(uuid_to_bin(uuid()),"Titanic",1997,"James Cameron",195,"https://i.pinimg.com/originals/42/42/65/4242658e6f1b0d6322a4a93e0383108b.png",7.8),
(uuid_to_bin(uuid()),"The Social Network",2010,"David Fincher",120,"https://i.pinimg.com/originals/7e/37/b9/7e37b994b613e94cba64f307b1983e39.jpg",7.7),
(uuid_to_bin(uuid()),"Avatar",2009,"James Cameron",162,"https://i.etsystatic.com/35681979/r/il/dfe3ba/3957859451/il_fullxfull.3957859451_h27r.jpg",7.8);

insert into movie_genres(movie_id,genre_id) values
   ((select id from movie where title = 'The Shawshank Redemption'),(select id from genre where name = "Drama")),
   ((select id from movie where title = "The Dark Knight"),(select id from genre where name = "Action")),
   ((select id from movie where title = "The Dark Knight"),(select id from genre where name = "Crime")),
   ((select id from movie where title = "The Dark Knight"),(select id from genre where name = "Drama")),
   ((select id from movie where title = "Inception"),(select id from genre where name = "Action")),
   ((select id from movie where title = "Inception"),(select id from genre where name = "Adventure")),
   ((select id from movie where title = "Inception"),(select id from genre where name = "Sci-Fi")),
   ((select id from movie where title = 'Pulp Fiction'),(select id from genre where name = "Drama")),
   ((select id from movie where title = 'Pulp Fiction'),(select id from genre where name = "Crime")),
   ((select id from movie where title = "Forrest Gump"),(select id from genre where name = "Drama")),
   ((select id from movie where title = "Forrest Gump"),(select id from genre where name = "Romance")),
   ((select id from movie where title = "Gladiator"),(select id from genre where name = "Action")),
   ((select id from movie where title = "Gladiator"),(select id from genre where name = "Adventure")),
   ((select id from movie where title = "Gladiator"),(select id from genre where name = "Drama")),
   ((select id from movie where title = "The Matrix"),(select id from genre where name = "Sci-Fi")),
   ((select id from movie where title = "The Matrix"),(select id from genre where name = "Action")),
   ((select id from movie where title = "The Lord of the Rings: The Return of the King"),(select id from genre where name = "Action")),
   ((select id from movie where title = "The Lord of the Rings: The Return of the King"),(select id from genre where name =  "Adventure")),
   ((select id from movie where title = "The Lord of the Rings: The Return of the King"),(select id from genre where name = "Drama")),
   ((select id from movie where title = "The Avengers"),(select id from genre where name = "Action")),
   ((select id from movie where title = "The Avengers"),(select id from genre where name = "Adventure")),
   ((select id from movie where title = "The Avengers"),(select id from genre where name = "Sci-Fi")),
   ((select id from movie where title = "Jurassic Park"),(select id from genre where name = "Adventure")),
   ((select id from movie where title = "Jurassic Park"),(select id from genre where name = "Sci-Fi")),
   ((select id from movie where title = "Titanic"),(select id from genre where name ="Romance")),
   ((select id from movie where title = "Titanic"),(select id from genre where name = "Drama")),
   ((select id from movie where title = "The Social Network"),(select id from genre where name = "Biography")),
   ((select id from movie where title = "The Social Network"),(select id from genre where name = "Drama")),
   ((select id from movie where title = "Avatar"),(select id from genre where name = "Action")),
   ((select id from movie where title = "Avatar"),(select id from genre where name = "Adventure")),
   ((select id from movie where title = "Avatar"),(select id from genre where name = "Fantasy"));
   
