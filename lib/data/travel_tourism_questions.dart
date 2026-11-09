import '../models/question.dart';

// =========================================
// TRAVEL & TOURISM QUESTIONS
// =========================================

final List<Question> travelTourismQuestions = [

Question(
    category: "Travel & Tourism",
    questionText: "What is a passport primarily used for?",
    options: [
      "Proof of hotel payment",
      "Official identity and nationality document for international travel",
      "Automatic permission to enter every country",
      "Airline boarding authorisation",
    ],
    correctAnswerIndex: 1,
    explanation: "A passport is an official government document identifying its holder and nationality; it is commonly required for international travel.",
    whyItMatters: "It is a core border document, but it does not itself guarantee entry.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a visa?",
    options: [
      "An authorisation to seek entry or stay in a country under stated conditions",
      "A hotel reservation",
      "An airline boarding pass",
      "A travel insurance policy",
    ],
    correctAnswerIndex: 0,
    explanation: "A visa is permission issued by a destination's authorities for a defined purpose and period, subject to conditions.",
    whyItMatters: "Checking visa rules before departure helps prevent denied boarding or refusal at the border.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does a round-trip ticket normally cover?",
    options: [
      "One journey only",
      "Travel to a destination and return to the origin",
      "Unlimited destinations",
      "A journey with no fixed date",
    ],
    correctAnswerIndex: 1,
    explanation: "A round-trip ticket generally covers travel from an origin to a destination and a return journey.",
    whyItMatters: "Understanding ticket types helps travellers compare fares and itinerary conditions.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a layover?",
    options: [
      "A stop between flight segments at an intermediate airport",
      "A permanent destination change",
      "A hotel-only holiday",
      "A baggage inspection",
    ],
    correctAnswerIndex: 0,
    explanation: "A layover is a scheduled stop at an intermediate airport between flight segments, often involving an aircraft or terminal change.",
    whyItMatters: "Layover duration affects connection risk and transit-document requirements.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "How does a non-stop flight differ from a direct flight?",
    options: [
      "They always mean the same thing",
      "A non-stop flight has no intermediate landing; a direct flight may stop en route",
      "A non-stop flight always changes aircraft",
      "A direct flight is always international",
    ],
    correctAnswerIndex: 1,
    explanation: "A non-stop flight travels without landing elsewhere. A direct flight may make an intermediate stop while retaining the same flight number.",
    whyItMatters: "The distinction helps travellers understand journey duration and stops.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is an open-jaw itinerary?",
    options: [
      "A trip using different cities for arrival and departure, with a surface journey between them",
      "A flight with no assigned seat",
      "A ticket with no destination",
      "A flight that returns immediately",
    ],
    correctAnswerIndex: 0,
    explanation: "An open-jaw itinerary flies into one city and departs from another, or returns to a different origin, with a surface journey between points.",
    whyItMatters: "It can reduce backtracking on multi-city trips.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a boarding pass used for?",
    options: [
      "Confirming hotel check-in",
      "Authorising a passenger to board a specific flight",
      "Obtaining a passport",
      "Paying customs duties",
    ],
    correctAnswerIndex: 1,
    explanation: "A boarding pass contains passenger and flight details and is used at airport security and boarding checkpoints.",
    whyItMatters: "Keeping it accessible helps travellers navigate airport procedures.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does baggage allowance specify?",
    options: [
      "The number of airports in a country",
      "Permitted quantity, weight and dimensions of cabin and checked luggage",
      "The time available for boarding",
      "The maximum holiday duration",
    ],
    correctAnswerIndex: 1,
    explanation: "Baggage allowance defines the quantity, weight and dimensions permitted under an airline or fare's rules.",
    whyItMatters: "Checking limits helps avoid excess-baggage fees and delays.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a red-eye flight?",
    options: [
      "An overnight flight, often arriving early in the morning",
      "A daylight-only flight",
      "A flight without cabin lighting",
      "A cancelled flight",
    ],
    correctAnswerIndex: 0,
    explanation: "A red-eye is an overnight flight that typically departs late and arrives early the next day.",
    whyItMatters: "Its timing affects sleep, transfers and the first day's itinerary.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What can travel insurance cover?",
    options: [
      "Every possible disruption without exclusions",
      "Specified risks such as eligible medical costs, cancellation or baggage loss",
      "Visa approval",
      "Passport replacement in every case",
    ],
    correctAnswerIndex: 1,
    explanation: "Travel insurance may cover specified medical expenses, cancellation, interruption, baggage loss or delays, depending on policy terms and exclusions.",
    whyItMatters: "Check limits, exclusions and pre-existing-condition rules before purchase.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does an official travel advisory provide?",
    options: [
      "A guarantee that a destination is safe",
      "Government information about safety, security, health or entry conditions",
      "A list of every restaurant",
      "Airline compensation",
    ],
    correctAnswerIndex: 1,
    explanation: "A travel advisory communicates official guidance about risks and conditions affecting travel to a destination.",
    whyItMatters: "It supports informed decisions and preparation for changing conditions.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is immigration control at an international border concerned with?",
    options: [
      "Entry and exit eligibility under national rules",
      "Weighing checked luggage",
      "Selling airline tickets",
      "Issuing hotel keys",
    ],
    correctAnswerIndex: 0,
    explanation: "Immigration authorities examine identity, nationality, travel purpose and permission to enter or leave a country.",
    whyItMatters: "Understanding the process reduces confusion at international borders.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is customs control primarily concerned with?",
    options: [
      "Goods entering or leaving a country",
      "Assigning aircraft seats",
      "Hotel reservations",
      "Boarding groups",
    ],
    correctAnswerIndex: 0,
    explanation: "Customs authorities enforce rules on goods crossing borders, including declarations, duties and restricted or prohibited items.",
    whyItMatters: "Knowing customs rules helps avoid confiscation, fines or legal problems.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does duty-free shopping mean?",
    options: [
      "All goods are free",
      "Certain local taxes or duties are not charged, subject to rules",
      "Purchases are exempt from every country's import limits",
      "Prices are not displayed",
    ],
    correctAnswerIndex: 1,
    explanation: "Duty-free shops sell eligible goods without certain local taxes or duties; destination allowances and import taxes may still apply.",
    whyItMatters: "Check destination allowances rather than assuming duty-free goods have no import limits.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a tourist visa generally intended for?",
    options: [
      "Unrestricted employment",
      "A temporary leisure visit or similar permitted purpose",
      "Permanent residence",
      "Automatic citizenship",
    ],
    correctAnswerIndex: 1,
    explanation: "A tourist visa generally permits a temporary visit for leisure or related non-work purposes, subject to destination-specific conditions.",
    whyItMatters: "The correct visa category matters because permitted activities differ by country.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a transit visa?",
    options: [
      "Authorisation that may be required to pass through a country en route elsewhere",
      "A permanent work permit",
      "A local bus ticket",
      "A passport replacement",
    ],
    correctAnswerIndex: 0,
    explanation: "Some countries require certain travellers to obtain a transit visa when passing through their territory or airport.",
    whyItMatters: "Requirements depend on nationality, airport, terminal changes and border-control procedures.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a hotel confirmation number?",
    options: [
      "A reference used to retrieve a reservation",
      "Proof of citizenship",
      "A credit card replacement",
      "A currency code",
    ],
    correctAnswerIndex: 0,
    explanation: "A hotel confirmation number is a booking reference used by the property or provider to locate a reservation.",
    whyItMatters: "Keeping it available simplifies check-in and resolving booking discrepancies.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does hotel check-in time usually indicate?",
    options: [
      "When breakfast ends",
      "The standard earliest time a guest may access the room",
      "The deadline to leave",
      "When the hotel closes",
    ],
    correctAnswerIndex: 1,
    explanation: "Check-in time is when a guest can normally access the room; early access may depend on availability or a fee.",
    whyItMatters: "Confirming arrival arrangements helps coordinate transfers and room access.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does hotel check-out time mean?",
    options: [
      "The deadline to vacate the room",
      "When the pool opens",
      "When a booking is first made",
      "When room service begins",
    ],
    correctAnswerIndex: 0,
    explanation: "Check-out time is the deadline by which guests are generally expected to leave the room and settle charges.",
    whyItMatters: "Knowing it helps avoid late fees and plan onward transport.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a hostel commonly designed to provide?",
    options: [
      "Only luxury villas",
      "Budget accommodation, often with shared facilities or dormitories",
      "Air transport",
      "Wildlife safaris",
    ],
    correctAnswerIndex: 1,
    explanation: "Hostels commonly offer budget accommodation, often with shared dormitories, bathrooms or social spaces; private rooms may also exist.",
    whyItMatters: "It helps travellers compare cost, privacy and social preferences.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is an all-inclusive resort package?",
    options: [
      "Accommodation with specified meals, drinks and selected services bundled",
      "A flight ticket only",
      "Every possible expense without exception",
      "A room without meals",
    ],
    correctAnswerIndex: 0,
    explanation: "All-inclusive packages generally bundle accommodation with specified food, beverages and activities; inclusions vary by property.",
    whyItMatters: "Reading terms helps prevent unexpected charges.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a bed-and-breakfast (B&B)?",
    options: [
      "Accommodation that typically includes an overnight stay and breakfast",
      "A long-distance train ticket",
      "A campsite without facilities",
      "A restaurant without rooms",
    ],
    correctAnswerIndex: 0,
    explanation: "A B&B provides overnight accommodation and breakfast, often on a smaller scale than a full-service hotel.",
    whyItMatters: "It helps travellers compare service levels and inclusions.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a destination management organisation (DMO)?",
    options: [
      "An organisation coordinating or promoting tourism for a destination",
      "An airline security department",
      "A hotel cleaning team",
      "A passport authority",
    ],
    correctAnswerIndex: 0,
    explanation: "A DMO coordinates tourism development, promotion, stakeholder collaboration and visitor information for a place.",
    whyItMatters: "DMOs influence destination branding, visitor dispersal and tourism planning.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is sustainable tourism?",
    options: [
      "Tourism considering economic, social and environmental impacts over time",
      "Tourism focused only on visitor volume",
      "Travel that always uses aircraft",
      "Tourism excluding local communities",
    ],
    correctAnswerIndex: 0,
    explanation: "Sustainable tourism accounts for current and future impacts on visitors, industry, the environment and host communities.",
    whyItMatters: "It supports long-term destination viability and reduces negative impacts.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is ecotourism most closely associated with?",
    options: [
      "Responsible travel to natural areas supporting conservation and local communities",
      "Shopping tourism",
      "Business travel to financial districts",
      "Cruises focused only on entertainment",
    ],
    correctAnswerIndex: 0,
    explanation: "Ecotourism centres on responsible travel to natural areas that conserves the environment, sustains local wellbeing and includes interpretation or education.",
    whyItMatters: "It links visitor experiences with conservation and community benefits.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is overtourism?",
    options: [
      "Tourism causing unacceptable pressure on residents, places or environments",
      "A destination receiving no visitors",
      "Tourism limited to one season",
      "A type of insurance",
    ],
    correctAnswerIndex: 0,
    explanation: "Overtourism describes tourism impacts perceived as excessive or poorly managed for a destination, residents or visitors.",
    whyItMatters: "It encourages visitor management, dispersal and resident engagement.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is tourism seasonality?",
    options: [
      "Variation in visitor demand across times of the year",
      "A rule that hotels close annually",
      "Airport screening",
      "Distance between attractions",
    ],
    correctAnswerIndex: 0,
    explanation: "Seasonality refers to recurring fluctuations in visitor numbers or demand across seasons, months or other periods.",
    whyItMatters: "It affects staffing, prices, infrastructure use and destination revenue.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a shoulder season?",
    options: [
      "The period between peak and low travel seasons",
      "The busiest holiday week",
      "A period when all hotels close",
      "The first day of a year",
    ],
    correctAnswerIndex: 0,
    explanation: "Shoulder season lies between peak and off-peak periods and may offer moderate demand, prices and weather.",
    whyItMatters: "It can reduce crowding while retaining access to attractions.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does tourism carrying capacity mean?",
    options: [
      "The visitor use a place can sustain without unacceptable impacts",
      "The weight limit of a suitcase",
      "The number of aircraft at an airport",
      "The number of hotel employees",
    ],
    correctAnswerIndex: 0,
    explanation: "Carrying capacity considers visitor use a destination can sustain without unacceptable environmental, social or experiential impacts.",
    whyItMatters: "It informs crowd management and conservation; it is context-dependent, not one universal number.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a UNESCO World Heritage Site?",
    options: [
      "A property inscribed for outstanding universal value under UNESCO criteria",
      "Any popular hotel",
      "A site owned by the UN",
      "A destination with free entry",
    ],
    correctAnswerIndex: 0,
    explanation: "A World Heritage Site is a cultural or natural property inscribed on UNESCO's list for outstanding universal value and protected through management arrangements.",
    whyItMatters: "The designation highlights conservation responsibilities as well as global significance.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "Which organisation administers the World Heritage Convention and List?",
    options: [
      "WHO",
      "UNESCO",
      "IATA",
      "WTO",
    ],
    correctAnswerIndex: 1,
    explanation: "UNESCO administers the World Heritage Convention and its list through the convention's intergovernmental processes and advisory bodies.",
    whyItMatters: "It helps distinguish formal heritage status from informal tourism labels.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a national park generally established to do?",
    options: [
      "Protect important natural areas, ecosystems and wildlife",
      "Permit unrestricted commercial construction",
      "Serve only as a shopping zone",
      "Replace local government",
    ],
    correctAnswerIndex: 0,
    explanation: "National parks are protected areas established under law to conserve ecological, geological or cultural values.",
    whyItMatters: "Following park rules supports biodiversity conservation and responsible visitation.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a marine protected area (MPA)?",
    options: [
      "A defined marine area where activities are managed for conservation",
      "A swimming pool",
      "A port used only by fishing vessels",
      "A cruise ship",
    ],
    correctAnswerIndex: 0,
    explanation: "An MPA is a defined marine space managed to achieve long-term conservation of nature, with rules varying by site.",
    whyItMatters: "MPAs can protect habitats while allowing carefully managed recreation and fisheries.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a travel itinerary?",
    options: [
      "A planned schedule of transport, accommodation and activities",
      "A nationality document",
      "A restaurant receipt",
      "Airport security rules only",
    ],
    correctAnswerIndex: 0,
    explanation: "An itinerary organises trip dates, destinations, transport, accommodation and planned activities.",
    whyItMatters: "A coherent plan helps manage travel time, reservations and contingencies.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a package holiday?",
    options: [
      "A trip sold as a combination of travel services under applicable rules",
      "A suitcase sold with a lock",
      "A hotel room by the hour",
      "A local bus ticket",
    ],
    correctAnswerIndex: 0,
    explanation: "A package holiday commonly combines services such as transport and accommodation for the same trip; legal definitions vary by jurisdiction.",
    whyItMatters: "Understanding package terms clarifies who is responsible if a component changes or fails.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a travel aggregator?",
    options: [
      "A platform comparing or combining options from multiple providers",
      "A border checkpoint",
      "A hotel loyalty programme only",
      "A travel document",
    ],
    correctAnswerIndex: 0,
    explanation: "A travel aggregator presents options from multiple suppliers or booking sources for comparison.",
    whyItMatters: "Check final terms and provider details because the aggregator may not operate the service.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is dynamic pricing in travel?",
    options: [
      "Prices changing with demand, timing and available inventory",
      "A fixed price that never changes",
      "A price set only by the traveller",
      "A fare including every tax worldwide",
    ],
    correctAnswerIndex: 0,
    explanation: "Dynamic pricing adjusts fares or room rates based on demand, booking patterns, inventory and other commercial factors.",
    whyItMatters: "It helps explain why prices can change before booking.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a stopover?",
    options: [
      "A planned break at an intermediate point, often longer than a connection",
      "A cancelled flight",
      "A baggage inspection",
      "A boarding group",
    ],
    correctAnswerIndex: 0,
    explanation: "A stopover is a planned break at an intermediate point, generally longer than a normal connection; exact fare definitions vary.",
    whyItMatters: "Stopovers can add a destination but may change fare and visa requirements.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is jet lag?",
    options: [
      "Temporary circadian disruption after rapid travel across time zones",
      "An aircraft engine fault",
      "A fear of flying",
      "A luggage delay",
    ],
    correctAnswerIndex: 0,
    explanation: "Jet lag is a temporary mismatch between the body's internal clock and local time after rapid travel across time zones.",
    whyItMatters: "Sleep, light exposure and activity planning can support adjustment.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is the International Date Line?",
    options: [
      "A roughly 180-degree longitude line where the calendar date generally changes",
      "The equator",
      "A country's airspace boundary",
      "The Tropic of Cancer",
    ],
    correctAnswerIndex: 0,
    explanation: "The International Date Line is an irregular line near 180 degrees longitude where the calendar date changes; it bends around some countries and islands.",
    whyItMatters: "It matters for flight schedules and trans-Pacific journeys.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is the equator?",
    options: [
      "The 0-degree latitude line dividing Northern and Southern Hemispheres",
      "The 0-degree longitude line",
      "The Arctic Circle",
      "The International Date Line",
    ],
    correctAnswerIndex: 0,
    explanation: "The equator is the imaginary circle at 0 degrees latitude, dividing Earth into Northern and Southern Hemispheres.",
    whyItMatters: "Latitude helps with maps, navigation and understanding climate zones.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is the Prime Meridian?",
    options: [
      "The reference line at 0 degrees longitude",
      "The line at 0 degrees latitude",
      "The land-sea boundary",
      "The centre of the Pacific",
    ],
    correctAnswerIndex: 0,
    explanation: "The Prime Meridian is the reference meridian at 0 degrees longitude, conventionally passing through Greenwich, London.",
    whyItMatters: "It underpins global coordinate systems and timekeeping history.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does UTC stand for?",
    options: [
      "Universal Time Coordinated",
      "Coordinated Universal Time",
      "United Travel Clock",
      "Universal Transit Calendar",
    ],
    correctAnswerIndex: 1,
    explanation: "UTC stands for Coordinated Universal Time, the primary reference standard for international timekeeping.",
    whyItMatters: "It reduces ambiguity when coordinating journeys across time zones.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is altitude sickness?",
    options: [
      "Illness that can occur when ascending to high altitude too quickly",
      "A fear of heights only",
      "A condition caused by sea-level humidity",
      "A food allergy",
    ],
    correctAnswerIndex: 0,
    explanation: "Altitude illness can occur when a person ascends too quickly for the body to adapt to lower oxygen availability; acute mountain sickness is a common form.",
    whyItMatters: "Gradual ascent and awareness of warning signs matter during high-altitude travel.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is acclimatisation at high altitude?",
    options: [
      "The body's gradual adjustment to lower oxygen availability",
      "Learning a local language",
      "Reducing luggage weight",
      "Avoiding weather forecasts",
    ],
    correctAnswerIndex: 0,
    explanation: "Acclimatisation is the body's set of physiological adjustments to lower oxygen pressure at altitude, typically over days or longer.",
    whyItMatters: "Allowing time to acclimatise can reduce altitude-illness risk.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does a travel health clinic commonly advise about?",
    options: [
      "Destination-specific health risks, vaccinations and prevention",
      "Hotel upgrades",
      "Seat selection",
      "Currency rates only",
    ],
    correctAnswerIndex: 0,
    explanation: "Travel health services assess itinerary-specific risks and advise on vaccinations, medicines, food and water precautions and insect protection.",
    whyItMatters: "Preparation should reflect destination, activities, duration and personal circumstances.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "Why check local laws and customs before travel?",
    options: [
      "Legal requirements and social expectations differ between destinations",
      "All countries have identical laws",
      "Tourists are exempt from local law",
      "Customs apply only in airports",
    ],
    correctAnswerIndex: 0,
    explanation: "Travellers are generally subject to local laws, while customs shape expectations around dress, photography, religious sites and public behaviour.",
    whyItMatters: "Preparation helps avoid legal and cultural misunderstandings.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is responsible wildlife tourism?",
    options: [
      "Wildlife viewing that prioritises animal welfare, habitat protection and ethical operators",
      "Touching wild animals",
      "Feeding wildlife for photos",
      "Chasing animals for close views",
    ],
    correctAnswerIndex: 0,
    explanation: "Responsible wildlife tourism minimises disturbance, avoids harmful interactions and supports conservation standards and ethical operators.",
    whyItMatters: "Tourist choices influence animal welfare and habitat pressure.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a safari commonly associated with?",
    options: [
      "Guided wildlife viewing in natural areas, especially in parts of Africa",
      "Urban shopping in Europe",
      "Polar cruises only",
      "High-speed rail",
    ],
    correctAnswerIndex: 0,
    explanation: "A safari is a journey or expedition now commonly associated with guided wildlife viewing in natural areas, particularly in parts of Africa.",
    whyItMatters: "Selecting ethical operators supports conservation and responsible viewing.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a cruise itinerary?",
    options: [
      "The planned sequence of ports, dates and sea days",
      "A list of ship employees",
      "The ship's insurance policy",
      "A passenger's passport history",
    ],
    correctAnswerIndex: 0,
    explanation: "A cruise itinerary lists planned ports, dates, sea days and arrival times, subject to operational changes.",
    whyItMatters: "It helps plan shore excursions, transfers and entry requirements.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a shore excursion?",
    options: [
      "An activity or visit at a cruise port while the ship is in port",
      "A ship engine inspection",
      "A cabin upgrade",
      "A meal served at sea",
    ],
    correctAnswerIndex: 0,
    explanation: "A shore excursion is an activity undertaken at a port of call, arranged through the cruise line or independently.",
    whyItMatters: "Travellers should allow time to return before the ship's departure deadline.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a ferry?",
    options: [
      "A vessel transporting passengers and sometimes vehicles on water routes",
      "A mountain railway",
      "An airport shuttle",
      "A passenger aircraft",
    ],
    correctAnswerIndex: 0,
    explanation: "A ferry transports passengers and often vehicles or freight across waterways on scheduled or chartered routes.",
    whyItMatters: "Ferries connect islands, coastal communities and places separated by water.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a rail pass?",
    options: [
      "A ticket product allowing eligible travel on specified rail networks under its conditions",
      "A passport for train drivers",
      "A guaranteed sleeper berth",
      "A permit to enter a station",
    ],
    correctAnswerIndex: 0,
    explanation: "A rail pass grants travel rights on specified services or networks for a defined period or number of travel days, subject to restrictions.",
    whyItMatters: "Comparing pass rules with individual fares helps identify value.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is high-speed rail?",
    options: [
      "Passenger rail designed to operate at substantially higher speeds than conventional rail",
      "A freight-only railway",
      "A train without tracks",
      "An airport-only service",
    ],
    correctAnswerIndex: 0,
    explanation: "High-speed rail uses trains and infrastructure designed for high operating speeds, often on dedicated or upgraded lines.",
    whyItMatters: "It can reduce journey times and provide an alternative to short-haul air travel.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a sleeper train?",
    options: [
      "A train with sleeping accommodation for overnight journeys",
      "A train that runs only when passengers sleep",
      "A freight train carrying beds",
      "A train without seats",
    ],
    correctAnswerIndex: 0,
    explanation: "A sleeper train offers beds or sleeping berths for overnight journeys, sometimes alongside seated accommodation.",
    whyItMatters: "It can combine transport and lodging, though comfort and privacy vary.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a homestay?",
    options: [
      "Accommodation in a local resident's home or home-like setting",
      "A conference hotel",
      "A campsite without shelter",
      "An airport lounge",
    ],
    correctAnswerIndex: 0,
    explanation: "A homestay is accommodation in a host's home or locally managed residential setting, often offering cultural interaction.",
    whyItMatters: "It can direct income to local households and provide insight into daily life.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is agritourism?",
    options: [
      "Tourism connecting visitors with farms, agriculture or rural activities",
      "Factory-only tourism",
      "Airport transfer travel",
      "Shopping-mall holidays",
    ],
    correctAnswerIndex: 0,
    explanation: "Agritourism includes farm stays, harvest activities, food experiences and educational visits connected with agriculture.",
    whyItMatters: "It can diversify rural income and connect visitors with food systems.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is cultural tourism?",
    options: [
      "Travel motivated partly by experiencing a place's culture, heritage, arts or way of life",
      "Medical travel only",
      "Travel avoiding local communities",
      "Theme-park travel only",
    ],
    correctAnswerIndex: 0,
    explanation: "Cultural tourism involves experiencing or learning about tangible and intangible cultural attractions, including heritage, arts and traditions.",
    whyItMatters: "It can support cultural preservation when communities participate meaningfully.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is heritage tourism?",
    options: [
      "Travel focused on historical, cultural or natural heritage",
      "Shopping-only travel",
      "Airport transfers",
      "Travel without overnight stays",
    ],
    correctAnswerIndex: 0,
    explanation: "Heritage tourism focuses on places, objects, traditions and practices valued for historical, cultural or natural significance.",
    whyItMatters: "Visitor management helps protect heritage while enabling access.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is adventure tourism?",
    options: [
      "Travel involving activities that may include physical challenge, nature or cultural interaction",
      "Travel that always involves extreme danger",
      "Luxury hotels only",
      "Business meetings only",
    ],
    correctAnswerIndex: 0,
    explanation: "Adventure tourism includes nature-based trips and activities involving physical activity, cultural exchange or a degree of challenge.",
    whyItMatters: "Risk assessment, qualified operators and appropriate equipment are essential.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a pilgrimage?",
    options: [
      "A journey to a place considered sacred or spiritually significant",
      "A shopping journey",
      "A freight route",
      "An astronomy expedition",
    ],
    correctAnswerIndex: 0,
    explanation: "A pilgrimage is a journey to a place regarded as sacred or spiritually significant, often for religious or personal reasons.",
    whyItMatters: "Pilgrimage has shaped routes, towns and hospitality traditions across societies.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is medical tourism?",
    options: [
      "Travel to another location or country to obtain healthcare or medical treatment",
      "Wildlife photography travel",
      "Sports-event travel",
      "Travel without health services",
    ],
    correctAnswerIndex: 0,
    explanation: "Medical tourism involves travel across regional or national borders to access healthcare or procedures; quality, aftercare and legal rules vary.",
    whyItMatters: "Provider credentials, risks, aftercare and insurance limitations need careful review.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is wellness tourism?",
    options: [
      "Travel associated with maintaining or improving personal wellbeing",
      "Emergency surgery only",
      "Cargo transport",
      "Travel excluding recreation",
    ],
    correctAnswerIndex: 0,
    explanation: "Wellness tourism involves trips associated with wellbeing through activities such as spa experiences, fitness, relaxation or lifestyle programmes.",
    whyItMatters: "Distinguishing wellness services from medical treatment helps travellers choose appropriately.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is business tourism?",
    options: [
      "Travel for work-related purposes such as meetings, conferences or exhibitions",
      "Beach holidays only",
      "Wildlife conservation only",
      "Travel without a planned purpose",
    ],
    correctAnswerIndex: 0,
    explanation: "Business tourism includes travel for meetings, incentive trips, conferences, exhibitions and other work-related events.",
    whyItMatters: "It supports professional exchange and demand for venues, hotels and transport.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does MICE stand for in tourism?",
    options: [
      "Meetings, Incentives, Conferences and Exhibitions",
      "Mobility, Immigration, Customs and Entry",
      "Maps, Itineraries, Cruises and Excursions",
      "Museums, Inns, Castles and Events",
    ],
    correctAnswerIndex: 0,
    explanation: "MICE stands for Meetings, Incentives, Conferences and Exhibitions, a major business-events segment.",
    whyItMatters: "It generates demand for venues, accommodation, transport and event services.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a destination brand?",
    options: [
      "The associations and perceptions that distinguish a place in visitors' minds",
      "Its national flag only",
      "Its airport name",
      "Its total hotel-room count",
    ],
    correctAnswerIndex: 0,
    explanation: "A destination brand is the identity and associations used to position a place and communicate its visitor experience.",
    whyItMatters: "A credible brand should reflect real experiences and local identity.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a tourism value chain?",
    options: [
      "Linked activities and services that create and deliver a visitor experience",
      "A luggage security chain",
      "A list of attractions only",
      "A currency exchange system",
    ],
    correctAnswerIndex: 0,
    explanation: "The tourism value chain links transport, accommodation, food, attractions, guides, booking platforms and local suppliers.",
    whyItMatters: "Mapping it reveals where tourism income is generated and retained.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is tourism leakage?",
    options: [
      "Visitor revenue leaving the destination economy through imports, external ownership or suppliers",
      "Pool water loss",
      "A decline in satisfaction only",
      "A cancelled booking",
    ],
    correctAnswerIndex: 0,
    explanation: "Tourism leakage occurs when spending leaves a destination economy, for example through imported goods, foreign ownership or external booking chains.",
    whyItMatters: "It helps destinations assess how much tourism value remains locally.",
    difficulty: "Hard",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is the tourism multiplier effect?",
    options: [
      "Wider economic activity generated as visitor spending circulates through businesses and households",
      "A rule that every visitor spends twice",
      "A method of multiplying hotel capacity",
      "A tax on every tourist",
    ],
    correctAnswerIndex: 0,
    explanation: "The multiplier effect describes how initial visitor spending generates further activity as businesses pay staff and suppliers, who then spend income.",
    whyItMatters: "It helps assess indirect and induced economic contributions, accounting for leakage.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does average length of stay (ALOS) measure?",
    options: [
      "Average number of nights or days visitors stay",
      "Average travel distance",
      "Average attractions visited",
      "Average airfare",
    ],
    correctAnswerIndex: 0,
    explanation: "ALOS measures the average duration of visitors' stays, commonly expressed in nights or days under a defined dataset methodology.",
    whyItMatters: "It helps evaluate visitor behaviour and accommodation demand.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is hotel occupancy rate?",
    options: [
      "Occupied rooms as a proportion of available rooms over a period",
      "Staff on duty",
      "Guests per restaurant table",
      "Rooms under renovation",
    ],
    correctAnswerIndex: 0,
    explanation: "Occupancy is commonly calculated as occupied rooms divided by available rooms for a period, multiplied by 100.",
    whyItMatters: "It is a core hospitality performance indicator.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does ADR mean in hotel performance?",
    options: [
      "Average Daily Rate",
      "Annual Destination Revenue",
      "Airport Departure Ratio",
      "Accommodation Demand Range",
    ],
    correctAnswerIndex: 0,
    explanation: "Average Daily Rate is generally room revenue divided by rooms sold over a specified period.",
    whyItMatters: "ADR indicates the average price achieved for sold rooms.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does RevPAR measure?",
    options: [
      "Room revenue per available room",
      "Revenue per airport runway",
      "Visitor spending per attraction",
      "Restaurant revenue per guest",
    ],
    correctAnswerIndex: 0,
    explanation: "Revenue per Available Room is room revenue divided by available rooms, or ADR multiplied by occupancy when definitions align.",
    whyItMatters: "RevPAR combines room pricing and occupancy into one performance measure.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a tourist arrival statistic?",
    options: [
      "A count of visitor entries or arrivals under a defined reporting method",
      "A city's resident population",
      "Hotel employees",
      "All airline seats worldwide",
    ],
    correctAnswerIndex: 0,
    explanation: "Arrival statistics count entries or trips under a defined methodology; one person may generate multiple arrivals.",
    whyItMatters: "Definitions matter when comparing destinations or time periods.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "How does a tourist differ from an excursionist in tourism statistics?",
    options: [
      "A tourist stays overnight; an excursionist is a same-day visitor",
      "A tourist flies; an excursionist drives",
      "A tourist travels for business only",
      "They are always identical",
    ],
    correctAnswerIndex: 0,
    explanation: "In standard tourism statistics, a tourist's trip includes an overnight stay; an excursionist visits without staying overnight.",
    whyItMatters: "This distinction improves analysis of accommodation demand and visitor impact.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a visitor information centre?",
    options: [
      "A place providing destination guidance, maps and local visitor support",
      "An international visa office",
      "An aircraft control tower",
      "A hotel audit office",
    ],
    correctAnswerIndex: 0,
    explanation: "A visitor information centre provides practical information about attractions, transport, events and local services.",
    whyItMatters: "Reliable information can improve experience and encourage exploration beyond major hotspots.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a city pass?",
    options: [
      "A bundle offering access to selected attractions or transport under stated terms",
      "A residence permit",
      "A city resident's passport",
      "Guaranteed entry to every attraction",
    ],
    correctAnswerIndex: 0,
    explanation: "A city pass bundles admission to selected attractions, tours or transport for a defined duration or number of uses.",
    whyItMatters: "Compare inclusions and realistic use against individual ticket prices.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a UNESCO Global Geopark?",
    options: [
      "A unified area with internationally significant geological heritage managed for protection, education and sustainable development",
      "A single protected building",
      "A national airport",
      "A shipping lane",
    ],
    correctAnswerIndex: 0,
    explanation: "A UNESCO Global Geopark is a unified geographical area with geological heritage of international significance and an integrated strategy for protection, education and sustainable development.",
    whyItMatters: "Geoparks connect geoscience, conservation, local identity and sustainable tourism.",
    difficulty: "Hard",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is dark-sky tourism?",
    options: [
      "Travel to low-light-pollution areas for stargazing and night-sky experiences",
      "Travel to bright city centres",
      "Underground shopping tours",
      "Cave diving",
    ],
    correctAnswerIndex: 0,
    explanation: "Dark-sky tourism involves visiting areas with low artificial light for stargazing and astronomy experiences.",
    whyItMatters: "It can support rural tourism and incentives to protect natural darkness.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is geotourism?",
    options: [
      "Tourism that sustains or enhances a place's geographical character, heritage and local wellbeing",
      "GPS games only",
      "Shopping-centre travel",
      "Air cargo transport",
    ],
    correctAnswerIndex: 0,
    explanation: "Geotourism is commonly framed as tourism that sustains or enhances a destination's environment, culture, aesthetics, heritage and residents' wellbeing.",
    whyItMatters: "It encourages place-based planning rather than treating destinations as interchangeable.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a road trip?",
    options: [
      "A journey in which road travel is central to the experience",
      "A flight with connections",
      "A cruise with no ports",
      "A hotel-only holiday",
    ],
    correctAnswerIndex: 0,
    explanation: "A road trip is a journey in which travelling by car, motorcycle or other road vehicle is central, often with multiple stops.",
    whyItMatters: "Planning driving time, rest breaks and road conditions improves safety.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a travel budget?",
    options: [
      "An estimate and plan for expected trip expenses",
      "A weather guarantee",
      "A replacement for bookings",
      "A passport-validity check",
    ],
    correctAnswerIndex: 0,
    explanation: "A travel budget estimates costs such as transport, accommodation, meals, activities, insurance and contingency funds.",
    whyItMatters: "Budgeting helps compare options and manage spending.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "Why prepare an emergency contact plan when travelling?",
    options: [
      "To identify who to contact and how to communicate during an incident",
      "To guarantee no incident occurs",
      "To replace insurance",
      "To ignore local emergency services",
    ],
    correctAnswerIndex: 0,
    explanation: "An emergency contact plan records relevant contacts and communication arrangements, including local emergency numbers where appropriate.",
    whyItMatters: "Preparation reduces confusion when assistance is needed.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a travel scam commonly designed to do?",
    options: [
      "Deceive travellers into paying money or sharing personal information",
      "Improve conservation",
      "Provide official border advice",
      "Verify a hotel reservation",
    ],
    correctAnswerIndex: 0,
    explanation: "Travel scams use misleading offers, impersonation or pressure to obtain money or personal information.",
    whyItMatters: "Verifying providers and using secure payment channels can reduce fraud risk.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "Why keep secure copies of important travel documents separately?",
    options: [
      "To access key information if an original is lost or unavailable",
      "To make copies legally interchangeable everywhere",
      "To avoid carrying identification",
      "To guarantee replacement without checks",
    ],
    correctAnswerIndex: 0,
    explanation: "Separate secure copies of passports, visas and insurance can support reference and replacement procedures, but do not replace originals where required.",
    whyItMatters: "Redundant records can reduce disruption during emergencies.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does a currency exchange rate express?",
    options: [
      "The value of one currency in terms of another",
      "The number of hotel rooms",
      "A destination's time zone",
      "Distance between cities",
    ],
    correctAnswerIndex: 0,
    explanation: "An exchange rate expresses how much of one currency can be exchanged for another; providers may apply different rates and fees.",
    whyItMatters: "Comparing effective rates and fees reveals the true cost of transactions.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is dynamic currency conversion at an overseas card terminal?",
    options: [
      "An offer to charge in the cardholder's home currency rather than local currency",
      "A passport nationality change",
      "A hotel pricing model",
      "An insurance benefit",
    ],
    correctAnswerIndex: 0,
    explanation: "Dynamic currency conversion offers a card payment in the cardholder's home currency, using a rate and markup set by the DCC provider.",
    whyItMatters: "Compare the displayed rate and fees; local-currency payment is often cheaper, depending on card terms.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a food tour?",
    options: [
      "An experience focused on local cuisine, markets or food culture",
      "An airport kitchen inspection",
      "A trip with no meals",
      "Commercial food freight",
    ],
    correctAnswerIndex: 0,
    explanation: "A food tour explores a destination through cuisine, markets, producers, restaurants or culinary traditions.",
    whyItMatters: "It can support local producers and reveal regional identity through food.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a traveller's carbon footprint?",
    options: [
      "Greenhouse-gas emissions associated with travel activities",
      "Number of steps taken",
      "Luggage weight",
      "Money spent on transport",
    ],
    correctAnswerIndex: 0,
    explanation: "A travel carbon footprint estimates emissions from transport, accommodation, food and other trip activities using a defined method.",
    whyItMatters: "Understanding emissions helps compare transport choices and reduction options.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a carbon offset in travel?",
    options: [
      "A credit linked to a quantified emissions reduction or removal elsewhere",
      "An airline discount",
      "A baggage refund",
      "A way to avoid all emissions",
    ],
    correctAnswerIndex: 0,
    explanation: "A carbon offset represents a quantified emissions reduction or removal elsewhere; quality depends on additionality, permanence and credible measurement.",
    whyItMatters: "Offsets should not replace reducing avoidable emissions and require careful scrutiny.",
    difficulty: "Hard",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What should travellers check before booking accommodation with a non-refundable rate?",
    options: [
      "Whether the savings justify the risk of losing payment if plans change",
      "Whether breakfast is served at every hotel",
      "Whether the hotel has an airport",
      "Whether the booking includes a passport",
    ],
    correctAnswerIndex: 0,
    explanation: "A non-refundable rate usually restricts cancellation refunds, though exceptions may be stated in the terms or required by law.",
    whyItMatters: "Compare the discount with the likelihood and cost of changing plans.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a no-show fee in travel bookings?",
    options: [
      "A charge or forfeiture that may apply when a traveller misses a reservation or flight",
      "A fee for early check-in",
      "A passport tax",
      "An airport entry fee",
    ],
    correctAnswerIndex: 0,
    explanation: "A no-show policy may allow a provider to charge or cancel remaining itinerary segments when a traveller fails to appear.",
    whyItMatters: "Knowing the rules matters because missing one flight may affect later segments.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a travel agent?",
    options: [
      "A professional or business that advises on or arranges travel services",
      "A border officer",
      "An aircraft engineer",
      "A hotel camera",
    ],
    correctAnswerIndex: 0,
    explanation: "A travel agent advises clients and may arrange transport, accommodation, tours and other services through suppliers.",
    whyItMatters: "Knowing the agent's role and fees clarifies booking support and responsibility.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a tour operator?",
    options: [
      "A business that designs, assembles or operates tours and travel packages",
      "A passenger booking a holiday",
      "A passport office",
      "An aircraft manufacturer",
    ],
    correctAnswerIndex: 0,
    explanation: "A tour operator creates or operates travel products by combining services such as transport, accommodation, guiding and activities.",
    whyItMatters: "Operators influence the visitor experience, supplier standards and safety.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "How does a travel agent commonly differ from a tour operator?",
    options: [
      "An agent commonly sells or arranges products; an operator creates or operates the tour product",
      "An agent operates aircraft; an operator issues passports",
      "They are always the same entity",
      "An operator books restaurants only",
    ],
    correctAnswerIndex: 0,
    explanation: "An agent commonly acts as an intermediary, while a tour operator assembles or operates a tour; some businesses perform both roles.",
    whyItMatters: "It helps identify the contracting provider and responsible service operator.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is an airline hub?",
    options: [
      "An airport used as a central point for connecting flights and network operations",
      "An airport with no scheduled services",
      "A runway for cars",
      "A cargo-only terminal",
    ],
    correctAnswerIndex: 0,
    explanation: "An airline hub concentrates flights to facilitate connections between routes and support an airline's network.",
    whyItMatters: "Hub structure affects connection options, frequency and route geography.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a low-cost carrier?",
    options: [
      "An airline using a cost-focused model, often pricing optional services separately",
      "An airline with free baggage in every fare",
      "A first-class-only long-haul airline",
      "An immigration service",
    ],
    correctAnswerIndex: 0,
    explanation: "A low-cost carrier typically uses a cost-efficient model and may unbundle services such as checked baggage, seat selection and meals.",
    whyItMatters: "Compare total journey cost rather than headline fare alone.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is an IATA three-letter airport code used for?",
    options: [
      "Identifying airports in airline reservations, schedules and baggage systems",
      "Identifying currency",
      "Measuring runway length",
      "Determining visa validity",
    ],
    correctAnswerIndex: 0,
    explanation: "IATA location identifiers are three-letter codes widely used in reservations, schedules and baggage handling.",
    whyItMatters: "Recognising codes reduces confusion when reading tickets and itineraries.",
    difficulty: "Easy",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What does PNR usually mean in airline reservations?",
    options: [
      "Passenger Name Record",
      "Personal Nationality Registration",
      "Passenger Navigation Route",
      "Public Network Radio",
    ],
    correctAnswerIndex: 0,
    explanation: "A Passenger Name Record is a reservation record containing itinerary and related booking information for one or more travellers.",
    whyItMatters: "The booking reference is often needed to retrieve or manage a reservation.",
    difficulty: "Medium",
  ),

Question(
    category: "Travel & Tourism",
    questionText: "What is a codeshare flight?",
    options: [
      "A flight marketed by multiple airlines under their own flight numbers but operated by one carrier",
      "A flight without a number",
      "A cargo-only flight",
      "A flight changing aircraft at every stop",
    ],
    correctAnswerIndex: 0,
    explanation: "A codeshare is an arrangement where an airline markets a flight under its code while another airline operates it.",
    whyItMatters: "Checking the operating carrier clarifies check-in, service and baggage arrangements.",
    difficulty: "Medium",
  )

];

// =========================================
// END OF FILE
// =========================================
