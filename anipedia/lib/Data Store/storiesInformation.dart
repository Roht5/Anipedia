import 'package:flutter/material.dart';

class Stories with ChangeNotifier {
  List BookNames = [
    {
      'bookName': 'Panchatantra',
      'image': 'image',
      // 'stories':Panchatantra
    },
    {
      'bookName': 'The Fables of Aesop',
      'image': 'image',
      // 'stories':Panchatantra
    }
  ];
  final List _panchatantra = [
    {
      'storyName': 'The Monkey and The Crocodile',
      'image': 'image Adress',
      'story': [
        /*
        pov Types:
          narrator
          char1-odd char
          char2-even char
       */
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'Once upon a time, in a forest, there lived a monkey who resided on a jamoon (berry) tree, which was on the banks of a river. In the same forest, there lived a crocodile and his wife. One day, the crocodile came to the banks of the river and rested under the tree. The kindhearted monkey offered him some fruits. The crocodile came back the next day for more fruits, as he loved them. As days passed by, the crocodile and the monkey became good friends. One day, the monkey sent some fruits for the crocodile’s wife. She ate the fruits and liked them, but was jealous, as she didn’t like her husband spending time with the monkey.'
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'She told her husband...',
        },
        {
          'pov': 'char1',
          'name': 'Female Crocodile: ',
          'line':
              'If the fruits are so juicy, I wonder how sweet the monkey’s heart would be. Get me the heart of the monkey.'
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The crocodile was not willing to kill his friend, but had no choice.He invited the monkey to his house for dinner and that his wife would like to meet him. The monkey was happy, but couldn’t swim, so the crocodile took him on his back. The crocodile was happy that he had tricked the monkey, however, while talking, he blurted out the real reason for taking the monkey home.'
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'The clever monkey said...',
        },
        {
          'pov': 'char2',
          'name': 'Monkey: ',
          'line':
              'You should have told me earlier, I left my heart on the tree. We must go back and get it.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The crocodile believed him and took him back to the tree. Thus, the clever monkey saved his life.',
        },
      ],
      'Moral': 'Moral',
      'line': 'Choose your company wisely and always have presence of mind.'
    },
    //Full Story Detail
    {
      'storyName': 'The Stork and the Crab',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'Once upon a time, there lived a stork who used to pick fishes from the pond beside him, and eat them. However, as he grew older, he found it difficult to catch a single fish. In order to feed himself, he thought of a plan. He told the fish, frogs, and crabs, that some men are planning to fill the pond and grow crops, and that’s why there won’t be any fish in the pond. He also told them how sad he felt about this and that he will miss them all. The fish were sad and asked the stork to help them. The stork promised to take all of them to a bigger pond.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'However, he told them...',
        },
        {
          'pov': 'char 1',
          'name': 'Stork',
          'line': '"As I am old, I can take only a few of you at one go."',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The stork would take the fishes to a rock, kill them, and eat them up. Every time he was hungry, he would take a few of them to the rock and eat them. There lived a crab in the pond, who wanted to go to the bigger pond too. The stork thought of eating the crab for a change and agreed on helping him.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'On the way, the crab asked the stork...',
        },
        {
          'pov': 'char 2',
          'name': 'Crab',
          'line': '“Where is the big pond?”',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The stork laughed and pointed to the rock, which was filled with fish bones. The crab realised that the stork would kill him, and so quickly thought of a plan to save himself. He caught the stork’s neck and did not let it go until the stork died.',
        },
      ],
      'moral': 'Moral',
      'line': 'Always have a presence of mind and act quickly when in danger.'
    },
    {
      'storyName': 'The Elephants and the Mice',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'There was a village that was abandoned by its people after it shattered, post an earthquake. However, the mice living in the village decided to stay and make it their home. On the outskirts of this village, there was a lake, where a herd of elephants visited regularly to bathe and drink water. Since the village was on the way to this lake, the elephants trampled the mice while walking there. So, the king of mice decided to meet the elephants.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'He told them...',
        },
        {
          'pov': 'char 1',
          'name': 'King of Mice',
          'line':
              '” O elephants, as you travel through the village, many mice are trampled. We will be very grateful if you could please consider changing your route. We will remember and return the favour when you are in need.”',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'The elephant king laughed and said...',
        },
        {
          'pov': 'char 2',
          'name': 'Elephant King',
          'line':
              '“We are giant elephants. What favour can you mice return? Nevertheless, we honour your request and change our route.”',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'After a few days, the elephants got trapped and entangled in nets that were set up by hunters. They struggled hard to escape, but in vain. The elephant king remembered the promise made by the king of mice. So, he sent a fellow elephant who got lucky and was not trapped, to ask the mice king to come and help them.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'Soon, all the mice came and started nibbling the nets, and freed the elephants. The king of the elephants couldn’t thank the mice enough!',
        },
      ],
      'moral': 'Moral',
      'line':
          'A friend in need is a friend indeed. Always be kind to people, and grateful for their help.'
    },
    {
      'storyName': 'The Loyal Mongoose',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'A farmer couple had a pet mongoose. One day, the farmer and his wife had to urgently go out of the house for work, and so they left the mongoose with their infant, assured that he would guard their baby well. While they were gone, a snake stealthily entered the house and moved towards the cradle to attack the infant. The smart mongoose fought and killed the snake in order to protect the baby.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'When the farmer’s wife returned home, she was shocked to be greeted by blood stains on the mongoose’s mouth and teeth.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'She lost her temper and shouted...',
        },
        {
          'pov': 'char 1',
          'name': 'Farmer’s wife',
          'line': '“You killed my baby!” ',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'In her anger, she lost all control and killed the loyal mongoose. When she entered her house, she saw the baby alive, and the dead snake beside him. She realised what happened and regretted her actions.',
        },
      ],
      'moral': 'Moral',
      'line': 'Think before you act.'
    },

    {
      'storyName': 'The Tortoise and the Geese',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'Once upon a time, beside a lake, there lived a tortoise and two geese who were great friends. As the lake was drying, the geese decided to migrate to a new place. The tortoise also wanted to move with them, but he couldn’t fly, and so he pleaded the geese to take him with them. After trying really hard to convince them, finally, the geese agreed. They held a stick with their beaks and asked the tortoise to hold the stick with his mouth, warning him to not open his mouth and let go of the stick.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'As they flew high, some onlookers thought that the tortoise was kidnapped and commented:',
        },
        {
          'pov': 'char 1',
          'name': 'Onlookers',
          'line': '“Oh, the poor tortoise!”',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'This angered the tortoise and he immediately opened his mouth to say something back. As soon as he did, he fell to the ground and died.',
        },
      ],
      'moral': 'Moral',
      'line': 'Think before you speak. Listen to instructions, and follow them.'
    },
  ];
  List AesopFables = [
    {
      'storyName': 'Belling the Cat',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The Mice once called a meeting to decide on a plan to free themselves of their enemy, the Cat. At least they wished to find some way of knowing when she was coming, so they might have time to run away. Indeed, something had to be done, for they lived in such constant fear of her claws that they hardly dared stir from their dens by night or day.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'Many plans were discussed, but none of them was thought good enough. At last a very young Mouse got up and said:',
        },
        {
          'pov': 'char 1',
          'name': 'Young Mouse',
          'line':
              '"I have a plan that seems very simple, but I know it will be successful. All we have to do is to hang a bell about the Cat’s neck. When we hear the bell ringing we will know immediately that our enemy is coming."',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'All the Mice were much surprised that they had not thought of such a plan before. But in the midst of the rejoicing over their good fortune, an old Mouse arose and said:',
        },
        {
          'pov': 'char 2',
          'name': 'Old Mouse',
          'line':
              '"I will say that the plan of the young Mouse is very good. But let me ask one question: Who will bell the Cat?"',
        },
      ],
      'moral': 'Moral',
      'line':
          'It is one thing to say that something should be done, but quite a different matter to do it.'
    },
    {
      'storyName': 'The Town Mouse & the Country Mouse',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'A Town Mouse once visited a relative who lived in the country. For lunch the Country Mouse served wheat stalks, roots, and acorns, with a dash of cold water for drink. The Town Mouse ate very sparingly, nibbling a little of this and a little of that, and by her manner making it very plain that she ate the simple food only to be polite.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'After the meal the friends had a long talk, or rather the Town Mouse talked about her life in the city while the Country Mouse listened. They then went to bed in a cozy nest in the hedgerow and slept in quiet and comfort until morning. In her sleep the Country Mouse dreamed she was a Town Mouse with all the luxuries and delights of city life that her friend had described for her. So the next day when the Town Mouse asked the Country Mouse to go home with her to the city, she gladly said yes.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'When they reached the mansion in which the Town Mouse lived, they found on the table in the dining room the leavings of a very fine banquet. There were sweetmeats and jellies, pastries, delicious cheeses, indeed, the most tempting foods that a Mouse can imagine. But just as the Country Mouse was about to nibble a dainty bit of pastry, she heard a Cat mew loudly and scratch at the door. In great fear the Mice scurried to a hiding place, where they lay quite still for a long time, hardly daring to breathe. When at last they ventured back to the feast, the door opened suddenly and in came the servants to clear the table, followed by the House Dog.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The Country Mouse stopped in the Town Mouse’s den only long enough to pick up her carpet bag and umbrella. And as she hurried away, she said to the town mouse...',
        },
        {
          'pov': 'char 1',
          'name': 'Country Mouse',
          'line':
              '"You may have luxuries and dainties that I have not, but I prefer my plain food and simple life in the country with the peace and security that go with it."',
        },
      ],
      'moral': 'Moral',
      'line':
          'Poverty with security is better than plenty in the midst of fear and uncertainty.'
    },
    {
      'storyName': 'The Wolf & the Crane',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'A Wolf had been feasting too greedily, and a bone had stuck crosswise in his throat. He could get it neither up nor down, and of course he could not eat a thing. Naturally that was an awful state of affairs for a greedy Wolf.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'So away he hurried to the Crane. He was sure that she, with her long neck and bill, would easily be able to reach the bone and pull it out. Then the Wolf said to the Crane...',
        },
        {
          'pov': 'char 1',
          'name': 'Wolf',
          'line':
              '"I will reward you very handsomely, if you pull that bone out for me."',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The Crane, as you can imagine, was very uneasy about putting her head in a Wolf’s throat. But she was grasping in nature, so she did what the Wolf asked her to do.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'When the Wolf felt that the bone was gone, he started to walk away. Then the Crane called...',
        },
        {
          'pov': 'char 2',
          'name': 'Crane',
          'line': '"But what about my reward!"',
        },
        {
          'pov': 'char 1',
          'name': 'Wolf',
          'line': '"What!" ',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': '(Snarled the Wolf)',
        },
        {
          'pov': 'char 1',
          'name': 'Wolf',
          'line':
              '"Haven’t you got it? Isn’t it enough that I let you take your head out of my mouth without snapping it off?"',
        },
      ],
      'moral': 'Moral',
      'line': 'Expect no reward for serving the wicked.'
    },
    {
      'storyName': 'The Lion & the Mouse',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'A Lion lay asleep in the forest, his great head resting on his paws. A timid little Mouse came upon him unexpectedly, and in her fright and haste to get away, ran across the Lion’s nose. Roused from his nap, the Lion laid his huge paw angrily on the tiny creature to kill her.',
        },
        {
          'pov': 'char 1',
          'name': 'Mouse',
          'line': '"Spare me!"',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': '(Begged the poor Mouse)',
        },
        {
          'pov': 'char 1',
          'name': 'Mouse',
          'line': '"Please let me go and some day I will surely repay you."',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'The Lion was much amused to think that a Mouse could ever help him. But he was generous and finally let the Mouse go.',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'Some days later, while stalking his prey in the forest, the Lion was caught in the toils of a hunter’s net. Unable to free himself, he filled the forest with his angry roaring. The Mouse knew the voice and quickly found the Lion struggling in the net. Running to one of the great ropes that bound him, she gnawed it until it parted, and soon the Lion was free. (Then the Mouse said...)',
        },
        {
          'pov': 'char 1',
          'name': 'Mouse',
          'line':
              '"You laughed when I said I would repay you, Now you see that even a Mouse can help a Lion."',
        },
      ],
      'moral': 'Moral',
      'line': 'A kindness is never wasted'
    },
    {
      'storyName': 'The Oak & the Reeds',
      'image': '',
      'story': [
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'A Giant Oak stood near a brook in which grew some slender Reeds. When the wind blew, the great Oak stood proudly upright with its hundred arms uplifted to the sky. But the Reeds bowed low in the wind and sang a sad and mournful song.',
        },
        {
          'pov': 'char 1',
          'name': 'Oak',
          'line':
              '"You have reason to complain, the slightest breeze that ruffles the surface of the water makes you bow your heads, while I, the mighty Oak, stand upright and firm before the howling tempest."',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line': 'The Reeds replied...',
        },
        {
          'pov': 'char 2',
          'name': 'Reeds',
          'line':
              '"Do not worry about us, the winds do not harm us. We bow before them and so we do not break. You, in all your pride and strength, have so far resisted their blows. But the end is coming."',
        },
        {
          'pov': 'narrator',
          'name': 'Narrator',
          'line':
              'As the Reeds spoke a great hurricane rushed out of the north. The Oak stood proudly and fought against the storm, while the yielding Reeds bowed low. The wind redoubled in fury, and all at once the great tree fell, torn up by the roots, and lay among the pitying Reeds.',
        },
      ],
      'moral': 'Moral',
      'line':
          'Better to yield when it is folly to resist, than to resist stubbornly and be destroyed.'
    },
  ];


  List get Panchatantra {
    return [..._panchatantra];
  }
}
