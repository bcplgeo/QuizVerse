import '../models/question.dart';

// =========================================
// ANIMALS & WILDLIFE QUESTIONS
// =========================================

final List<Question> animalsWildlifeQuestions = [

Question(
    category: 'Animals & Wildlife',
    questionText: "Which group of animals has a backbone?",
    options: [
      "Invertebrates",
      "Vertebrates",
      "Arthropods",
      "Molluscs",
    ],
    correctAnswerIndex: 1,
    explanation: "Vertebrates possess a vertebral column. The group includes mammals, birds, reptiles, amphibians and fishes.",
    whyItMatters: "This is a basic distinction used to organise animal diversity and compare body plans.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which feature is characteristic of mammals?",
    options: [
      "Feathers",
      "Mammary glands that produce milk",
      "Gills throughout life",
      "An external skeleton made of chitin",
    ],
    correctAnswerIndex: 1,
    explanation: "Mammals have mammary glands that produce milk for their young and typically have hair at some stage of life.",
    whyItMatters: "Recognising defining characteristics helps distinguish major animal groups accurately.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is an amphibian?",
    options: [
      "Lizard",
      "Frog",
      "Pigeon",
      "Dolphin",
    ],
    correctAnswerIndex: 1,
    explanation: "Frogs are amphibians. Many amphibians have aquatic larval stages and undergo metamorphosis, although life histories vary.",
    whyItMatters: "Many amphibians depend on both aquatic and terrestrial habitats and can be sensitive to environmental change.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which group of animals has feathers?",
    options: [
      "Mammals",
      "Birds",
      "Reptiles",
      "Amphibians",
    ],
    correctAnswerIndex: 1,
    explanation: "Feathers are a defining characteristic of birds and serve roles in flight, insulation, display and protection.",
    whyItMatters: "Feather structure helps explain bird identification and adaptation to different environments.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which of these animals is an invertebrate?",
    options: [
      "Eagle",
      "Frog",
      "Octopus",
      "Tiger",
    ],
    correctAnswerIndex: 2,
    explanation: "An octopus is a mollusc and does not have a backbone. It has a soft body, arms with suckers and a highly developed nervous system.",
    whyItMatters: "Invertebrates make up most described animal species, so they are central to biodiversity.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the main function of a camel's hump?",
    options: [
      "To store water",
      "To store fat",
      "To store air",
      "To regulate body temperature directly",
    ],
    correctAnswerIndex: 1,
    explanation: "A camel's hump stores fat, which can be metabolised for energy when food is scarce. It is not a water tank.",
    whyItMatters: "This adaptation illustrates how animals cope with challenging habitats and resource shortages.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal commonly uses echolocation to navigate and locate prey?",
    options: [
      "Bat",
      "Peacock",
      "Kangaroo",
      "Tortoise",
    ],
    correctAnswerIndex: 0,
    explanation: "Many bats emit high-frequency sounds and interpret returning echoes to detect objects and prey, especially in low light.",
    whyItMatters: "Echolocation is an important sensory adaptation and a model for understanding animal navigation.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which is the largest living animal known on Earth?",
    options: [
      "African elephant",
      "Blue whale",
      "Whale shark",
      "Giraffe",
    ],
    correctAnswerIndex: 1,
    explanation: "The blue whale is the largest living animal known, with some individuals reaching around 30 metres in length.",
    whyItMatters: "This comparison highlights marine biodiversity and the ecological importance of large ocean animals.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is a marsupial?",
    options: [
      "Koala",
      "Polar bear",
      "Panda",
      "Hippopotamus",
    ],
    correctAnswerIndex: 0,
    explanation: "Koalas are marsupials. Their young are born at an early developmental stage and continue developing while attached to a teat, usually inside the pouch.",
    whyItMatters: "Marsupial reproduction illustrates the diversity of mammalian reproductive strategies.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is a monotreme, a mammal that lays eggs?",
    options: [
      "Platypus",
      "Kangaroo",
      "Sloth",
      "Seal",
    ],
    correctAnswerIndex: 0,
    explanation: "The platypus is a monotreme, a small group of mammals that lay eggs. Echidnas are also monotremes.",
    whyItMatters: "Monotremes demonstrate that mammalian evolution includes distinct reproductive strategies.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the term for an animal that is active mainly at night?",
    options: [
      "Diurnal",
      "Nocturnal",
      "Crepuscular",
      "Arboreal",
    ],
    correctAnswerIndex: 1,
    explanation: "Nocturnal animals are primarily active at night and may have enhanced hearing, smell or low-light vision.",
    whyItMatters: "Activity patterns influence animal behaviour, wildlife surveys and conservation planning.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What does 'arboreal' mean when describing an animal?",
    options: [
      "Living mainly in trees",
      "Living mainly underground",
      "Living in open oceans",
      "Active only at dawn",
    ],
    correctAnswerIndex: 0,
    explanation: "Arboreal animals spend much of their lives in trees. Examples include many monkeys, sloths and tree-dwelling reptiles.",
    whyItMatters: "Habitat-use terms help describe ecological niches and the adaptations animals need to move and feed.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which term describes animals that eat both plant and animal matter?",
    options: [
      "Herbivores",
      "Carnivores",
      "Omnivores",
      "Detritivores",
    ],
    correctAnswerIndex: 2,
    explanation: "Omnivores consume both plant and animal material. Their diets can vary by species, season and habitat.",
    whyItMatters: "Diet categories help explain food-web relationships and how species obtain energy.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is a ruminant with a multi-compartment stomach?",
    options: [
      "Cow",
      "Horse",
      "Rabbit",
      "Pig",
    ],
    correctAnswerIndex: 0,
    explanation: "Cattle are ruminants with four stomach compartments. Microbes in the rumen help digest fibrous plant material.",
    whyItMatters: "Ruminant digestion is important in ecology and animal agriculture because it enables use of fibrous vegetation.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the main role of a predator in an ecosystem?",
    options: [
      "To produce sunlight",
      "To consume other organisms",
      "To convert rocks into soil",
      "To pollinate every plant",
    ],
    correctAnswerIndex: 1,
    explanation: "Predators obtain energy by hunting and consuming other organisms. Predation can influence prey populations and ecosystem structure.",
    whyItMatters: "Predator–prey relationships help shape population dynamics and ecosystem balance.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is a keystone species?",
    options: [
      "A species with an ecological impact disproportionately large relative to its abundance",
      "The most numerous species in every habitat",
      "A species found only on islands",
      "Any species kept in a zoo",
    ],
    correctAnswerIndex: 0,
    explanation: "A keystone species has an ecological effect disproportionately large compared with its abundance. Removing it can cause substantial ecosystem changes.",
    whyItMatters: "Conservation priorities should consider ecological relationships, not just species counts.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is biodiversity?",
    options: [
      "The variety of life at genetic, species and ecosystem levels",
      "The number of large mammals only",
      "The total rainfall in a habitat",
      "The amount of oxygen in the atmosphere",
    ],
    correctAnswerIndex: 0,
    explanation: "Biodiversity refers to variation among living organisms at genetic, species and ecosystem levels.",
    whyItMatters: "Biodiversity supports ecosystem functioning and resilience and is central to conservation planning.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which process describes the seasonal movement of animals from one region to another?",
    options: [
      "Hibernation",
      "Migration",
      "Camouflage",
      "Moulting",
    ],
    correctAnswerIndex: 1,
    explanation: "Migration is regular movement between areas, often linked to breeding, food availability or seasonal conditions.",
    whyItMatters: "Migration routes connect habitats across large distances, so conservation must consider multiple regions.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is hibernation?",
    options: [
      "A prolonged state of reduced activity and metabolism during unfavourable conditions",
      "A daily feeding period",
      "The process of changing skin colour",
      "The migration of birds in summer",
    ],
    correctAnswerIndex: 0,
    explanation: "Hibernation is a prolonged physiological state involving greatly reduced metabolic activity, often helping animals survive cold or food scarcity.",
    whyItMatters: "Seasonal dormancy explains how animals cope with environmental stress and changing resources.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which adaptation helps many desert animals reduce water loss?",
    options: [
      "Producing very dilute urine",
      "Efficient water-conservation mechanisms",
      "Remaining wet all day",
      "Increasing evaporation from the skin",
    ],
    correctAnswerIndex: 1,
    explanation: "Many desert animals conserve water through behaviours and physiological mechanisms such as concentrated urine, dry faeces or nocturnal activity.",
    whyItMatters: "Water conservation is a key adaptation to arid environments.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is camouflage?",
    options: [
      "A feature that helps an organism blend into its surroundings",
      "A method of producing venom",
      "A form of parental care",
      "A type of migration",
    ],
    correctAnswerIndex: 0,
    explanation: "Camouflage makes an animal less conspicuous by matching colours, patterns or shapes to its surroundings. It can help avoid predators or approach prey.",
    whyItMatters: "Camouflage is an important survival adaptation and an example of natural selection.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is mimicry in animal biology?",
    options: [
      "Resembling another organism or feature to gain an advantage",
      "Changing body temperature",
      "A type of seasonal migration",
      "Shedding feathers",
    ],
    correctAnswerIndex: 0,
    explanation: "Mimicry occurs when an organism resembles another organism or environmental feature in a way that can reduce predation or improve feeding success.",
    whyItMatters: "Mimicry demonstrates how interactions among species can shape the evolution of appearance and behaviour.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animals commonly undergo metamorphosis from tadpole to adult?",
    options: [
      "Frogs",
      "Cats",
      "Owls",
      "Snakes",
    ],
    correctAnswerIndex: 0,
    explanation: "Many frogs develop from aquatic tadpoles into adults through metamorphosis, involving major changes in body form and physiology.",
    whyItMatters: "This explains why amphibians may depend on both aquatic and terrestrial habitats.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal uses a venomous bite to subdue prey?",
    options: [
      "Cobra",
      "Deer",
      "Pigeon",
      "Giant panda",
    ],
    correctAnswerIndex: 0,
    explanation: "Cobras are venomous snakes that deliver venom through specialised fangs. Venom composition varies among species.",
    whyItMatters: "Accurate identification and terminology support safer human–wildlife interactions.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the difference between venomous and poisonous animals?",
    options: [
      "Venom is actively delivered, while poison causes harm when touched or eaten",
      "There is no difference",
      "Poisonous animals always have fangs",
      "Venomous animals are always harmless",
    ],
    correctAnswerIndex: 0,
    explanation: "Venom is actively delivered through structures such as fangs or stingers, while poison generally causes harm when an organism is touched or ingested.",
    whyItMatters: "Correct terminology improves scientific communication and understanding of animal defence.",
    difficulty: 'Hard',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which marine animal is a cartilaginous fish?",
    options: [
      "Shark",
      "Tuna",
      "Salmon",
      "Seahorse",
    ],
    correctAnswerIndex: 0,
    explanation: "Sharks are cartilaginous fishes, meaning their skeletons are made primarily of cartilage rather than true bone.",
    whyItMatters: "This distinction is fundamental to vertebrate classification and marine biodiversity.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is the largest living fish species?",
    options: [
      "Great white shark",
      "Whale shark",
      "Bluefin tuna",
      "Manta ray",
    ],
    correctAnswerIndex: 1,
    explanation: "The whale shark is the largest living fish. Despite its size, it is a filter feeder that consumes plankton and small organisms.",
    whyItMatters: "It illustrates that large body size does not necessarily mean an animal is a top predator.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which marine mammal must surface to breathe air?",
    options: [
      "Dolphin",
      "Tuna",
      "Octopus",
      "Sea turtle",
    ],
    correctAnswerIndex: 0,
    explanation: "Dolphins are mammals that breathe air using lungs and must surface regularly. Their flippers help with steering and stability.",
    whyItMatters: "Marine mammals can be vulnerable to entanglement, vessel strikes and underwater noise.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is famous for rapidly changing its skin colour and pattern?",
    options: [
      "Cuttlefish",
      "Starfish",
      "Sea urchin",
      "Clam",
    ],
    correctAnswerIndex: 0,
    explanation: "Cuttlefish use specialised pigment cells and skin structures to rapidly change colour and pattern for camouflage and communication.",
    whyItMatters: "Cephalopod camouflage is an example of sophisticated behaviour and sensory-motor control.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is coral biologically classified as?",
    options: [
      "A plant",
      "A colony of tiny animals called polyps",
      "A type of rock",
      "A seaweed",
    ],
    correctAnswerIndex: 1,
    explanation: "Corals are animals in the phylum Cnidaria. Reef-building corals often form colonies of polyps that secrete calcium carbonate skeletons.",
    whyItMatters: "Understanding that corals are animals is important for reef conservation and recognising their sensitivity to environmental stress.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is coral bleaching primarily associated with?",
    options: [
      "Corals losing symbiotic algae or their pigments",
      "Corals turning into fish",
      "A sudden increase in shell thickness",
      "The migration of all reef fish",
    ],
    correctAnswerIndex: 0,
    explanation: "Coral bleaching occurs when corals lose much of their symbiotic algae or associated pigments, often under stress such as elevated sea temperatures.",
    whyItMatters: "Bleaching is a visible warning sign of reef stress and climate impacts on marine ecosystems.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is a major pollinator in many terrestrial ecosystems?",
    options: [
      "Bee",
      "Crocodile",
      "Shark",
      "Earthworm",
    ],
    correctAnswerIndex: 0,
    explanation: "Bees visit flowers to collect nectar and pollen, and many species transfer pollen between flowers in the process.",
    whyItMatters: "Pollination supports plant reproduction, food production and ecosystem diversity.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is an important ecological role of earthworms in many soils?",
    options: [
      "Mixing and aerating soil while processing organic matter",
      "Producing all atmospheric oxygen",
      "Preying on large mammals",
      "Stopping decomposition",
    ],
    correctAnswerIndex: 0,
    explanation: "Earthworms burrow through soil and consume organic material, helping mix soil layers, improve aeration and contribute to nutrient cycling.",
    whyItMatters: "Soil organisms support fertility and ecosystem processes that underpin terrestrial food webs and agriculture.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is an important seed disperser in many tropical forests?",
    options: [
      "Fruit-eating bird",
      "Coral polyp",
      "Sea sponge",
      "Earthworm only",
    ],
    correctAnswerIndex: 0,
    explanation: "Many fruit-eating birds swallow fruits and later deposit seeds in other locations, sometimes far from the parent plant.",
    whyItMatters: "Seed dispersal supports forest regeneration, plant distribution and ecosystem recovery.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is an invasive species?",
    options: [
      "A non-native species that spreads and causes or is likely to cause harm",
      "Any rare native species",
      "An animal that lives in a zoo",
      "A species that migrates every year",
    ],
    correctAnswerIndex: 0,
    explanation: "An invasive species is a non-native organism whose introduction and spread causes, or is likely to cause, ecological, economic or other harm.",
    whyItMatters: "Early detection and management can protect native biodiversity and ecosystem services.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What does 'Endangered' mean in the IUCN Red List framework?",
    options: [
      "A species facing a very high risk of extinction in the wild",
      "A species common everywhere",
      "A species kept only in captivity",
      "A species already extinct",
    ],
    correctAnswerIndex: 0,
    explanation: "Endangered is an IUCN Red List threatened category indicating a very high risk of extinction in the wild under specified criteria.",
    whyItMatters: "Conservation status helps prioritise action and should be interpreted using assessment evidence and date.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which organisation maintains the widely used Red List of Threatened Species?",
    options: [
      "IUCN",
      "World Trade Organization",
      "International Monetary Fund",
      "World Meteorological Organization",
    ],
    correctAnswerIndex: 0,
    explanation: "The International Union for Conservation of Nature (IUCN) maintains the IUCN Red List of Threatened Species, a global assessment of extinction risk.",
    whyItMatters: "The Red List is an important evidence source for conservation planning, policy and public awareness.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is poaching?",
    options: [
      "Illegal hunting, capturing or killing of wildlife",
      "Routine wildlife photography",
      "Seasonal animal migration",
      "A form of pollination",
    ],
    correctAnswerIndex: 0,
    explanation: "Poaching refers to the illegal hunting, capture or killing of wild animals, often for meat, body parts or trade.",
    whyItMatters: "Illegal wildlife exploitation can reduce populations, disrupt ecosystems and undermine conservation.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is a wildlife corridor?",
    options: [
      "A connected habitat route that allows animals to move between habitat areas",
      "A fenced area where animals cannot move",
      "A road used only by safari vehicles",
      "A boundary around a zoo",
    ],
    correctAnswerIndex: 0,
    explanation: "A wildlife corridor is a habitat connection that enables animals to move between otherwise separated habitat patches.",
    whyItMatters: "Corridors can reduce habitat fragmentation and support dispersal, migration and gene flow.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is habitat fragmentation?",
    options: [
      "Breaking continuous habitat into smaller, isolated patches",
      "Natural forest growth",
      "Seasonal change in animal colour",
      "An increase in regional rainfall",
    ],
    correctAnswerIndex: 0,
    explanation: "Habitat fragmentation occurs when continuous habitats are divided into smaller, often isolated patches by roads, agriculture or development.",
    whyItMatters: "Fragmentation can restrict movement, reduce access to resources and isolate populations.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is a main purpose of a national park?",
    options: [
      "Protecting natural ecosystems and wildlife under a legal framework",
      "Allowing unrestricted industrial development",
      "Replacing natural habitats with farms",
      "Keeping only domestic animals",
    ],
    correctAnswerIndex: 0,
    explanation: "A national park is a protected area established to conserve ecosystems, species and natural features, with activities regulated under applicable laws.",
    whyItMatters: "Protected areas support conservation, research, education and carefully managed nature-based tourism.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which of these can be an apex predator in its natural terrestrial ecosystem?",
    options: [
      "Tiger",
      "Rabbit",
      "Grasshopper",
      "Deer",
    ],
    correctAnswerIndex: 0,
    explanation: "Tigers can function as apex predators in ecosystems where they occur, with few or no natural predators as adults.",
    whyItMatters: "Apex predators can influence prey populations and broader ecosystem dynamics.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is a food chain?",
    options: [
      "A sequence showing how energy passes between organisms through feeding",
      "A list of animals arranged by size",
      "A map of migration routes",
      "A method of classifying rocks",
    ],
    correctAnswerIndex: 0,
    explanation: "A food chain represents a feeding pathway through which energy and nutrients move from producers to consumers and decomposers.",
    whyItMatters: "Food chains help explain energy transfer and the dependence of organisms within an ecosystem.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the role of decomposers in an ecosystem?",
    options: [
      "Breaking down dead organic matter and recycling nutrients",
      "Creating sunlight",
      "Stopping nutrient cycling",
      "Consuming only living top predators",
    ],
    correctAnswerIndex: 0,
    explanation: "Decomposers such as fungi and bacteria break down dead organisms and organic waste, releasing nutrients back into ecosystems.",
    whyItMatters: "Decomposition recycles nutrients and supports soil fertility and ecosystem productivity.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is an animal's home range?",
    options: [
      "The area it regularly uses for resources and activities",
      "The number of animals in a group",
      "A region it must defend at all times",
      "The climate zone where a species evolved",
    ],
    correctAnswerIndex: 0,
    explanation: "A home range is the area an animal regularly uses for feeding, mating and shelter. It is not necessarily defended as a territory.",
    whyItMatters: "Home-range information helps researchers understand habitat needs and plan protected areas.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is territorial behaviour in animals?",
    options: [
      "Defending an area against other individuals",
      "Moving randomly without a pattern",
      "Changing from larva to adult",
      "Feeding only at night",
    ],
    correctAnswerIndex: 0,
    explanation: "Territorial behaviour involves defending an area against other individuals, often to secure resources such as food, nesting sites or mates.",
    whyItMatters: "Territoriality influences population density, breeding success and the spatial organisation of wildlife.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal uses a long sticky tongue to capture ants and termites?",
    options: [
      "Giant anteater",
      "Cheetah",
      "Giraffe",
      "Walrus",
    ],
    correctAnswerIndex: 0,
    explanation: "Giant anteaters use a long, narrow tongue and specialised feeding adaptations to collect ants and termites from nests.",
    whyItMatters: "Specialised feeding adaptations show how anatomy evolves in response to particular food sources.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bird can hover while feeding on nectar?",
    options: [
      "Hummingbird",
      "Ostrich",
      "Penguin",
      "Albatross",
    ],
    correctAnswerIndex: 0,
    explanation: "Hummingbirds can hover by rapidly beating their wings, allowing them to feed from flowers while suspended in the air.",
    whyItMatters: "Hovering flight is a specialised adaptation that supports nectar feeding and pollination.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which mammal is capable of sustained powered flight?",
    options: [
      "Flying squirrel",
      "Bat",
      "Sugar glider",
      "Colugo",
    ],
    correctAnswerIndex: 1,
    explanation: "Bats are the only mammals capable of sustained powered flight. Flying squirrels and other gliding mammals glide rather than actively fly.",
    whyItMatters: "This distinction clarifies locomotion adaptations and the unique evolutionary features of bats.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Why do many sea turtles come ashore?",
    options: [
      "To lay eggs in nests on beaches",
      "To breathe through their shells",
      "To feed on beach plants",
      "Because adults cannot swim",
    ],
    correctAnswerIndex: 0,
    explanation: "Female sea turtles come ashore to lay eggs in nests dug in sand. Many species show natal homing, although its degree varies.",
    whyItMatters: "Protecting nesting beaches and reducing artificial-light and bycatch impacts are important for sea turtle conservation.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is the fastest land animal over short distances?",
    options: [
      "Lion",
      "Cheetah",
      "Pronghorn",
      "Horse",
    ],
    correctAnswerIndex: 1,
    explanation: "The cheetah is the fastest land animal in short bursts, with recorded speeds often cited around 100 km/h or more under suitable conditions.",
    whyItMatters: "Speed is an adaptation for catching agile prey, but sprinting is energetically expensive and cannot be sustained for long.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which large cat is generally recognised by its black rosette-shaped spots?",
    options: [
      "Cheetah",
      "Leopard",
      "Lion",
      "Cougar",
    ],
    correctAnswerIndex: 1,
    explanation: "Leopards have rosette-shaped markings across much of their coat. Cheetahs have solid black spots, while jaguars usually have larger rosettes that often contain central spots.",
    whyItMatters: "Coat patterns are useful for identifying species and understanding camouflage in different habitats.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which big cat is native to the Americas and has a particularly powerful bite relative to its size?",
    options: [
      "Jaguar",
      "Tiger",
      "Snow leopard",
      "Lion",
    ],
    correctAnswerIndex: 0,
    explanation: "The jaguar is native to the Americas and is known for its exceptionally powerful bite, which can help it penetrate tough prey coverings.",
    whyItMatters: "Predator anatomy is closely linked to hunting strategies and the ecological roles of carnivores.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bear species is primarily adapted to life on Arctic sea ice?",
    options: [
      "Sloth bear",
      "Sun bear",
      "Polar bear",
      "Spectacled bear",
    ],
    correctAnswerIndex: 2,
    explanation: "Polar bears are highly adapted to Arctic environments and rely heavily on sea ice as a platform for hunting seals.",
    whyItMatters: "Their dependence on sea ice makes them especially vulnerable to changes in Arctic climate and habitat availability.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is the tallest living land animal?",
    options: [
      "African elephant",
      "Giraffe",
      "Ostrich",
      "Camel",
    ],
    correctAnswerIndex: 1,
    explanation: "The giraffe is the tallest living land animal. Its long neck and legs allow it to browse high vegetation and provide a wide field of view.",
    whyItMatters: "Anatomical adaptations can reduce competition for food and influence how species use habitat.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal has the longest neck among living animals?",
    options: [
      "Camel",
      "Giraffe",
      "Ostrich",
      "Swan",
    ],
    correctAnswerIndex: 1,
    explanation: "The giraffe has an exceptionally long neck supported by specialised anatomy, including a seven-vertebra neck like most mammals, but with greatly elongated vertebrae.",
    whyItMatters: "This is a useful example of how evolutionary change can modify existing anatomical structures.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is known for carrying its young in a pouch?",
    options: [
      "Kangaroo",
      "Fox",
      "Wolf",
      "Badger",
    ],
    correctAnswerIndex: 0,
    explanation: "Kangaroos are marsupials. Their very underdeveloped young continue growing while attached to a teat inside the mother's pouch.",
    whyItMatters: "Marsupial development is an important comparison with placental mammal reproduction.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is the largest living land mammal?",
    options: [
      "White rhinoceros",
      "African bush elephant",
      "Giraffe",
      "Hippopotamus",
    ],
    correctAnswerIndex: 1,
    explanation: "The African bush elephant is the largest living land mammal. Adult males can weigh several tonnes.",
    whyItMatters: "Large herbivores can shape vegetation, disperse seeds and influence the structure of ecosystems.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is famous for using its trunk to grasp objects, smell and drink?",
    options: [
      "Rhinoceros",
      "Elephant",
      "Tapir",
      "Walrus",
    ],
    correctAnswerIndex: 1,
    explanation: "An elephant's trunk is a highly flexible fusion of the nose and upper lip, used for breathing, smelling, feeding, drinking and manipulation.",
    whyItMatters: "The trunk illustrates how specialised anatomy can support many functions within one structure.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal has a horn made primarily of keratin rather than a bony core?",
    options: [
      "Rhinoceros",
      "Deer",
      "Giraffe",
      "Buffalo",
    ],
    correctAnswerIndex: 0,
    explanation: "Rhinoceros horns are composed mainly of keratin, the same structural protein found in hair and nails, rather than a bony core.",
    whyItMatters: "Understanding horn composition helps distinguish rhino horns from the antlers of deer and informs wildlife-trade education.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What are antlers primarily made of?",
    options: [
      "Keratin",
      "Bone",
      "Cartilage",
      "Chitin",
    ],
    correctAnswerIndex: 1,
    explanation: "Deer antlers are made of bone and are typically shed and regrown annually in most deer species. During growth they are covered by vascular skin called velvet.",
    whyItMatters: "Antler growth is a distinctive mammalian adaptation connected with seasonal cycles and reproduction.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal group includes crocodiles and alligators?",
    options: [
      "Amphibians",
      "Crocodilians",
      "Mammals",
      "Cartilaginous fishes",
    ],
    correctAnswerIndex: 1,
    explanation: "Crocodiles and alligators are reptiles belonging to the order Crocodylia, commonly called crocodilians.",
    whyItMatters: "Accurate classification helps distinguish reptiles from superficially similar aquatic animals.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "How can crocodilians remain submerged for extended periods?",
    options: [
      "They breathe through their skin",
      "They can slow their metabolism and manage oxygen use",
      "They extract oxygen from water using gills",
      "They store air in their bones",
    ],
    correctAnswerIndex: 1,
    explanation: "Crocodilians can remain underwater for substantial periods by reducing activity and heart rate and managing oxygen stores; duration varies with temperature and activity.",
    whyItMatters: "This adaptation explains how aquatic predators conserve energy while waiting or moving underwater.",
    difficulty: 'Hard',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which reptile is known for shedding its tail as a defence mechanism?",
    options: [
      "Gecko",
      "Tortoise",
      "Cobra",
      "Monitor lizard only",
    ],
    correctAnswerIndex: 0,
    explanation: "Many geckos can shed part of their tail through autotomy when threatened. The detached tail may continue moving briefly and distract a predator.",
    whyItMatters: "Autotomy is a survival strategy, though tail loss has energetic and functional costs and regrowth varies by species.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which snake uses heat-sensitive pits to detect infrared radiation from warm prey?",
    options: [
      "Pit viper",
      "Python only",
      "King cobra",
      "Grass snake",
    ],
    correctAnswerIndex: 0,
    explanation: "Pit vipers have specialised loreal pits that detect infrared radiation, helping them locate warm-blooded prey in low light.",
    whyItMatters: "Specialised sensory systems show how predators detect prey beyond ordinary visible-light vision.",
    difficulty: 'Hard',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bird is flightless and native to Antarctica?",
    options: [
      "Emperor penguin",
      "Albatross",
      "Arctic tern",
      "Snowy owl",
    ],
    correctAnswerIndex: 0,
    explanation: "The emperor penguin is a flightless seabird adapted to life in Antarctic waters and ice. Its wings function as flippers for swimming.",
    whyItMatters: "Penguin adaptations demonstrate how the evolutionary modification of wings can support underwater locomotion.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bird is known for the longest annual migration of any animal, travelling between the Arctic and Antarctic regions?",
    options: [
      "Arctic tern",
      "Peregrine falcon",
      "Emperor penguin",
      "Peacock",
    ],
    correctAnswerIndex: 0,
    explanation: "The Arctic tern makes an exceptionally long annual migration between breeding areas in the Arctic and non-breeding areas near Antarctica. Total distance varies by route and individual.",
    whyItMatters: "Long-distance migration depends on connected habitats and suitable feeding areas across continents and oceans.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bird is widely recognised as the fastest animal during a hunting dive?",
    options: [
      "Golden eagle",
      "Peregrine falcon",
      "Ostrich",
      "Swift",
    ],
    correctAnswerIndex: 1,
    explanation: "The peregrine falcon can reach extremely high speeds during its hunting stoop, with estimates exceeding 300 km/h in some dives.",
    whyItMatters: "This is an example of specialised flight mechanics and behavioural adaptation in a predator.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bird is the largest living bird by height and mass?",
    options: [
      "Emu",
      "Ostrich",
      "Cassowary",
      "Albatross",
    ],
    correctAnswerIndex: 1,
    explanation: "The ostrich is the largest living bird. It is flightless but has powerful legs adapted for fast running.",
    whyItMatters: "Flightlessness can evolve when other survival strategies, such as running, become advantageous.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which bird is especially known for its ability to imitate a wide variety of sounds, including human speech?",
    options: [
      "Lyrebird",
      "Flamingo",
      "Stork",
      "Heron",
    ],
    correctAnswerIndex: 0,
    explanation: "Lyrebirds are renowned mimics and can reproduce sounds from other birds and aspects of their acoustic environment.",
    whyItMatters: "Vocal learning and mimicry are important behaviours in communication, courtship and animal cognition.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the main purpose of a bird's crop?",
    options: [
      "To grind food with stones",
      "To temporarily store and soften food",
      "To produce eggshells",
      "To filter blood",
    ],
    correctAnswerIndex: 1,
    explanation: "The crop is an expandable pouch in the oesophagus of many birds where food can be temporarily stored and softened before digestion.",
    whyItMatters: "Understanding digestive adaptations helps explain feeding behaviour and differences among bird species.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which structure helps birds grind food because they do not have teeth?",
    options: [
      "Gizzard",
      "Crop",
      "Trachea",
      "Cloaca",
    ],
    correctAnswerIndex: 0,
    explanation: "The gizzard is a muscular part of the bird digestive tract that mechanically grinds food, often with the aid of swallowed grit or small stones.",
    whyItMatters: "The gizzard is an adaptation that compensates for the absence of teeth in modern birds.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which group of animals has an exoskeleton and jointed legs?",
    options: [
      "Molluscs",
      "Arthropods",
      "Annelids",
      "Cnidarians",
    ],
    correctAnswerIndex: 1,
    explanation: "Arthropods have segmented bodies, jointed appendages and a chitin-based exoskeleton. The group includes insects, spiders and crustaceans.",
    whyItMatters: "Arthropods are extremely diverse and play major roles in pollination, decomposition, food webs and disease transmission.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "How do insects breathe?",
    options: [
      "Through lungs like mammals",
      "Through a network of tracheal tubes opening through spiracles",
      "Through gills in all life stages",
      "Through their digestive tract",
    ],
    correctAnswerIndex: 1,
    explanation: "Most insects exchange gases through a tracheal system: air enters through openings called spiracles and travels through branching tubes to tissues.",
    whyItMatters: "This respiratory design differs fundamentally from vertebrate lungs and is a key insect adaptation.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "How many legs does an adult insect typically have?",
    options: [
      "Four",
      "Six",
      "Eight",
      "Ten",
    ],
    correctAnswerIndex: 1,
    explanation: "Adult insects typically have six legs arranged in three pairs, attached to the thorax.",
    whyItMatters: "Leg number is a basic diagnostic feature used to distinguish insects from spiders and other arthropods.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "How many legs do spiders have?",
    options: [
      "Six",
      "Eight",
      "Ten",
      "Twelve",
    ],
    correctAnswerIndex: 1,
    explanation: "Spiders are arachnids and typically have eight legs. They also lack antennae and have two main body regions.",
    whyItMatters: "This distinction helps identify arachnids and separate them from insects, which have six legs.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal produces silk used to construct a web?",
    options: [
      "Spider",
      "Ant",
      "Beetle",
      "Earthworm",
    ],
    correctAnswerIndex: 0,
    explanation: "Spiders produce silk from specialised abdominal glands called spinnerets. Different silk types serve functions such as web construction, wrapping prey and egg protection.",
    whyItMatters: "Spider silk is a remarkable biological material with strength and elasticity that interest materials scientists.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which insect undergoes complete metamorphosis with egg, larva, pupa and adult stages?",
    options: [
      "Butterfly",
      "Grasshopper",
      "Dragonfly",
      "Cockroach",
    ],
    correctAnswerIndex: 0,
    explanation: "Butterflies undergo complete metamorphosis: egg, caterpillar larva, pupa and adult. Each stage has a distinct body form and role.",
    whyItMatters: "Life-cycle knowledge helps explain insect development, ecology and pest-management strategies.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the main ecological role of many termites?",
    options: [
      "Breaking down dead plant material and recycling nutrients",
      "Pollinating all flowering plants",
      "Hunting large mammals",
      "Producing oxygen by photosynthesis",
    ],
    correctAnswerIndex: 0,
    explanation: "Many termites feed on wood, leaf litter and other cellulose-rich material, with gut microbes helping digest it. They contribute to decomposition and nutrient cycling.",
    whyItMatters: "Termites can be ecosystem engineers, although some species also damage buildings and crops.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which insect is a well-known vector of malaria parasites?",
    options: [
      "Female Anopheles mosquito",
      "Housefly",
      "Honeybee",
      "Silkworm moth",
    ],
    correctAnswerIndex: 0,
    explanation: "Malaria is transmitted to humans through bites of infected female Anopheles mosquitoes, which carry Plasmodium parasites.",
    whyItMatters: "Understanding disease vectors is essential for public-health prevention and mosquito-control programmes.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which organism causes malaria?",
    options: [
      "A Plasmodium parasite",
      "A bacterium",
      "A fungus",
      "A roundworm",
    ],
    correctAnswerIndex: 0,
    explanation: "Malaria is caused by protozoan parasites of the genus Plasmodium. Several species infect humans and are transmitted by Anopheles mosquitoes.",
    whyItMatters: "Separating the pathogen from its vector is fundamental to understanding disease transmission and prevention.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which marine invertebrate has eight arms and is known for problem-solving ability?",
    options: [
      "Octopus",
      "Jellyfish",
      "Sea urchin",
      "Oyster",
    ],
    correctAnswerIndex: 0,
    explanation: "Octopuses are cephalopod molluscs with eight arms and complex nervous systems. Many species show learning, exploration and problem-solving behaviours.",
    whyItMatters: "Cephalopod cognition broadens understanding of intelligence beyond vertebrates.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal has stinging cells called cnidocytes?",
    options: [
      "Jellyfish",
      "Starfish",
      "Crab",
      "Sea cucumber",
    ],
    correctAnswerIndex: 0,
    explanation: "Jellyfish belong to the cnidarians, a group characterised by specialised stinging cells called cnidocytes, which contain structures used to capture prey or defend against threats.",
    whyItMatters: "Cnidocytes are a defining adaptation of this animal group and explain many jellyfish stings.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which marine animal can regenerate lost arms, with ability varying by species?",
    options: [
      "Starfish (sea star)",
      "Dolphin",
      "Tuna",
      "Sea turtle",
    ],
    correctAnswerIndex: 0,
    explanation: "Many sea stars can regenerate lost arms over time, although the extent and speed of regeneration vary among species and circumstances.",
    whyItMatters: "Regeneration is an important biological process studied in development, tissue repair and evolutionary biology.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is known for having a radula, a rasping feeding structure?",
    options: [
      "Snail",
      "Dolphin",
      "Eagle",
      "Frog",
    ],
    correctAnswerIndex: 0,
    explanation: "Many molluscs, including snails, use a radula, a ribbon-like structure bearing tiny teeth to scrape or cut food. Bivalves such as clams lack a radula.",
    whyItMatters: "The radula is a distinctive feeding adaptation and helps explain differences among mollusc groups.",
    difficulty: 'Hard',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal group includes crabs, lobsters and shrimps?",
    options: [
      "Crustaceans",
      "Arachnids",
      "Molluscs",
      "Echinoderms",
    ],
    correctAnswerIndex: 0,
    explanation: "Crabs, lobsters and shrimps are crustaceans, a diverse group of arthropods that typically have a hard exoskeleton and jointed appendages.",
    whyItMatters: "Crustaceans are ecologically and commercially important components of aquatic food webs.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is a filter feeder that strains plankton from water using baleen plates?",
    options: [
      "Blue whale",
      "Great white shark",
      "Dolphin",
      "Orca",
    ],
    correctAnswerIndex: 0,
    explanation: "Blue whales are baleen whales. They take in large volumes of water and use baleen plates to retain krill and other small prey.",
    whyItMatters: "Filter feeding is an efficient strategy that allows very large animals to feed on abundant small organisms.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which marine mammal is known for using tools, such as rocks, to open shellfish?",
    options: [
      "Sea otter",
      "Manatee",
      "Dugong",
      "Harbour seal",
    ],
    correctAnswerIndex: 0,
    explanation: "Sea otters are known to use stones as tools to break open hard-shelled prey, sometimes resting prey on their chests while floating.",
    whyItMatters: "Tool use is an important subject in animal cognition and shows behavioural flexibility in wild mammals.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is known for forming large herds and undertaking long migrations across the Serengeti ecosystem?",
    options: [
      "Wildebeest",
      "Polar bear",
      "Orangutan",
      "Snow leopard",
    ],
    correctAnswerIndex: 0,
    explanation: "Wildebeest participate in one of the best-known large mammal migrations in East Africa, moving across the Serengeti-Mara ecosystem in response to rainfall and grazing conditions.",
    whyItMatters: "Large migrations connect habitats and influence grazing patterns, predator behaviour and tourism economies.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which primate is native to India and is commonly recognised by its long tail and grey coat?",
    options: [
      "Rhesus macaque",
      "Ring-tailed lemur",
      "Howler monkey",
      "Gibbon",
    ],
    correctAnswerIndex: 0,
    explanation: "Rhesus macaques are widely distributed in parts of South and Central Asia, including India. They are adaptable primates that can live in varied habitats, including human-modified areas.",
    whyItMatters: "Understanding urban and rural primate ecology can support safer coexistence and reduce human–wildlife conflict.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which great ape is native to the forests of Borneo and Sumatra?",
    options: [
      "Orangutan",
      "Gorilla",
      "Chimpanzee",
      "Bonobo",
    ],
    correctAnswerIndex: 0,
    explanation: "Orangutans are great apes native to the islands of Borneo and Sumatra. They are highly arboreal and depend on forest habitats.",
    whyItMatters: "Forest loss and fragmentation are major threats to orangutan populations, making habitat conservation critical.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which great ape is native to central African forests?",
    options: [
      "Gorilla",
      "Orangutan",
      "Gibbon",
      "Lemur",
    ],
    correctAnswerIndex: 0,
    explanation: "Gorillas are great apes native to forests in central Africa, including lowland and mountainous habitats depending on the species and subspecies.",
    whyItMatters: "Gorilla conservation involves protecting forest habitats and addressing threats such as disease and illegal hunting.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is the closest living relative to humans among the options below?",
    options: [
      "Chimpanzee",
      "Macaque",
      "Lemur",
      "Tarsier",
    ],
    correctAnswerIndex: 0,
    explanation: "Humans share a recent common ancestor with chimpanzees and bonobos; among the listed options, chimpanzees are the closest living relatives.",
    whyItMatters: "Comparative primate biology helps scientists investigate human evolution, behaviour and genetics.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which animal is known for building dams that create or modify wetland habitats?",
    options: [
      "Beaver",
      "Otter",
      "Badger",
      "Mink",
    ],
    correctAnswerIndex: 0,
    explanation: "Beavers build dams from branches, mud and other materials, creating ponds and wetlands that can alter water flow and habitat availability.",
    whyItMatters: "Beavers are ecosystem engineers because their activities can increase habitat diversity and affect hydrology.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is an ecosystem engineer?",
    options: [
      "An organism that physically modifies or creates habitat for other organisms",
      "An animal that always lives underground",
      "A species that eats only plants",
      "A predator at the top of every food chain",
    ],
    correctAnswerIndex: 0,
    explanation: "An ecosystem engineer changes the physical environment in ways that create, modify or maintain habitats for other species. Beavers and some corals are examples.",
    whyItMatters: "This concept helps explain how certain species influence biodiversity beyond their direct feeding relationships.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which term describes the ability of an animal to maintain a relatively stable internal body temperature through metabolic processes?",
    options: [
      "Endothermy",
      "Ectothermy",
      "Camouflage",
      "Mimicry",
    ],
    correctAnswerIndex: 0,
    explanation: "Endotherms generate much of their body heat internally through metabolism and regulate temperature using physiological and behavioural mechanisms. Birds and mammals are endotherms.",
    whyItMatters: "Thermoregulation affects energy needs, activity patterns and the environments animals can occupy.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "Which term describes animals whose body temperature depends substantially on external environmental heat sources?",
    options: [
      "Ectothermy",
      "Endothermy",
      "Homeothermy only",
      "Hibernation",
    ],
    correctAnswerIndex: 0,
    explanation: "Ectotherms rely substantially on external heat sources to regulate body temperature. Many reptiles use behavioural strategies such as basking and seeking shade.",
    whyItMatters: "Ectothermy helps explain why temperature strongly influences the activity and distribution of many reptiles, amphibians and fishes.",
    difficulty: 'Medium',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the scientific study of animal behaviour called?",
    options: [
      "Ethology",
      "Ecology only",
      "Botany",
      "Geology",
    ],
    correctAnswerIndex: 0,
    explanation: "Ethology is the scientific study of animal behaviour, including behaviour in natural settings and its evolutionary and ecological context.",
    whyItMatters: "Ethology helps explain communication, mating, parental care, learning and social organisation in wildlife.",
    difficulty: 'Easy',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is habituation in animal behaviour?",
    options: [
      "A reduced response to a repeated, harmless stimulus",
      "Learning exclusively through reward",
      "A permanent change in body structure",
      "Seasonal migration",
    ],
    correctAnswerIndex: 0,
    explanation: "Habituation is a simple form of learning in which an animal's response to a repeated, non-threatening stimulus decreases over time.",
    whyItMatters: "Understanding habituation helps researchers interpret wildlife responses and avoid mistaking reduced alarm for absence of awareness.",
    difficulty: 'Hard',
  ),

Question(
    category: 'Animals & Wildlife',
    questionText: "What is the main purpose of a wildlife camera trap?",
    options: [
      "To record animals automatically when they pass a sensor",
      "To feed animals remotely",
      "To track weather only",
      "To prevent animal migration",
    ],
    correctAnswerIndex: 0,
    explanation: "Camera traps use motion or heat sensors to trigger photographs or videos when animals pass. They are widely used for monitoring elusive or nocturnal wildlife.",
    whyItMatters: "Camera traps support non-invasive surveys, species detection and estimates of occupancy or activity patterns.",
    difficulty: 'Easy',
  )

];

// =========================================
// END OF FILE
// =========================================
