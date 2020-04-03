class Movie {
  final int id;
  final String title;
  final String year;
  final String description;
  final String imageURL;

  Movie({
    this.id,
    this.title,
    this.year,
    this.description,
    this.imageURL,
  });
}
final Movie avengers = Movie(
  id: 1,
  title: 'Avengers',
  year: '2012',
  description: 'Nick Fury is compelled to launch the Avengers Initiative when Loki poses a threat to planet Earth. His squad of superheroes put their minds together to accomplish the task.',
  imageURL: 'assets/images/avengers.jpg',
);

final Movie ironMan = Movie(
  id: 2,
  title: 'Iron Man',
  year: '2008',
  description: 'When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.',
  imageURL: 'assets/images/iron_man.jpg',
);

final Movie infinityWar = Movie(
  id: 3,
  title: 'Infinity War',
  year: '2018',
  description: 'The Avengers must stop Thanos, an intergalactic warlord, from getting his hands on all the infinity stones. However, Thanos is prepared to go to any lengths to carry out his insane plan.',
  imageURL: 'assets/images/infinity_war.jpg',
);

final Movie endGame = Movie(
  id: 4,
  title: 'End Game',
  year: '2019',
  description: 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.',
  imageURL: 'assets/images/end_game.jpg',
);
final Movie thor = Movie(
  id: 5,
  title: 'Thor',
  year: '2010',
  description: 'Deprived of his mighty hammer Mjolnir, Thor must escape the other side of the universe to save his home, Asgard, from Hela, the goddess of death.',
  imageURL: 'assets/images/thor.jpg',
);
final Movie blackWidow = Movie(
  id: 6,
  title: 'Black Widow',
  year: '2020',
  description: 'At birth the Black Widow (aka Natasha Romanova) is given to the KGB, which grooms her to become its ultimate operative. When the U.S.S.R. breaks up, the government tries to kill her as the action moves to present-day New York, where she is a freelance operative.',
  imageURL: 'assets/images/black_widow.jpg',
);

//Recents
List<Movie> recents = [avengers, ironMan, endGame, infinityWar, thor, blackWidow];

List<Movie> recommendations = [
Movie(
  id: 4,
  title: 'End Game',
  year: '2019',
  description: 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.',
  imageURL: 'assets/images/end_game.jpg',
),
Movie(
  id: 5,
  title: 'Thor',
  year: '2010',
  description: 'Deprived of his mighty hammer Mjolnir, Thor must escape the other side of the universe to save his home, Asgard, from Hela, the goddess of death.',
  imageURL: 'assets/images/thor.jpg',
),
Movie(
  title: 'Black Widow',
  year: '2020',
  description: 'At birth the Black Widow (aka Natasha Romanova) is given to the KGB, which grooms her to become its ultimate operative.',
  imageURL: 'assets/images/black_widow.jpg',
),

Movie(
    title: 'Joker',
    year: '2019',
    description: 'Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown.',
    imageURL: 'assets/images/joker.jpg',
  ),
  Movie(
    title: 'Man of Steel',
    year: '2013',
    description: 'After Superman discovers that he has extraordinary powers, he decides to use them for doing good.',
    imageURL: 'assets/images/man_of_steel.jpg',
  ),
  Movie(
    title: 'John Wick',
    year: '2014',
    description: 'John Wick, a retired hitman, is forced to return to his old ways after a group of Russian gangsters steal his car and kill a puppy gifted to him by his late wife.',
    imageURL: 'assets/images/john_wick.jpg',
  ),
  Movie(
    title: 'Birds of Prey',
    year: '2020',
    description: 'It\'s open season on Harley Quinn when her explosive breakup with the Joker puts a big fat target on her back. Unprotected and on the run,...',
    imageURL: 'assets/images/birds_of_prey.jpg',
  ),

  Movie(
    title: 'Batman v Superman',
    year: '2016',
    description: 'Bruce Wayne, a billionaire, believes that Superman is a threat to humanity after his battle in Metropolis. Thus, he decides to adopt his mantle of Batman and defeat him once and for all.',
    imageURL: 'assets/images/batvSuper.jpg',
  ),

  Movie(
    title: 'Knives Out',
    year: '2019',
    description: 'The circumstances surrounding the death of crime novelist Harlan Thrombey are mysterious, but there\'s one thing that renowned Detective Benoit Blanc knows for sure -...',
    imageURL: 'assets/images/knives_out.jpg',
  ),

  Movie(
    title: '1917',
    year: '2019',
    description: 'During World War I, two British soldiers -- Lance Cpl. Schofield and Lance Cpl. Blake -- receive seemingly impossible orders.',
    imageURL: 'assets/images/1917.jpg',
  ),

];