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
    'questions':
        'Which ancient civilization built the city of Machu Picchu in the Andes Mountains?',
    'answers': ['Maya', 'Aztec', 'Inca', 'Olmec'],
    'correct': 2,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions':
        'Who is considered the founding father of modern physics and developed the theory of relativity?',
    'answers': [
      'Isaac Newton',
      'Albert Einstein',
      'Niels Bohr',
      'Werner Heisenberg'
    ],
    'correct': 1,
    'category': 'history',
    'level': 'medium'
  },
  {
    'questions': 'What was the main goal of the Apollo 11 mission in 1969?',
    'answers': [
      'To orbit the Moon',
      'To land on Mars',
      'To land on the Moon and return safely to Earth',
      'To land on Moon'
    ],
    'correct': 3,
    'category': 'history',
    'level': 'medium'
  },
  //
  //
  //
  //
  {
    'questions':
        'Who was the first female pharaoh of ancient Egypt, known for her contributions to art and architecture?',
    'answers': ['Hatshepsut', 'Cleopatra', 'Nefertiti', 'Tiye'],
    'correct': 0,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'What ancient empire is famous for constructing the city of Persepolis and was led by rulers like Cyrus the Great and Darius the Great?',
    'answers': [
      'Roman Empire',
      'Byzantine Empire',
      'Persian Empire',
      'Ottoman Empire'
    ],
    'correct': 2,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'Which historical event in 1215 resulted in the signing of a document that limited the power of the English monarch and is considered a precursor to constitutional government?',
    'answers': [
      "The Hundred Years' War",
      'The War of the Roses',
      'The Magna Carta',
      'The Glorious Revolution'
    ],
    'correct': 2,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'Who was the leader of the Soviet Union during most of World War II and played a key role in the defeat of Nazi Germany?',
    'answers': [
      'Joseph Stalin',
      'Leon Trotsky',
      'Vladimir Lenin',
      'Mikhail Gorbachev'
    ],
    'correct': 0,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'hat ancient wonder, considered one of the Seven Wonders of the Ancient World, was a colossal statue of the sun god Helios and stood on the island of Rhodes?',
    'answers': [
      'Hanging Gardens of Babylon',
      'Colossus of Rhodes',
      'Lighthouse of Alexandria',
      'Mausoleum at Halicarnassus'
    ],
    'correct': 1,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'Which European explorer is credited with circumnavigating the globe, proving that the Earth is round?',
    'answers': [
      'Christopher Columbus',
      'Marco Polo',
      'Vasco da Gama',
      ' Ferdinand Magellan'
    ],
    'correct': 3,
    'category': 'history',
    'level': 'hard'
  },

  {
    'questions':
        'What event in 1492 marked the expulsion of Jews and Muslims from Spain during the Spanish Inquisition?',
    'answers': [
      'Reconquista',
      'The Alhambra Decree',
      'Treaty of Tordesillas',
      'Battle of Lepanto'
    ],
    'correct': 1,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'Who was the Russian mystic and advisor to the Romanov family, whose influence led to controversy and ultimately contributed to the downfall of the Romanov dynasty?',
    'answers': [
      'Grigori Rasputin',
      'Leon Trotsky',
      'Vladimir Lenin',
      'Joseph Stalin'
    ],
    'correct': 0,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'What event marked the end of apartheid in South Africa and the release of Nelson Mandela from prison?',
    'answers': [
      'Soweto Uprising',
      'Sharpeville Massacre',
      'Berlin Wall Fall',
      'Rivonia Trial'
    ],
    'correct': 3,
    'category': 'history',
    'level': 'hard'
  },
  {
    'questions':
        'Who was the Chinese philosopher and founder of Confucianism, whose teachings have had a profound influence on Chinese culture and politics?',
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
    'questions':
        ' What is the value of the mathematical constant "e," approximately equal to?',
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
    'questions':
        'If you have a right triangle with one leg measuring 6 units and the hypotenuse measuring 10 units, what is the length of the other leg?',
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
    'questions':
        'In a circle with a radius of 5 units, what is the circumference approximately equal to?',
    'answers': ['10 units', '15 units', ' 20 units', '31.42 units'],
    'correct': 3,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions':
        'What is the value of the mathematical constant "pi" (π) to four decimal places?',
    'answers': [' 3.1416', '3.1415', '3.1415', '3.1409'],
    'correct': 0,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions':
        'What is the sum of the first 100 positive integers (1 + 2 + 3 + ... + 100)?',
    'answers': ['4,950', '5,050', '10,000', ' 10,100'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'hard'
  },
  {
    'questions':
        ' What is the result of the mathematical expression ∫(2x^2 + 3x + 1) dx?',
    'answers': [
      ' x^3 + (3/2)x^2 + x + C',
      '(2/3)x^3 + (3/2)x^2 + x + C',
      ' (1/2)x^3 + (3/2)x^2 + x + C',
      '(2/3)x^3 + (1/2)x^2 + x + C'
    ],
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
    'questions':
        'If you have 3 apples and you eat 2 of them, how many apples do you have left?',
    'answers': ['0', '1', '2', '3'],
    'correct': 1,
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
    'answers': [
      '4 square units',
      '8 square units',
      '12 square units',
      '16 square units'
    ],
    'correct': 3,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions':
        'What is the term for a number that can be evenly divided by 1 and itself?',
    'answers': [
      'Prime number',
      'Composite number',
      ' Odd number',
      'Square number'
    ],
    'correct': 0,
    'category': 'mathematics',
    'level': 'easy'
  },
  {
    'questions': 'If you subtract 7 from 15, what is the result?',
    'answers': ['8', '9', '10', '11'],
    'correct': 0,
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
    'questions':
        'If a pizza is divided into 8 equal slices, and you eat 3 slices, how many slices are left?',
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
    'questions':
        ' If you subtract 3 from twice a number, and the result is 11, what is the number?',
    'answers': ['7', '8', '14', '5'],
    'correct': 1,
    'category': 'mathematics',
    'level': 'medium'
  },
  {
    'questions':
        'If a rectangle has a length of 12 units and a width of 8 units, what is its area?',
    'answers': [
      ' 20 square units',
      '96 square units',
      ' 64 square units',
      '48 square units'
    ],
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
    'questions':
        'If a car travels at a constant speed of 60 miles per hour, how far will it travel in 2.5 hours?',
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
    'questions':
        ' If a right triangle has one leg measuring 5 units and the other leg measuring 12 units, what is the length of the hypotenuse?',
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
    'questions':
        'What is the powerhouse of the cell responsible for producing energy?',
    'answers': ['Ribosome', 'Nucleus', 'Mitochondrion', 'Chloroplast'],
    'correct': 2,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'Which gas do plants absorb from the atmosphere during photosynthesis?',
    'answers': ['Oxygen', 'Carbon dioxide', 'Nitrogen', 'Hydrogen'],
    'correct': 1,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'What is the liquid part of blood that carries cells and nutrients throughout the body?',
    'answers': ['Plasma', 'Platelets', 'Hemoglobin', 'Lymph'],
    'correct': 0,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions': 'What is the largest organ in the human body?',
    'answers': ['Brain', 'Heart', 'Liver', 'Skin'],
    'correct': 3,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'Which gas do humans breathe out as a waste product of respiration?',
    'answers': ['Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'],
    'correct': 0,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'What is the process by which plants make their own food using sunlight, carbon dioxide, and water?',
    'answers': ['Respiration', 'Fermentation', 'Photosynthesis', 'Digestion'],
    'correct': 2,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'What is the basic unit of life and the smallest functional unit of an organism?',
    'answers': ['Cell', 'Atom', 'Molecule', 'Tissue'],
    'correct': 0,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'Which part of a plant is responsible for the absorption of water and nutrients from the soil?',
    'answers': ['Leaves', 'Stem', 'Roots', 'Flowers'],
    'correct': 2,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'What is the process by which living organisms produce offspring of the same kind?',
    'answers': ['Evolution', 'Reproduction', 'Adaptation', 'Mutation'],
    'correct': 1,
    'category': 'biology',
    'level': 'easy'
  },
  {
    'questions':
        'What is the green pigment in plant cells that captures light energy for photosynthesis?',
    'answers': ['Hemoglobin', 'Melanin', 'Insulin', 'Chlorophyll'],
    'correct': 3,
    'category': 'biology',
    'level': 'easy'
  },
  //
  //
  //
  //
  {
    'questions':
        'What is the process by which cells break down glucose to produce energy?',
    'answers': ['Photosynthesis', 'Respiration', 'Fermentation', 'Digestion'],
    'correct': 1,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'What is the chemical substance found in red blood cells that binds to oxygen for transport throughout the body?',
    'answers': ['Insulin', 'Hemoglobin', 'Chlorophyll', 'Histamine'],
    'correct': 1,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'Which part of the human brain is responsible for regulating basic bodily functions like breathing and heart rate?',
    'answers': ['Cerebrum', 'Cerebellum', 'Medulla oblongata', 'Hypothalamus'],
    'correct': 2,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'What is the smallest unit of life capable of carrying out all the processes necessary for life?',
    'answers': ['Molecule', 'Cell', 'Organ', 'Organism'],
    'correct': 1,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'Which gas is essential for photosynthesis to occur in plants?',
    'answers': [' Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen'],
    'correct': 0,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'What is the name of the process by which plants release water vapor into the atmosphere through tiny openings in their leaves?',
    'answers': ['Transpiration', 'Perspiration', 'Condensation', 'Evaporation'],
    'correct': 0,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'Which type of blood vessel carries blood away from the heart to other parts of the body?',
    'answers': ['Vein', 'Capillary', 'Aorta', 'Artery'],
    'correct': 3,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions': 'What is the term for the protective outer layer of the skin?',
    'answers': ['Dermis', 'Epidermis', 'Hypodermis', 'Subcutaneous'],
    'correct': 1,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions': ' In the human body, what is the role of the pancreas?',
    'answers': [
      ' Producing insulin to regulate blood sugar',
      'Filtering waste from the blood',
      'Digesting food in the stomach',
      'Regulating body temperature'
    ],
    'correct': 0,
    'category': 'biology',
    'level': 'medium'
  },
  {
    'questions':
        'What is the scientific name for the process of cell division that results in two identical daughter cells?',
    'answers': ['Fertilization', 'Meiosis', 'Mitosis', 'Replication'],
    'correct': 2,
    'category': 'biology',
    'level': 'medium'
  },
  //
  //
  //
  //
  {
    'questions':
        'What is the process by which cells divide to form haploid gametes (sperm and egg cells)?',
    'answers': ['Mitosis', 'Meiosis', 'Fertilization', 'Replication'],
    'correct': 1,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        'Which organelle is responsible for protein synthesis in eukaryotic cells?',
    'answers': [
      'Nucleus',
      'Mitochondrion',
      'Ribosome',
      ' Endoplasmic reticulum'
    ],
    'correct': 2,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        'What is the process by which green plants and some other organisms convert light energy into chemical energy in the form of glucose?',
    'answers': ['Photosynthesis', 'Respiration', 'Fermentation', 'Oxidation'],
    'correct': 0,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        'Which gas is produced as a waste product during cellular respiration in both plants and animals?',
    'answers': ['Oxygen', 'Carbon dioxide', 'Nitrogen', 'Hydrogen'],
    'correct': 1,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        "What is the name of the process by which an organism's genetic material is copied to create an identical copy?",
    'answers': ['Replication', 'Transcription', 'Translation', 'Mutation'],
    'correct': 0,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        'What is the scientific name for the study of the interactions between living organisms and their environment?',
    'answers': ['Genetics', 'Microbiology', 'Zoology', 'Ecology'],
    'correct': 3,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        'Which type of blood cell is responsible for carrying oxygen throughout the body?',
    'answers': [
      'White blood cell',
      'Platelet',
      'Red blood cell',
      'Plasma cell'
    ],
    'correct': 2,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        ' What is the largest internal organ in the human body and plays a crucial role in detoxification and metabolism?',
    'answers': ['Heart', 'Kidney', 'Liver', 'Lungs'],
    'correct': 2,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        "What is the term for the region of the Earth's oceans where sunlight cannot penetrate, and photosynthesis cannot occur?",
    'answers': ['Abyssal zone', 'Bathyal zone', 'Hadal zone', 'Aphotic zone'],
    'correct': 3,
    'category': 'biology',
    'level': 'hard'
  },
  {
    'questions':
        'What is the process by which organisms evolve and adapt to their environment over long periods of time?',
    'answers': ['Mutation', 'Natural selection', 'Speciation', 'Fertilization'],
    'correct': 1,
    'category': 'biology',
    'level': 'hard'
  },
  //
  //
  //
  // ----------------Chemistry------------------
  {
    'questions': 'What is the chemical symbol for oxygen?',
    'answers': ['O2', 'C', 'H', 'O'],
    'correct': 3,
    'category': 'chemistry',
    'level': 'easy'
  },
  {
    'questions': 'What is the chemical formula for water?',
    'answers': ['H2O2', 'CO2', 'H2O', 'O2'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions': 'What is the chemical symbol for hydrogen?',
    'answers': ['H2O', 'He', 'H', 'O2'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions': 'Which of the following is a noble gas?',
    'answers': ['Oxygen (O2)', ' Carbon (C)', 'Helium (He)', 'Sodium (Na)'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions': 'What is the chemical symbol for carbon?',
    'answers': ['Ca', 'C', 'Co', 'Cr'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions':
        'Which gas is commonly known as laughing gas and has the chemical formula N2O?',
    'answers': [
      'Nitrogen dioxide',
      'Nitrogen monoxide',
      'Nitrogen pentoxide',
      'Nitrous oxide'
    ],
    'correct': 3,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions': 'What is the chemical symbol for gold?',
    'answers': ['Go', 'Au', 'Ag', 'Gu'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions':
        'What is the chemical formula for table salt (sodium chloride)?',
    'answers': ['NaCl2', 'Na2Cl', 'NaCl', 'HCl'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions':
        'Which gas is essential for respiration and has the chemical formula O2?',
    'answers': ['Oxygen', 'Ozone', 'Carbon dioxide', 'Hydrogen'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'easy'
  },

  {
    'questions': 'What is the chemical symbol for silver?',
    'answers': ['Si', 'Ag', 'Au', 'Sr'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'easy'
  },
  //
  //
  //
  //
  {
    'questions': "Which element is the most abundant in Earth's crust?",
    'answers': ['Oxygen', 'Silicon', 'Carbon', 'Hydrogen'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'What is the chemical formula for methane, a greenhouse gas produced by natural processes and human activities?',
    'answers': ['CH4', 'CO2', 'H2O', 'NH3'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions': 'What is the pH value of a neutral solution?',
    'answers': ['0', '7', '14', '-7'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'Which gas is responsible for the "rotten egg" smell and is often added to natural gas to give it an odor?',
    'answers': [
      'Oxygen',
      'Carbon dioxide',
      'Sulfur dioxide',
      'Hydrogen sulfide'
    ],
    'correct': 3,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'What is the chemical formula for sulfuric acid, a strong and corrosive acid?',
    'answers': ['H2SO3', 'HCl', 'H2SO4', 'HNO3'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'Which gas is commonly used for inflating balloons and has the chemical formula He?',
    'answers': ['Helium', 'Hydrogen', 'Nitrogen', 'Neon'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions': ' What is the chemical symbol for iron?',
    'answers': ['Fe', 'Ir', 'In', 'Au'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'What is the process by which a liquid turns into a gas at a temperature below its boiling point?',
    'answers': ['Melting', 'Evaporation', 'Condensation', 'Sublimation'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'What is the chemical formula for carbon dioxide, a greenhouse gas produced by combustion and respiration?',
    'answers': ['CO', 'CO2', 'CH4', 'O2'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'medium'
  },
  {
    'questions':
        'Which element is the primary component of organic compounds and is the basis of life on Earth?',
    'answers': ['Nitrogen', 'Carbon', 'Oxygen', 'Hydrogen'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'medium'
  },
  //
  //
  //
  //
  {
    'questions':
        'What is the chemical formula for hydrogen peroxide, a powerful oxidizer and disinfectant?',
    'answers': ['H2O', 'HO', 'H2O2', 'HO2'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        'What is the name of the process by which a substance changes directly from a solid to a gas without passing through the liquid phase?',
    'answers': ['Vaporization', 'Sublimation', 'Fusion', 'Condensation'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        ' Which element has the highest melting point and is often used in high-temperature applications such as aerospace and nuclear reactors?',
    'answers': [
      'Tungsten (W)',
      'Titanium (Ti)',
      ' Platinum (Pt)',
      'Mercury (Hg)'
    ],
    'correct': 0,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        'What is the chemical formula for acetic acid, the main component of vinegar?',
    'answers': ['CH3COOH', 'H2SO4', 'NH3', 'C6H12O6'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        ' Which noble gas is commonly used in lighting, such as neon signs?',
    'answers': ['Krypton (Kr)', 'Argon (Ar)', 'Xenon (Xe)', ' Radon (Rn)'],
    'correct': 2,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        'What is the term for a substance that speeds up a chemical reaction without being consumed in the process?',
    'answers': ['Catalyst', 'Reactant', 'Product', 'Inhibitor'],
    'correct': 0,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        'Which type of bond involves the sharing of electrons between two atoms and is commonly found in molecules like water (H2O)?',
    'answers': [
      'Ionic bond',
      'Covalent bond',
      'Metallic bond',
      'Hydrogen bond'
    ],
    'correct': 1,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        'What is the chemical name for the "salt" used to melt ice on roads and sidewalks?',
    'answers': [
      'Sodium hydroxide',
      'Calcium carbonate',
      'Sodium chloride',
      'Potassium permanganate'
    ],
    'correct': 2,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        'What is the term for a substance that can act as both an acid and a base, such as water?',
    'answers': ['Neutralizer', 'Buffer', 'Catalyst', 'Indicator'],
    'correct': 1,
    'category': 'chemistry',
    'level': 'hard'
  },
  {
    'questions':
        ' Which element is used in the production of nuclear energy and atomic bombs and has the chemical symbol U?',
    'answers': [
      'Uranium (U)',
      'Ununquadium (Uuq)',
      'Ununpentium (Uup)',
      'Ununtrium (Uut)'
    ],
    'correct': 0,
    'category': 'chemistry',
    'level': 'hard'
  },
  //
  //
  //
  // ------------Sports-------------
  {
    'questions':
        " In which sport do players try to score goals by hitting a ball into the opposing team's net?",
    'answers': ['Basketball', 'Football', 'Tennis', 'Golf'],
    'correct': 1,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions': 'What is the highest possible score in a game of bowling?',
    'answers': ['100', '200', '300', '400'],
    'correct': 2,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions': 'Which sport is known as "The Sport of Kings"?',
    'answers': ['Baseball', 'Cricket', 'Polo', 'Badminton'],
    'correct': 2,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions': 'In which Olympic sport would you perform a vault?',
    'answers': ['Swimming', 'Gymnastics', 'Archery', 'Rowing'],
    'correct': 1,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions':
        'How many players are there on a standard soccer (football) team, including substitutes?',
    'answers': ['7', '9', '11', '13'],
    'correct': 2,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions': 'What is the main objective of the game of tennis?',
    'answers': [
      'Score touchdowns',
      'Score runs',
      'Score goals',
      'Score points by hitting a ball over the net'
    ],
    'correct': 3,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions':
        'Which sport involves throwing a heavy metal ball as far as possible?',
    'answers': ['Shot put', 'Javelin', 'Discus', 'Hammer throw'],
    'correct': 0,
    'category': 'sports',
    'level': 'easy'
  },

  {
    'questions': 'In which sport would you perform a slam dunk?',
    'answers': ['Volleyball', 'Basketball', 'Rugby', ' Ice hockey'],
    'correct': 1,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions': "Which sport is often referred to as America's pastime?",
    'answers': ['Basketball', 'Soccer', 'Baseball', 'Tennis'],
    'correct': 0,
    'category': 'sports',
    'level': 'easy'
  },
  {
    'questions':
        'How many players are there on a standard basketball team, including substitutes?',
    'answers': ['5', '7', '12', '10'],
    'correct': 3,
    'category': 'sports',
    'level': 'easy'
  },
  //
  //
  //
  //
  {
    'questions': 'In which sport would you perform a "slalom" maneuver?',
    'answers': ['Skiing', 'Table tennis', 'Volleyball', 'Cycling'],
    'correct': 0,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions': 'Which country is known for inventing the sport of cricket?',
    'answers': ['England', 'India', 'Australia', 'South Africa'],
    'correct': 0,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'Who is often referred to as "The Greatest" and is a legendary boxer known for his quick footwork and powerful punches?',
    'answers': ['Mike Tyson', 'Joe Frazier', 'Muhammad Ali', 'George Foreman'],
    'correct': 2,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'What is the term for a perfect score of 10 in the sport of gymnastics?',
    'answers': ['Perfect 10', 'Flawless 10', "Gymnast's 10", 'Olympic 10'],
    'correct': 0,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'Which sport involves sliding a stone on ice towards a target area, with the goal of landing it in the center?',
    'answers': ['Bobsleigh', 'Ice hockey', 'Figure skating', 'Curling'],
    'correct': 3,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'In which Olympic event would you perform a triple axel or a camel spin?',
    'answers': [
      'Diving',
      'Figure skating',
      'Long jump',
      'Synchronized swimming'
    ],
    'correct': 1,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'Which sport is associated with the term "grand slam" and involves hitting a ball over a net with a racket?',
    'answers': ['Baseball', 'Golf', 'Tennis', 'Badminton'],
    'correct': 2,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'What is the maximum number of players allowed on the field for a soccer (football) team during a match?',
    'answers': ['9', '11', '13', '15'],
    'correct': 1,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions':
        'Who is known as the "Flying Finn" and is considered one of the greatest long-distance runners in history?',
    'answers': ['Usain Bolt', 'Carl Lewis', 'Emil Zátopek', 'Paavo Nurmi'],
    'correct': 3,
    'category': 'sports',
    'level': 'medium'
  },
  {
    'questions': 'Which sport is often referred to as "The Beautiful Game"?',
    'answers': ['Basketball', 'Rugby', 'Soccer', 'Cricket'],
    'correct': 2,
    'category': 'sports',
    'level': 'medium'
  },
  //
  //
  //
  //
  {
    'questions':
        "Which country has won the most FIFA World Cup titles in men's soccer (football)?",
    'answers': ['Brazil', 'Germany', 'Italy', 'Argentina'],
    'correct': 0,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions': 'In which Olympic sport would you compete in the "decathlon"?',
    'answers': ['Swimming', 'Track and Field', 'Gymnastics', 'Wrestling'],
    'correct': 1,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        'Who holds the record for the most career home runs in Major League Baseball (MLB)?',
    'answers': ['Babe Ruth', 'Barry Bonds', 'Hank Aaron', 'Willie Mays'],
    'correct': 1,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        'Which tennis player has won the most Grand Slam singles titles in the Open Era?',
    'answers': [
      ' Roger Federer',
      'Rafael Nadal',
      'Serena Williams',
      'Margaret Court'
    ],
    'correct': 2,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions': 'In which year did the first modern Olympic Games take place?',
    'answers': ['1896', '1900', '1924', '1932'],
    'correct': 0,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        'Who is often referred to as the "Black Mamba" and had a legendary career in the NBA with the Los Angeles Lakers?',
    'answers': [
      'Michael Jordan',
      'LeBron James',
      'Kobe Bryant',
      "Shaquille O'Neal"
    ],
    'correct': 2,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        'What is the name of the famous horse race that takes place in the United Kingdom and is often referred to as "The Most Exciting Two Minutes in Sports"?',
    'answers': [
      'The Grand National',
      'The Epsom Derby',
      'The Kentucky Derby',
      'The Melbourne Cup'
    ],
    'correct': 2,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        ' In which sport would you find the terms "try," "conversion," and "scrum"?',
    'answers': ['Rugby', 'American Football', 'Cricket', ' Ice Hockey'],
    'correct': 0,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        'Which country has dominated the sport of cricket with numerous ICC Cricket World Cup victories?',
    'answers': ['India', 'England', 'Pakistan', 'Australia'],
    'correct': 3,
    'category': 'sports',
    'level': 'hard'
  },
  {
    'questions':
        'Who is the only athlete to have won Olympic gold medals in both the 100-meter and 200-meter sprints in three consecutive Olympics (1984, 1988, 1992)?',
    'answers': [
      ' Carl Lewis',
      'Usain Bolt',
      'Jesse Owens',
      'Florence Griffith-Joyner'
    ],
    'correct': 0,
    'category': 'sports',
    'level': 'hard'
  },
  //
  //
  //
  // ----------Geography-----------
  {
    'questions': 'What is the largest continent by land area?',
    'answers': ['Africa', 'Asia', 'North America', 'Europe'],
    'correct': 1,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions':
        'Which ocean is the largest in terms of both surface area and volume?',
    'answers': [
      'Atlantic Ocean',
      ' Indian Ocean',
      'Pacific Ocean',
      'Arctic Ocean'
    ],
    'correct': 2,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions': 'Which country is known as the Land of the Rising Sun?',
    'answers': ['China', 'India', 'Japan', 'Australia'],
    'correct': 2,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions': 'Which river is the longest in the world?',
    'answers': [
      'Amazon River',
      'Nile River',
      'Mississippi River',
      'Yangtze River'
    ],
    'correct': 1,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions': 'What is the capital city of France?',
    'answers': ['Paris', 'London', 'Madrid', 'Rome'],
    'correct': 0,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions': 'Which desert is often referred to as the "Sahara Desert"?',
    'answers': [
      'Gobi Desert',
      'Kalahari Desert',
      'Atacama Desert',
      'Sahara Desert'
    ],
    'correct': 3,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions':
        ' Which mountain range stretches across the western part of North America?',
    'answers': ['Rocky Mountains', 'Alps', 'Himalayas', 'Andes Mountains'],
    'correct': 0,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions': "What is the world's largest tropical rainforest?",
    'answers': [
      ' Amazon Rainforest',
      'Congo Rainforest',
      'Congo Rainforest',
      'Daintree Rainforest'
    ],
    'correct': 0,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions':
        'Which of the following countries is an island nation located in the Caribbean Sea?',
    'answers': ['Brazil', 'Mexico', 'Canada', 'Jamaica'],
    'correct': 3,
    'category': 'geography',
    'level': 'easy'
  },
  {
    'questions':
        ' What is the name of the canal that connects the Atlantic Ocean to the Pacific Ocean?',
    'answers': ['Suez Canal', ' Panama Canal', 'Corinth Canal', 'Erie Canal'],
    'correct': 1,
    'category': 'geography',
    'level': 'easy'
  },

  //
  //
  //
  //
  {
    'questions': 'Which African country is known as the "Pearl of Africa"?',
    'answers': ['Nigeria', 'Kenya', 'South Africa', 'Uganda'],
    'correct': 3,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions':
        ' Which two countries share the longest land border in the world?',
    'answers': [
      ' USA and Canada',
      'Russia and China',
      'India and Pakistan',
      'Brazil and Argentina'
    ],
    'correct': 1,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions': 'In which U.S. state would you find the Grand Canyon?',
    'answers': ['Arizona', 'Nevada', 'New Mexico', 'Colorado'],
    'correct': 0,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions': 'Which country is located on the Iberian Peninsula in Europe?',
    'answers': ['France', 'Spain', 'Italy', 'Greece'],
    'correct': 1,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions': 'What is the capital city of Australia?',
    'answers': ['Sydney', 'Melbourne', 'Canberra', 'Brisbane'],
    'correct': 2,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions': 'Which river flows through Cairo, the capital of Egypt?',
    'answers': ['Tigris', 'Nile', 'Euphrates', 'Jordan'],
    'correct': 1,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions': 'Which mountain is the highest in North America?',
    'answers': [
      'Mount Everest',
      'Mount Kilimanjaro',
      'Mount McKinley (Denali)',
      ' Mount Elbrus'
    ],
    'correct': 2,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions':
        'The Great Barrier Reef is located off the coast of which country?',
    'answers': ['Australia', 'Indonesia', 'Thailand', 'Philippines'],
    'correct': 0,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions':
        'Which of the following European countries is known for its fjords and scenic landscapes?',
    'answers': ['Switzerland', 'Austria', 'Norway', 'Greece'],
    'correct': 2,
    'category': 'geography',
    'level': 'medium'
  },
  {
    'questions': "What is the world's smallest continent",
    'answers': ['Africa', 'Europe', 'Antarctica', 'Australia'],
    'correct': 3,
    'category': 'geography',
    'level': 'medium'
  },

  
  
  
  
  {
    'questions': ' Which African country is known as the "Pearl of Africa"?',
    'answers': ['Nigeria', 'Kenya', 'Uganda', 'South Africa'],
    'correct': 2,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions':
        'Which two countries share the longest land border in the world?',
    'answers': [
      'USA and Canada',
      'Russia and China',
      'India and Pakistan',
      ' Brazil and Argentina'
    ],
    'correct': 1,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions': 'In which U.S. state would you find the Grand Canyon?',
    'answers': ['Arizona', 'Nevada', 'New Mexico', 'Colorado'],
    'correct': 0,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions': 'Which country is located on the Iberian Peninsula in Europe?',
    'answers': ['France', 'Spain', 'Italy', 'Greece'],
    'correct': 1,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions': 'What is the capital city of Australia?',
    'answers': ['Sydney', 'Melbourne', 'Brisbane', 'Canberra'],
    'correct': 3,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions': 'Which river flows through Cairo, the capital of Egypt?',
    'answers': ['Tigris', 'Nile', 'Euphrates', 'Jordan'],
    'correct': 1,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions': 'Which mountain is the highest in North America?',
    'answers': [
      ' Mount McKinley (Denali)',
      'Mount Everest',
      'Mount Kilimanjaro',
      'Mount Elbrus'
    ],
    'correct': 0,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions':
        'The Great Barrier Reef is located off the coast of which country?',
    'answers': ['Indonesia', 'Australia', 'Thailand', 'Philippines'],
    'correct': 1,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions':
        'Which of the following European countries is known for its fjords and scenic landscapes?',
    'answers': ['Switzerland', 'Austria', 'Norway', 'Greece'],
    'correct': 2,
    'category': 'geography',
    'level': 'hard'
  },
  {
    'questions': 'What is the world\'s smallest continent?',
    'answers': ['Africa', 'Europe', 'Antarctica', 'Australia'],
    'correct': 3,
    'category': 'geography',
    'level': 'hard'
  },
 
  //
  //
  //
  //-------------politics--------------
  {
    'questions': 'Who is the head of government in the United States?',
    'answers': [' President', 'Prime Minister', 'King', 'Governor'],
    'correct': 0,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': ' In a democracy, who typically has the ultimate decision-making power?',
    'answers': ['The people', 'The military', 'The ruling party', 'The monarch'],
    'correct': 0,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'What is the term for a system of government where a single person holds all the power and authority?',
    'answers': ['Democracy', 'Monarchy', 'Oligarchy', 'Dictatorship'],
    'correct': 3,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'What is the name of the document that outlines the fundamental laws and principles of a country?',
    'answers': ['Constitution', 'Manifesto', 'Treaty', 'Bill of Rights'],
    'correct': 0,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'How often are presidential elections held in the United States?',
    'answers': ['Every 2 years', 'Every 4 years', ' Every 6 years', 'Every 8 years'],
    'correct': 1,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'What is the term for a group of people who are elected to make and change laws in a country?',
    'answers': ['Cabinet', 'Parliament', 'Congress', 'Judiciary'],
    'correct': 1,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'What is the capital of France?',
    'answers': ['Berlin', 'Madrid', 'Paris', 'Rome'],
    'correct': 2,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'In the United Kingdom, what is the title of the head of government?',
    'answers': ['President', 'Prime Minister', 'Chancellor', 'King'],
    'correct': 1,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'In the United States, which political party uses the symbol of an elephant?',
    'answers': ['Democratic Party', 'Green Party', 'Republican Party', ' Libertarian Party'],
    'correct': 2,
    'category': 'politics',
    'level': 'easy'
  },
   {
    'questions': 'What is the term for the process of citizens selecting their representatives through voting?',
    'answers': ['Election', 'Legislation', 'Referendum', 'Revolution'],
    'correct': 0,
    'category': 'politics',
    'level': 'easy'
  },

  //
  //
  //
  //

  {
    'questions': ' In the United States, which amendment to the Constitution guarantees freedom of speech?',
    'answers': ['First Amendment', 'Second Amendment', 'Fourth Amendment', 'Tenth Amendment'],
    'correct': 0,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'Who is the current Secretary-General of the United Nations as of 2021?',
    'answers': ['Ban Ki-moon', ' Kofi Annan', 'Antonio Guterres', 'Boutros Boutros-Ghali'],
    'correct': 2,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'What is the term for a government system where a single political party controls the government and allows no opposition?',
    'answers':  ['Democracy', 'Oligarchy', 'Totalitarianism', 'Federalism'],
    'correct': 2,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'Who serves as the ceremonial head of state in the United Kingdom?',
    'answers': [' Prime Minister', 'President', 'Chancellor', ' Monarch (King or Queen)'],
    'correct': 3,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'Which political ideology advocates for the abolition of private property and the establishment of a classless society?',
    'answers': ['Capitalism', 'Socialism', 'Conservatism', 'Fascism'],
    'correct': 1,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'What is the term for the process of redrawing electoral district boundaries to favor a particular political party?',
    'answers': ['Gerrymandering', 'Referendum', 'Impeachment', 'Suffrage'],
    'correct': 0,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'Who is considered the "Father of the Constitution" in the United States?',
    'answers': ['Benjamin Franklin', 'George Washington', 'Thomas Jefferson', 'James Madison'],
    'correct': 3,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'What is the main legislative body of the European Union, where representatives from member states make decisions?',
    'answers': ['European Parliament', 'European Council', 'European Commission', 'European Court of Justice'],
    'correct': 0,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'Which international organization aims to promote global economic cooperation and development?',
    'answers': ['United Nations (UN)', 'International Monetary Fund (IMF)', ' World Trade Organization (WTO)', 'World Bank'],
    'correct': 3,
    'category': 'politics',
    'level': 'medium'
  },
  {
    'questions': 'What is the primary role of the U.S. Supreme Court?',
    'answers': ['Making laws', ' Enforcing laws', 'Interpreting laws', ' Implementing laws'],
    'correct': 2,
    'category': 'politics',
    'level': 'medium'
  },
  
  //
  //
  //
  //

  {
    'questions': 'Which international organization is responsible for enforcing international law and resolving disputes between countries?',
    'answers': [' United Nations', 'International Court of Justice', 'World Trade Organization', 'Interpol'],
    'correct': 1,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': ' Who is the author of the book "The Prince," which explores political philosophy and governance?',
    'answers': ['Karl Marx', 'Niccolò Machiavelli', 'Thomas Hobbes', 'Jean-Jacques Rousseau'],
    'correct': 1,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': ' Which state in India was the first to implement the Panchayati Raj system in 1959?',
    'answers': ['West Bengal', 'Rajasthan', 'Kerala', ' Andhra Pradesh'],
    'correct': 0,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': 'Who was the first woman to serve as the Chief Minister of an Indian state?',
    'answers': ['Indira Gandhi', 'Mayawati', ' J. Jayalalithaa', 'Sucheta Kripalani'],
    'correct': 3,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': 'What is the name of the policy adopted by the Indian government in 1991 to liberalize and transform the Indian economy?',
    'answers': ['Green Revolution', 'Blue Economy', 'Economic Reforms of 1991', ' LPG Reforms'],
    'correct': 3,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': 'In Indian politics, what is the "Right to Information Act" also known as?',
    'answers': ['Jan Lokpal Bill', 'RTI Act', 'Swaraj Bill', 'Lok Sabha Act'],
    'correct': 1,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': ' Who was the first Dalit (Scheduled Caste) President of India?',
    'answers': ['Dr. B.R. Ambedkar', 'Giani Zail Singh', 'K.R. Narayanan', ' Dr. Shankar Dayal Sharma'],
    'correct': 2,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': ' Which amendment to the Indian Constitution made the Right to Education a fundamental right for children between 6 and 14 years of age?',
    'answers': [' 73rd Amendment', '74th Amendment', '86th Amendment', ' 95th Amendment'],
    'correct': 2,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': 'Who is known as the "Iron Lady of India" and served as the first female Prime Minister of India?',
    'answers': ['Indira Gandhi', 'Mayawati', 'J. Jayalalithaa', 'Sonia Gandhi'],
    'correct': 0,
    'category': 'politics',
    'level': 'hard'
  },
   {
    'questions': "Which political party's election symbol is a cycle in India?",
    'answers': ['Samajwadi Party', 'Bharatiya Janata Party (BJP)', 'Indian National Congress', ' Aam Aadmi Party (AAP)'],
    'correct': 0,
    'category': 'politics',
    'level': 'hard'
  },

];
Future initial() async {
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
