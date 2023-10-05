import 'package:quiz_app/db/db_functions/db_functions.dart';
import 'package:quiz_app/models/questionmodel.dart';

List<Map<String, dynamic>> questions = [
  {
    'questions': 'What is the SI unit of time?',
    'answers': ['Kilogram', 'Second', 'Meter', 'Kelvin'],
    'correct': 1,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions': 'Which of the following is a force that opposes motion?',
    'answers': ['Inertia', 'Acceleration', 'Friction', 'Gravity'],
    'correct': 2,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions':
        'What is the acceleration due to gravity on the surface of the Earth?',
    'answers': ['10 m/s²', '9.8 m/s²', '5 m/s²', '12 m/s²'],
    'correct': 1,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions': ' What type of energy does a stretched rubber band have?',
    'answers': [
      'Potential energy',
      'Kinetic energy',
      'Thermal energy',
      'Chemical energy'
    ],
    'correct': 0,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions':
        ' Which color of light is bent the most when passing through a prism?',
    'answers': ['Red', 'Blue', 'Green', 'Yellow'],
    'correct': 1,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions':
        'What is the fundamental particle that carries an electric charge?',
    'answers': ['Neutron', 'Proton', 'Electron', 'Photon'],
    'correct': 2,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions':
        "What is the primary source of energy for the Earth's climate system?",
    'answers': [
      'Geothermal energy',
      'Solar energy',
      'Nuclear energy',
      'Wind energy'
    ],
    'correct': 1,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions': 'What is the formula for calculating density?',
    'answers': [
      'Density = Mass × Volume',
      'Density = Volume / Mass',
      'Density = Force × Distance',
      'Density = Acceleration / Time'
    ],
    'correct': 0,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions': 'What is the SI unit of electric charge?',
    'answers': ['Joule', 'Coulomb', 'Volt', 'Ohm'],
    'correct': 1,
    'category': 'physics',
    'level': 'easy'
  },
  {
    'questions':
        'Which law of thermodynamics states that energy cannot be created or destroyed but can only change forms?',
    'answers': ['Zeroth Law', 'First Law', 'Second Law', 'Third Law'],
    'correct': 1,
    'category': 'physics',
    'level': 'easy'
  },
  //
  //
  //
  //

  {
    'questions':
        "'In a circuit, what is the relationship between voltage (V), current (I), and resistance (R) described by Ohm's Law?",
    'answers': ['V = IR', 'I = VR', 'R = VI', 'R = VI'],
    'correct': 0,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'What is the phenomenon where light waves change direction as they pass from one medium to another?',
    'answers': ['Reflection', 'Diffraction', 'Dispersion', 'Refraction'],
    'correct': 3,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        "Which of the following is a measure of an object's resistance to a change in its rotational motion?",
    'answers': ['Momentum', 'Torque', 'Impulse', 'Inertia'],
    'correct': 3,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        "According to Newton's third law of motion, for every action, there is an equal and opposite ___________.",
    'answers': ['Force', 'Acceleration', 'Reaction', 'Mass'],
    'correct': 2,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'What is the term for the energy stored in an object due to its position or configuration?',
    'answers': [
      'Kinetic energy',
      'Thermal energy',
      'Gravitational potential energy',
      'Nuclear energy'
    ],
    'correct': 2,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'Which type of electromagnetic radiation has the shortest wavelength?',
    'answers': [
      'Radio waves',
      ' Infrared radiation',
      'Ultraviolet light',
      'X-rays'
    ],
    'correct': 3,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'What is the force that opposes the relative motion or tendency of such motion of two surfaces in contact?',
    'answers': [
      ' Gravitational force',
      'Tension force',
      'Frictional force',
      'Normal force'
    ],
    'correct': 2,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'What is the term for the change in frequency or wavelength of a wave in relation to an observer moving relative to the source of the wave?',
    'answers': ['Dispersion', 'Doppler Effect', 'Refraction', 'Diffraction'],
    'correct': 1,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'What is the phenomenon where an object vibrates at its natural frequency when subjected to an external force with a matching frequency?',
    'answers': ['Resonance', 'Oscillation', 'Inertia', 'Impulse'],
    'correct': 1,
    'category': 'physics',
    'level': 'medium'
  },
  {
    'questions':
        'What is the name of the process by which a substance changes directly from a solid to a gas without passing through the liquid phase?',
    'answers': ['Evaporation', 'Condensation', 'Sublimation', 'Fusion'],
    'correct': 2,
    'category': 'physics',
    'level': 'medium'
  },
  //
  //
  //
  //
  {
    'questions':
        'Which of the following particles is not a part of the standard model of particle physics?',
    'answers': ['Quark', 'Lepton', 'Boson', 'Meson'],
    'correct': 3,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'What is the theoretical maximum speed that any object with mass can reach in the universe?',
    'answers': [
      'The speed of light (c)',
      'Twice the speed of light',
      'Speed of sound',
      'Speed of gravity'
    ],
    'correct': 0,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'According to the theory of relativity, as an object with mass approaches the speed of light, what happens to its mass?',
    'answers': [
      'It decreases',
      ' It remains constant',
      'It increases',
      'It becomes zero'
    ],
    'correct': 2,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'What is the concept in quantum mechanics that states it is impossible to simultaneously know both the exact position and momentum of a particle with absolute certainty?',
    'answers': [
      'Heisenberg Uncertainty Principle',
      "'Schrödinger's Cat Paradox'",
      "Einstein's Relativity Principle",
      "Planck's Constant"
    ],
    'correct': 0,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'Which of the following is a fundamental force in nature responsible for holding the atomic nucleus together?',
    'answers': [
      'Electromagnetic force',
      'Gravitational force',
      'Strong nuclear force',
      'Weak nuclear force'
    ],
    'correct': 3,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'What is the term for a hypothetical region in space where the gravitational pull is so strong that nothing, not even light, can escape from it?',
    'answers': ['Black hole', 'Neutron star', 'White dwarf', 'Pulsar'],
    'correct': 0,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'In quantum mechanics, what does the wave function of a particle represent?',
    'answers': [
      "The particle's mass",
      "The particle's position",
      "The particle's energy",
      ' The probability of finding the particle in a particular state'
    ],
    'correct': 3,
    'category': 'physics',
    'level': 'hard'
  },
  {
    'questions':
        'What is the process by which a nucleus of an atom splits into two or more smaller nuclei, releasing a significant amount of energy?',
    'answers': [
      'Nuclear fusion',
      'Nuclear fission',
      'Nuclear decay',
      'Nuclear difuse'
    ],
    'correct': 1,
    'category': 'physics',
    'level': 'hard'
  },
  //
  //
  //
  // -----------------History------------------
  {
    'questions': 'Who was the first President of the United States?',
    'answers': [
      'Benjamin Franklin',
      'George Washington',
      'Thomas Jefferson',
      'Abraham Lincoln'
    ],
    'correct': 1,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions':
        'Which ancient civilization is known for building the Great Pyramids of Giza?',
    'answers': [
      'Roman Empire',
      'Ancient Greece',
      'Ancient Egypt',
      'Mesopotamia'
    ],
    'correct': 2,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions': 'What event marked the start of World War I?',
    'answers': [
      'The sinking of the Titanic',
      'The assassination of Archduke Franz Ferdinand',
      'The signing of the Treaty of Versailles',
      'The bombing of Pearl Harbor'
    ],
    'correct': 1,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions':
        'Who wrote the "Declaration of Independence" for the United States?',
    'answers': [
      'Thomas Jefferson',
      'Benjamin Franklin',
      'George Washington',
      'John Adams'
    ],
    'correct': 0,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions': 'Who is credited with discovering America in 1492?',
    'answers': [
      'Marco Polo',
      'Ferdinand Magellan',
      'Hernán Cortés',
      'Christopher Columbus'
    ],
    'correct': 3,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions':
        'What was the famous route for trade and cultural exchange between the East and West during ancient times?',
    'answers': [
      'Silk Road',
      'Spice Route',
      'Trans-Saharan Trade Route',
      'Panama Canal'
    ],
    'correct': 0,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions': 'What major historical event took place on July 20, 1969?',
    'answers': [
      'The signing of the Magna Carta',
      'The Boston Tea Party',
      'The Moon landing by Apollo 11',
      'The fall of the Berlin Wall'
    ],
    'correct': 2,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions':
        'What was the name of the ship that carried the Pilgrims to America in 1620?',
    'answers': ['Nina', 'Santa Maria', 'Discovery', 'Mayflower'],
    'correct': 3,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions':
        'Who was the first woman to fly solo across the Atlantic Ocean?',
    'answers': [
      'Bessie Coleman',
      'Amelia Earhart',
      'Harriet Quimby',
      'Sally Ride'
    ],
    'correct': 1,
    'category': 'history',
    'level': 'easy'
  },
  {
    'questions':
        'Which historical figure is known for his role in the Indian independence movement and is often referred to as "Mahatma"?',
    'answers': [
      'Jawaharlal Nehru',
      'Subhas Chandra Bose',
      'Sardar Patel',
      'Mahatma Gandhi'
    ],
    'correct': 3,
    'category': 'history',
    'level': 'easy'
  },
  //
  //
  //
  //

  {
    'questions': 'Who was the first Emperor of the Roman Empire?',
    'answers': ['Julius Caesar', 'Nero', 'Augustus', 'Constantine'],
    'correct': 2,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions':
        'What was the name of the ship on which Charles Darwin sailed during his voyage of scientific discovery?',
    'answers': ['HMS Beagle', 'HMS Discovery', 'HMS Endeavour', 'HMS Victory'],
    'correct': 0,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions':
        'Who was the leader of the Soviet Union during the Cuban Missile Crisis in 1962?',
    'answers': [
      'Vladimir Putin',
      ' Joseph Stalin',
      'Nikita Khrushchev',
      'Leon Trotsky'
    ],
    'correct': 2,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions': 'What treaty marked the official end of World War I in 1919?',
    'answers': [
      'Treaty of Versailles',
      'Treaty of Tordesillas',
      'Treaty of Utrecht',
      'Treaty of Ghent'
    ],
    'correct': 0,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions':
        'Which famous queen of ancient Egypt is known for her relationship with Mark Antony and her tragic end?',
    'answers': ['Hatshepsut', 'Cleopatra', 'Nefertiti', 'Queen Tiye'],
    'correct': 1,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions': 'In which year did the American Civil War begin?',
    'answers': ['1861', '1876', '1850', '1865'],
    'correct': 0,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions':
        'Who was the first woman to fly solo across the Atlantic Ocean?',
    'answers': [
      'Bessie Coleman',
      'Jacqueline Cochran',
      'Harriet Quimby',
      'Amelia Earhart'
    ],
    'correct': 3,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions': 'Which ancient civilization built the city of Machu Picchu in the Andes Mountains?',
    'answers': ['Maya', 'Aztec', 'Inca', 'Olmec'],
    'correct': 2,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions': 'Who is considered the founding father of modern physics and developed the theory of relativity?',
    'answers': ['Isaac Newton', 'Albert Einstein', 'Niels Bohr', 'Werner Heisenberg'],
    'correct': 1,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions': 'What was the main goal of the Apollo 11 mission in 1969?',
    'answers': ['To orbit the Moon', 'To land on Mars', 'To land on the Moon and return safely to Earth', ''],
    'correct': 3,
    'category': 'history',
    'level': 'medium'
  },
  // 
  // 
  // 
  // 
  {
    'questions': 'Who was the first female pharaoh of ancient Egypt, known for her contributions to art and architecture?',
    'answers': ['Hatshepsut', 'Cleopatra', 'Nefertiti', 'Tiye'],
    'correct': 0,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'What ancient empire is famous for constructing the city of Persepolis and was led by rulers like Cyrus the Great and Darius the Great?',
    'answers': ['Roman Empire', 'Byzantine Empire', 'Persian Empire', 'Ottoman Empire'],
    'correct': 2,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'Which historical event in 1215 resulted in the signing of a document that limited the power of the English monarch and is considered a precursor to constitutional government?',
    'answers': ["The Hundred Years' War", 'The War of the Roses', 'The Magna Carta', 'The Glorious Revolution'],
    'correct': 2,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'Who was the leader of the Soviet Union during most of World War II and played a key role in the defeat of Nazi Germany?',
    'answers': ['Joseph Stalin', 'Leon Trotsky', 'Vladimir Lenin', 'Mikhail Gorbachev'],
    'correct': 0,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'hat ancient wonder, considered one of the Seven Wonders of the Ancient World, was a colossal statue of the sun god Helios and stood on the island of Rhodes?',
    'answers': ['Hanging Gardens of Babylon', 'Colossus of Rhodes', 'Lighthouse of Alexandria', 'Mausoleum at Halicarnassus'],
    'correct': 1,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'Which European explorer is credited with circumnavigating the globe, proving that the Earth is round?',
    'answers': [ 'Christopher Columbus', 'Marco Polo', 'Vasco da Gama',' Ferdinand Magellan'],
    'correct': 3,
    'category': 'history',
    'level': 'hard'
  },

   {
    'questions': 'What event in 1492 marked the expulsion of Jews and Muslims from Spain during the Spanish Inquisition?',
    'answers': ['Reconquista', 'The Alhambra Decree', 'Treaty of Tordesillas', 'Battle of Lepanto'],
    'correct': 1,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'Who was the Russian mystic and advisor to the Romanov family, whose influence led to controversy and ultimately contributed to the downfall of the Romanov dynasty?',
    'answers': ['Grigori Rasputin', 'Leon Trotsky', 'Vladimir Lenin', 'Joseph Stalin'],
    'correct': 0,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'What event marked the end of apartheid in South Africa and the release of Nelson Mandela from prison?',
    'answers': ['Soweto Uprising', 'Sharpeville Massacre', 'Berlin Wall Fall', 'Rivonia Trial'],
    'correct': 3,
    'category': 'history',
    'level': 'hard'
  },
   {
    'questions': 'Who was the Chinese philosopher and founder of Confucianism, whose teachings have had a profound influence on Chinese culture and politics?',
    'answers': ['Sun Tzu', 'Laozi', 'Confucius', 'Zhuangzi'],
    'correct': 2,
    'category': 'history',
    'level': 'hard'
  },
  // 
  // 
  // 
  // --------------Mathematics---------------
  {
    'questions': ' What is the value of the mathematical constant "e," approximately equal to?',
    'answers': ['2', '3', '2.718', '3.142'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'hard'
  },
   {
    'questions': 'What is the square root of 225?',
    'answers': ['12', '15', '25', '30'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'hard'
  },
   {
    'questions': 'What is the result of 7 to the power of 4 (7⁴)?',
    'answers': ['2,401', '2,744', '14,348', '24,389'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'hard'
  },
   {
    'questions': 'f you have a right triangle with one leg measuring 6 units and the hypotenuse measuring 10 units, what is the length of the other leg?',
    'answers': ['4 units', '6 units', '8 units', '9 units'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions': 'What is the value of sin(90 degrees)?',
    'answers': ['0', '1', '-1', '0.5'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions': 'What is the result of 5! (5 factorial)?',
    'answers': ['10', '20', '60', '120'],
    'correct': 3,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions': 'In a circle with a radius of 5 units, what is the circumference approximately equal to?',
    'answers': ['10 units', '15 units', ' 20 units', '31.42 units'],
    'correct': 3,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions': 'What is the value of the mathematical constant "pi" (π) to four decimal places?',
    'answers': [' 3.1416', '3.1415', '3.1415', '3.1409'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions': 'What is the sum of the first 100 positive integers (1 + 2 + 3 + ... + 100)?',
    'answers': ['4,950', '5,050', '10,000', ' 10,100'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions': ' What is the result of the mathematical expression ∫(2x^2 + 3x + 1) dx?',
    'answers': [' x^3 + (3/2)x^2 + x + C', '(2/3)x^3 + (3/2)x^2 + x + C', ' (1/2)x^3 + (3/2)x^2 + x + C', '(2/3)x^3 + (1/2)x^2 + x + C'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'hard'
  },
  // 
  // 
  // 
  // 
  {
    'questions': 'What is the result of 5 + 3?',
    'answers': ['7', '8', '9', '10'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': ' How many sides does a triangle have?',
    'answers': ['2', '3', '4', '5'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': ' What is the value of π (pi) approximately equal to?',
    'answers': ['3', '22/7', '3.14', '2.718'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'If you have 3 apples and you eat 2 of them, how many apples do you have left?',
    'answers': ['0', '1', '2', '3'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'What is the next number in the sequence: 2, 4, 6, __?',
    'answers': ['10', '8', '7', '12'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'How many degrees are in a right angle?',
    'answers': ['45 degrees', ' 90 degrees', '180 degrees', '360 degrees'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'What is the result of 6 multiplied by 9?',
    'answers': ['15', '36', '54', '63'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'If a square has sides of length 4 units, what is its area?',
    'answers': ['4 square units', '8 square units', '12 square units', '16 square units'],
    'correct': 3,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'What is the term for a number that can be evenly divided by 1 and itself?',
    'answers': ['Prime number', 'Composite number', ' Odd number', 'Square number'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'If you subtract 7 from 15, what is the result?',
    'answers': ['8', '9', '10', '11'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'easy'
  },
  // 
  // 
  // 
  // 
  {
    'questions': 'What is the value of the square root of 144?',
    'answers': ['12', '14', '16', '18'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'If a pizza is divided into 8 equal slices, and you eat 3 slices, how many slices are left?',
    'answers': ['3', '5', '8', '2'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'What is the product of 7 and 9?',
    'answers': ['16', '63', '72', '81'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'Solve for x: 2x + 5 = 15',
    'answers': ['x = 5', 'x = 7', 'x = 8', 'x = 10'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': '',
    'answers': ['', '', '', ''],
    'correct': 1,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'If a rectangle has a length of 12 units and a width of 8 units, what is its area?',
    'answers': [' 20 square units', '96 square units', ' 64 square units', '48 square units'],
    'correct': 3,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'What is 30% of 150?',
    'answers': ['15', '30', '45', '50'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'If a car travels at a constant speed of 60 miles per hour, how far will it travel in 2.5 hours?',
    'answers': ['125 miles', '150 miles', '160 miles', '175 miles'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': 'What is the value of 3² + 4²?',
    'answers': ['7', '9', '25', '49'],
    'correct': 2,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions': ' If a right triangle has one leg measuring 5 units and the other leg measuring 12 units, what is the length of the hypotenuse?',
    'answers': ['24 units', '13 units', '17 units', ' 7 units'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'medium'
  },
  // 
  // 
  // 
  // ------------Biology-------------
  {
    'questions': '',
    'answers': ['', '', '', ''],
    'correct': 1,
    'category': 'biology',
    'level': 'easy'
  },


];
Future initial() async{
  for (int i = 0; i < questions.length; i++) {
    Question question = Question(
        question: questions[i]['questions'],
        correctAnswer: questions[i]['correct'],
        answers: questions[i]['answers'],
        category: questions[i]['category'],
        difficulty: questions[i]['level']);
    await QuestionsDb().addQuestions(question);
  }
}
