// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Animals with ChangeNotifier {
  final List _extinctSpecies = [
    {
      "name": "Dodo",
      "image": "assets/dodo.jpg",
      "fav": true,
      "description":
          "A flightless bird native to the island of Mauritius in the Indian Ocean. They were hunted to extinction by sailors and their domesticated animals."
    },
    {
      "name": "Quagga",
      "image": "assets/Quagga.jpg",
      "fav": false,
      "description":
          "A subspecies of the plains zebra that lived in southern Africa. They were hunted for their meat and hides, and were eventually driven to extinction in the late 19th century."
    },
    {
      "name": "Great Auk",
      "image": "assets/Great_Auk.jpg",
      "fav": true,
      "description":
          "A flightless bird native to the North Atlantic. They were hunted for their feathers and eggs, leading to their extinction in the mid-19th century."
    },
    {
      "name": "Thylacine",
      "image": "assets/Thylacine.jpg",
      "fav": false,
      "description":
          "A marsupial predator native to Australia and New Guinea. They were hunted for their perceived threat to livestock, leading to their extinction in the 20th century."
    },
    {
      "name": "Passenger Pigeon",
      "image": "assets/Passenger_Pigeon.webp",
      "fav": true,
      "description":
          "A migratory bird native to North America. They were hunted for their meat and eggs, leading to their extinction in the early 20th century."
    },
    {
      "name": "Steller's Sea Cow",
      "image": "assets/Steller_Sea_Cow.jpg",
      "fav": false,
      "description":
          "A large, herbivorous marine mammal native to the Bering Sea. They were hunted to extinction by sailors and fur traders in the 18th century."
    },
    {
      "name": "Tasmanian Tiger",
      "image": "assets/Tasmanian_Tiger.jpg",
      "fav": true,
      "description":
          "A marsupial predator native to Australia. They were hunted for their perceived threat to livestock, leading to their extinction in the 20th century."
    },
    {
      "name": "Woolly Mammoth",
      "image": "assets/Wolly_Mammoth.webp",
      "fav": false,
      "description":
          "A large, herbivorous mammal native to the northern parts of North America, Europe, and Asia. They went extinct at the end of the last ice age, likely due to a combination of climate change and overhunting by early humans."
    },
    {
      "name": "Carolina Parakeet",
      "image": "assets/Carolina_Parakeet.jpg",
      "fav": true,
      "description":
          "A colorful parrot native to the southeastern United States. They were hunted for their feathers and as pests, leading to their extinction in the early 20th century."
    },
    {
      "name": "California Grizzly Bear",
      "image": "assets/California_grizzly_bear.webp",
      "fav": true,
      "description":
          "A subspecies of the North American Grizzly Bear that once lived in California. They were hunted to extinction in the late 19th century."
    },
    {
      "name": "Javan Tiger",
      "image": "assets/Javan_Tiger.webp",
      "fav": false,
      "description":
          "A subspecies of the Bengal tiger that lived on the island of Java in Indonesia. They were hunted for their skins and to protect livestock, leading to their extinction in the 1980s."
    },
    {
      "name": "Labrador Duck",
      "image": "assets/Labrador_Duck.webp",
      "fav": true,
      "description":
          "A sea duck native to North America. They were hunted for their meat and eggs, leading to their extinction in the late 19th century."
    },
    {
      "name": "Moa",
      "image": "assets/Moa.webp",
      "fav": true,
      "description":
          "A group of flightless birds native to New Zealand. They were hunted by the Maori people and likely by early Polynesian settlers.",
    },
    {
      "name": "Sea Mink",
      "image": "assets/Sea_Mink.jpg",
      "fav": false,
      "description":
          "A species of mink native to the North Atlantic coast of North America. They were hunted for their fur, leading to their extinction in the late 19th century."
    },
    {
      "name": "Greater Prairie Chicken",
      "image": "assets/Greater_Prairie_Chicken.jpg",
      "fav": true,
      "description":
          "A species of prairie chicken native to the central grasslands of North America. They were hunted for their meat and as a game bird, leading to their decline and near extinction in the early 20th century."
    },
    {
      "name": "Heath Hen",
      "image": "assets/Health_Hen.webp",
      "fav": false,
      "description":
          "A subspecies of the Greater Prairie Chicken that lived on the East Coast of the United States. They were hunted for their meat, leading to their extinction in the early 20th century."
    },
    {
      "name": "Saber-toothed Tiger",
      "image": "assets/Saber-toothed_tiger.webp",
      "fav": true,
      "description":
          "A large predator that lived during the Pleistocene epoch. They were likely driven to extinction by a combination of climate change and competition with early human populations."
    },
    {
      "name": "Dusky Seaside Sparrow",
      "image": "assets/Dusky_Seaside_Sparrow.jpg",
      "fav": true,
      "description":
          "A species of sparrow native to the Atlantic coast of Florida. They were threatened by habitat loss due to development and the introduction of non-native species, leading to their extinction in the late 20th century."
    },
  ];
  final List _Animals = [
    {
      "name": "Lion",
      "image": "assets/animals/Lion.jpg",
      "fav": true,
      "description":
          "The lion is a species of big cat that lives in Africa and some parts of Asia. They are known for their distinctive manes and powerful roar. Lions are social animals that live in prides and hunt for food together."
    },
    {
      "name": "Tiger",
      "image": "assets/animals/Tiger.jpg",
      "fav": true,
      "description":
          "The tiger is a species of big cat that is native to Asia and is the largest cat species in the world. They have distinctive stripes and are known for their powerful build. Tigers are solitary animals and are skilled hunters."
    },
    {
      "name": "Elephant",
      "image": "assets/animals/Elephant.jpg",
      "fav": true,
      "description":
          "The elephant is a large mammal found in Africa and Asia, and is known for its large size and distinctive trunk. Elephants are social animals and are known for their intelligence and memory. They play a important role in their ecosystem as seed dispersers."
    },
    {
      "name": "Giraffe",
      "image": "assets/animals/Giraffe.jpg",
      "fav": true,
      "description":
          "The giraffe is a long-necked mammal found in Africa and is known for its unique appearance and height. Giraffes use their long necks to reach leaves and branches in trees. They are social animals and live in groups called towers."
    },
    {
      "name": "Gorilla",
      "image": "assets/animals/Gorilla.jpg",
      "fav": true,
      "description":
          "The gorilla is a species of primate found in Africa and is known for its large size and close genetic relationship to humans. Gorillas are social animals that live in groups led by a dominant male. They are known for their intelligence and use of tools."
    },
    {
      "name": "Hippopotamus",
      "image": "assets/animals/Hippo.jpg",
      "fav": true,
      "description":
          "The hippopotamus is a large mammal found in Africa and is known for its aggressive nature and habitat in rivers and lakes. Hippos are highly territorial animals and can be very dangerous to humans. They are also an important species for maintaining healthy river ecosystems."
    },
    {
      "name": "Leopard",
      "image": "assets/animals/Leopard.jpg",
      "fav": true,
      "description":
          "The leopard is a species of big cat that is native to Africa and Asia and is known for its ability to climb trees. Leopards are solitary animals and are skilled hunters. They have a distinctive spotted coat and are able to adapt to a wide range of habitats."
    },
    {
      "name": "Cheetah",
      "image": "assets/animals/Cheetah.jpg",
      "fav": true,
      "description":
          "The cheetah is a species of big cat that is native to Africa and is known for its incredible speed. Cheetahs are built for speed and are the fastest land animal in the world. They are solitary animals and hunt during the day."
    },
    {
      "name": "Panda",
      "image": "assets/animals/panda.jpg",
      "fav": true,
      "description":
          "The panda is a species of bear that is native to China and is known for its distinctive black and white appearance. Pandas are herbivores and primarily feed on bamboo. They are a symbol of peace and are an important species for maintaining healthy forest ecosystems."
    },
    {
      "name": "Kangaroo",
      "image": "assets/animals/kangaroo.jpg",
      "fav": true,
      "description":
          "The kangaroo is a marsupial found in Australia and is known for its unique hopping ability. Kangaroos are able to cover large distances quickly and are able to conserve water in hot and arid environments. They are also an important species for maintaining healthy grassland ecosystems."
    },
    {
      "name": "Monkey",
      "image": "assets/animals/monkey.jpg",
      "fav": true,
      "description":
          "Monkeys are primates found in various regions of the world, including South America, Africa, and Asia. They are known for their intelligence and use of tools. Monkeys are social animals and live in groups with complex social hierarchies."
    },
    {
      "name": "Crocodile",
      "image": "assets/reptiles/Crocodile.jpg",
      "fav": true,
      "description":
          "Crocodiles are reptiles found in tropical regions of the world and are known for their large size and powerful jaws. Crocodiles are apex predators and play an important role in maintaining healthy wetland ecosystems. They are also known to be ambush hunters."
    },
    {
      "name": "Zebra",
      "image": "assets/animals/zeb.jpg",
      "fav": true,
      "description":
          "Zebras are mammals found in Africa and are known for their distinctive black and white stripes. Zebras are social animals that live in large herds and graze on grass. They are also important prey species for predators such as lions and hyenas."
    },
    {
      "name": "Komodo Dragon",
      "image": "assets/reptiles/Komodo Dragon.jpg",
      "fav": true,
      "description":
          "The Komodo dragon is a species of lizard found in Indonesia and is the largest species of lizard in the world. They are known for their powerful bite and ability to take down large prey. Komodo dragons are apex predators and play an important role in maintaining healthy island ecosystems."
    },
    {
      "name": "Jaguar",
      "image": "assets/animals/Jaguar.jpg",
      "fav": true,
      "description":
          "The jaguar is a species of big cat that is native to the Americas and is known for its ability to climb trees. Jaguars are solitary animals and are skilled hunters. They have a distinctive spotted coat and are able to adapt to a wide range of habitats."
    },
    {
      "name": "Rhinoceros",
      "image": "assets/animals/Rhino.jpg",
      "fav": true,
      "description":
          "Rhinoceroses are large mammals found in Africa and Asia and are known for their large size and horn. There are five species of rhino, including the black and white rhino. Rhinos are important for maintaining healthy grassland and savanna ecosystems and play a key role in seed dispersal."
    },
    {
      "name": "Bear",
      "image": "assets/animals/bear.webp",
      "fav": true,
      "description":
          "Bears are large mammals found in various regions of the world, including North America, Europe, and Asia. They are omnivores and feed on a variety of food, including plants, fish, and small mammals. Some species of bear, such as the polar bear, are apex predators."
    },
    {
      "name": "Wolf",
      "image": "assets/animals/Wolf.jpg",
      "fav": true,
      "description":
          "Wolves are large carnivorous mammals found in various regions of the world, including North America, Europe, and Asia. They are known for their powerful jaws and keen sense of smell. Wolves are social animals that live in packs and play an important role in maintaining healthy ecosystems."
    },
    {
      "name": "Humpback Whale",
      "image": "assets/Aquatic animals/Humback Whale.jpg",
      "fav": true,
      "description":
          "The humpback whale is a species of whale found in oceans around the world and is known for its distinctive hump and long pectoral fins. Humpback whales are migratory animals that travel long distances and play an important role in maintaining healthy ocean ecosystems."
    },
    {
      "name": "Penguin",
      "image": "assets/animals/Penguin.webp",
      "fav": true,
      "description":
          "Penguins are flightless birds found in the Southern Hemisphere and are known for their distinctive appearance and behavior. Penguins are highly adapted to life in the water and feed on fish and other sea creatures. They play an important role."
    },
  ];
  final _Birds = [
    {
      "name": "Eagle",
      "description":
          "Eagles are birds of prey found in various regions of the world and are known for their powerful talons and keen eyesight. Eagles are apex predators and play an important role in maintaining healthy ecosystems. They are also a symbol of strength and freedom in many cultures."
    },
    {
      "name": "Owl",
      "description":
          "Owls are birds of prey found in various regions of the world and are known for their distinctive appearance, silent flight, and exceptional night vision. Owls play an important role in maintaining healthy ecosystems by controlling rodent populations."
    },
    {
      "name": "Peacock",
      "description":
          "Peacocks are birds found in Asia and are known for their beautiful and elaborate courtship displays, featuring their distinctive tail feathers. Peacocks are non-migratory birds and play an important role in maintaining healthy ecosystems by spreading seeds and helping to pollinate plants."
    },
    {
      "name": "Parrot",
      "description":
          "Parrots are colorful birds found in various regions of the world, including South America, Africa, and Australia. Parrots are known for their ability to mimic human speech and their playful, social behavior. Parrots play an important role in maintaining healthy ecosystems by spreading seeds and helping to pollinate plants."
    },
    {
      "name": "Pelican",
      "description":
          "Pelicans are large birds found in various regions of the world, including coastal areas and freshwater lakes. Pelicans are known for their distinctive pouch and are highly adapted to a life around water. They play an important role in maintaining healthy ecosystems by controlling fish populations."
    },
    {
      "name": "Flamingo",
      "description":
          "Flamingos are wading birds found in various regions of the world, including Africa, South America, and the Caribbean. Flamingos are known for their distinctive appearance, with their long legs, neck, and beak, and their bright pink coloration. They play an important role in maintaining healthy ecosystems by controlling algae and crustacean populations."
    },
    {
      "name": "Swan",
      "description":
          "Swans are large waterbirds found in various regions of the world, including Europe, North America, and Australia. Swans are known for their graceful appearance, with their long neck and powerful wings, and their strong family bonds. They play an important role in maintaining healthy ecosystems by controlling aquatic plant populations."
    },
    {
      "name": "Seagull",
      "description":
          "Seagulls are birds found near coastlines and oceans and are known for their scavenging behavior and distinctive call. Seagulls play an important role in maintaining healthy ecosystems by controlling waste and small animal populations."
    },
    {
      "name": "Hummingbird",
      "description":
          "Hummingbirds are small birds found in the Americas and are known for their iridescent plumage, their incredible hovering ability, and their importance as pollinators. Hummingbirds play an important role in maintaining healthy ecosystems by helping to pollinate plants and spreading seeds."
    },
    {
      "name": "Sparrow",
      "description":
          "Sparrows are small birds found in various regions of the world, including Europe, Asia, and North America. Sparrows are known for their ability to adapt to a wide range of Surroundings"
    },
    {
      "name": "Crow",
      "description":
          "Crows are birds found in various regions of the world and are known for their intelligence and problem-solving abilities. Crows are social birds that form large groups and play an important role in maintaining healthy ecosystems by controlling insect and small animal populations."
    },
    {
      "name": "Osprey",
      "description":
          "Ospreys are birds of prey found near coastlines and are known for their distinctive appearance and their ability to dive into water to catch fish. Ospreys play an important role in maintaining healthy ecosystems by controlling fish populations."
    },
    {
      "name": "Vulture",
      "description":
          "Vultures are birds of prey found in various regions of the world and are known for their scavenging behavior and role in maintaining healthy ecosystems by controlling waste and dead animal populations. Vultures are also considered as important indicators of environmental health."
    },
    {
      "name": "Hawk",
      "description":
          "Hawks are birds of prey found in various regions of the world and are known for their keen eyesight and powerful talons. Hawks play an important role in maintaining healthy ecosystems by controlling rodent and small animal populations."
    },
    {
      "name": "Penguin",
      "description":
          "Penguins are flightless birds found in the Southern Hemisphere, particularly in Antarctica. Penguins are known for their distinctive appearance and their ability to survive in extreme cold environments. They play an important role in maintaining healthy ecosystems by controlling krill and fish populations."
    },
    {
      "name": "Pigeon",
      "description":
          "Pigeons are birds found in various regions of the world and are known for their ability to adapt to urban environments. Pigeons are social birds that form large flocks and play an important role in maintaining healthy ecosystems by spreading seeds and helping to pollinate plants."
    },
    {
      "name": "Heron",
      "description":
          "Herons are wading birds found in various regions of the world and are known for their long legs and neck and their ability to hunt for fish. Herons play an important role in maintaining healthy ecosystems by controlling fish populations."
    },
    {
      "name": "Raven",
      "description":
          "Ravens are birds found in various regions of the world and are known for their intelligence and ability to solve problems. Ravens are social birds that form large groups and play an important role in maintaining healthy ecosystems by controlling waste and small animal populations."
    },
    {
      "name": "Stork",
      "description":
          "Storks are wading birds found in various regions of the world and are known for their large size and distinctive appearance. Storks play an important role in maintaining healthy ecosystems by controlling fish and insect populations."
    },
    {
      "name": "Albatross",
      "description":
          "Albatrosses are seabirds found in the Southern Ocean and are known for their large size, long wingspan, and their ability to fly great distances. Albatrosses play an important role in maintaining healthy ecosystems by controlling fish and squid populations."
    }
  ];
  final List _OrganismType = [
    {
      'name': 'Animals',
      'image': 'assets/monkey.jpeg',
    },
    {
      'name': 'Birds',
      'image': 'assets/Birds2.jpg',
    },
    {
      'name': 'Reptile',
      'image': 'assets/Reptile.jpg',
    },
    {
      'name': 'Aquatic',
      'image': 'assets/Aquatic.jpg',
    },
    {
      'name': 'Amphibians',
      'image': 'assets/Amphibians.jpg',
    },
    {
      'name': 'Insects',
      'image': 'assets/Insects.jpg',
    },
    {
      'name': 'Dinosaur',
      'image': 'assets/Dinosaur.png',
    },
  ];
  final List _animalOfDay = [
    {
      'name': 'Dogs',
      'image': 'assets/DogCrousel.png',
    },
    {
      'name': 'Parrot',
      'image': 'assets/ParrotCrousel.png',
    },
    {
      'name': 'Reptile',
      'image': 'assets/ReptileCrousel1.png',
    },
  ];
  List get ExtinctSpecies {
    return [..._extinctSpecies];
  }

  List get Animal {
    return [..._Animals];
  }

  List get Birds {
    return [..._Birds];
  }

  List get OrganismType {
    return [..._OrganismType];
  }
  List get animalOfDay{
    return [..._animalOfDay];
  }
  void favTap(){
    notifyListeners();
  }
   void addProduct(){
    notifyListeners();
  }
}
