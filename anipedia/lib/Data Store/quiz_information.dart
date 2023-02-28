import 'package:flutter/material.dart';

class Quiz with ChangeNotifier {
  final List _lifespan = [
    {
      'linerbar': 0.25,
      'image': 'assets/animals/Elephant.jpg',
      'name': 'Elephant',
      'lifespans': ['20-30 Years', '40-50 Years', '60-70 Years', '70-80 Years'],
      'correctIndex': 2
    },
    {
      'linerbar': 0.5,
      'image': 'assets/animals/Giraffe.jpg',
      'name': 'Giraffe',
      'lifespans': ['25 Years', '40 Years', '38 Years', '15 Years'],
      'correctIndex': 0
    },
    {
      'linerbar': 0.75,
      'image': 'assets/animals/Gorilla.jpg',
      'name': 'Gorilla',
      'lifespans': ['20 Years', '40 Years', '23 Years', '48 Years'],
      'correctIndex': 1
    },
    {
      'linerbar': 1.0,
      'image': 'assets/animals/Lion.jpg',
      'name': 'Lion',
      'lifespans': ['10 Years', '18 Years', '25 Years', '36 Years'],
      'correctIndex': 2
    },
  ];
  final List _matchtheanimalquiz = [
    {
      'animal': ['lion', 'elephant', 'dog', 'sheep'],
      'baby': ['cub', 'calf', 'puppy', 'lamb']
    },
    {
      'animal': ['cat', 'horse', 'whale', 'penguin'],
      'baby': ['kitten', 'foal', 'calf', 'chick']
    },
    {
      'animal': ['monkey', 'kangaroo', 'bear', 'otter'],
      'baby': ['infant', 'joey', 'cub', 'pup']
    },
    {
      'animal': ['giraffe', 'zebra', 'hippo', 'rhino'],
      'baby': ['calf', 'foal', 'calf', 'calf']
    },
    {
      'animal': ['tiger', 'camel', 'seal', 'flamingo'],
      'baby': ['cub', 'calf', 'pup', 'chick']
    },
    {
      'animal': ['deer', 'gazelle', 'moose', 'antelope'],
      'baby': ['fawn', 'fawn', 'calf', 'calf']
    },
    {
      'animal': ['crocodile', 'turtle', 'snake', 'lizard'],
      'baby': ['hatchling', 'hatchling', 'hatchling', 'hatchling']
    },
    {
      'animal': ['panda', 'koala', 'raccoon', 'opossum'],
      'baby': ['cub', 'joey', 'kit', 'joey']
    },
    {
      'animal': ['owl', 'eagle', 'hawk', 'vulture'],
      'baby': ['owlet', 'eaglet', 'eyas', 'chick']
    },
    {
      'animal': ['shark', 'dolphin', 'octopus', 'crab'],
      'baby': ['pup', 'calf', 'hatchling', 'larvae']
    }
  ];
  List get LifeSpan {
    return [..._lifespan];
  }

  List get MatchTheAnimalQuiz {
    return [..._matchtheanimalquiz];
  }
}
