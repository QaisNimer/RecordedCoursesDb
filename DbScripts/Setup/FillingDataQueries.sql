-- Insert data into LookupTypes table
INSERT INTO LookupTypes ([Type]) VALUES ('Category');     -- TypeID will be 10
INSERT INTO LookupTypes ([Type]) VALUES ('Level');        -- TypeID will be 20
INSERT INTO LookupTypes ([Type]) VALUES ('RateAmount');   -- TypeID will be 30
INSERT INTO LookupTypes ([Type]) VALUES ('PricePlans');   -- TypeID will be 40
INSERT INTO LookupTypes ([Type]) VALUES ('VideoType');    -- TypeID will be 50

INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1001, 10);  -- Programming
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1002, 10);  -- Economics
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1003, 10);  -- Languages
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1004, 10);  -- Business
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1005, 10);  -- Marketing
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1006, 10);  -- Health & Fitness
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1007, 10);  -- Arts & Creativity
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1008, 10);  -- Music
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1009, 10);  -- Photography
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1010, 10);  -- Personal Development
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1011, 10);  -- Science
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1012, 10);  -- Mathematics
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1013, 10);  -- Engineering
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1014, 10);  -- History
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (1015, 10);  -- Psychology

-- Insert data into LookupItems table for Level (TypeID = 20)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (2001, 20);  -- Beginner
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (2002, 20);  -- Intermediate
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (2003, 20);  -- Advanced
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (2004, 20);  -- Expert

-- Insert data into LookupItems table for RateAmount (TypeID = 30)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (3001, 30);  -- 1 Star
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (3002, 30);  -- 2 Stars
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (3003, 30);  -- 3 Stars
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (3004, 30);  -- 4 Stars
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (3005, 30);  -- 5 Stars

-- Insert data into LookupItems table for PricePlans (TypeID = 40)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (4001, 40);  -- Free
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (4002, 40);  -- Basic ($9.99/month)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (4003, 40);  -- Standard ($19.99/month)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (4004, 40);  -- Premium ($29.99/month)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (4005, 40);  -- Enterprise ($49.99/month)

-- Insert data into LookupItems table for VideoType (TypeID = 50)
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (5001, 50);  -- Tutorial
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (5002, 50);  -- Lecture
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (5003, 50);  -- Demo
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (5004, 50);  -- Workshop
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (5005, 50);  -- Live Coding
INSERT INTO LookupItems (ItemsID, TypeID) VALUES (5006, 50);  -- Case Study

-- Update on LookupItems  table because I added column called [Name]
-- Update LookupItems for Category (TypeID = 10)
UPDATE LookupItems SET [Name] = 'Programming' WHERE ItemsID = 1001 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Economics' WHERE ItemsID = 1002 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Languages' WHERE ItemsID = 1003 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Business' WHERE ItemsID = 1004 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Marketing' WHERE ItemsID = 1005 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Health & Fitness' WHERE ItemsID = 1006 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Arts & Creativity' WHERE ItemsID = 1007 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Music' WHERE ItemsID = 1008 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Photography' WHERE ItemsID = 1009 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Personal Development' WHERE ItemsID = 1010 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Science' WHERE ItemsID = 1011 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Mathematics' WHERE ItemsID = 1012 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Engineering' WHERE ItemsID = 1013 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'History' WHERE ItemsID = 1014 AND TypeID = 10;
UPDATE LookupItems SET [Name] = 'Psychology' WHERE ItemsID = 1015 AND TypeID = 10;

-- Update LookupItems for Level (TypeID = 20)
UPDATE LookupItems SET [Name] = 'Beginner' WHERE ItemsID = 2001 AND TypeID = 20;
UPDATE LookupItems SET [Name] = 'Intermediate' WHERE ItemsID = 2002 AND TypeID = 20;
UPDATE LookupItems SET [Name] = 'Advanced' WHERE ItemsID = 2003 AND TypeID = 20;
UPDATE LookupItems SET [Name] = 'Expert' WHERE ItemsID = 2004 AND TypeID = 20;

-- Update LookupItems for RateAmount (TypeID = 30)
UPDATE LookupItems SET [Name] = '1 Star' WHERE ItemsID = 3001 AND TypeID = 30;
UPDATE LookupItems SET [Name] = '2 Stars' WHERE ItemsID = 3002 AND TypeID = 30;
UPDATE LookupItems SET [Name] = '3 Stars' WHERE ItemsID = 3003 AND TypeID = 30;
UPDATE LookupItems SET [Name] = '4 Stars' WHERE ItemsID = 3004 AND TypeID = 30;
UPDATE LookupItems SET [Name] = '5 Stars' WHERE ItemsID = 3005 AND TypeID = 30;

-- Update LookupItems for PricePlans (TypeID = 40)
UPDATE LookupItems SET [Name] = 'Free' WHERE ItemsID = 4001 AND TypeID = 40;
UPDATE LookupItems SET [Name] = 'Basic ($9.99/month)' WHERE ItemsID = 4002 AND TypeID = 40;
UPDATE LookupItems SET [Name] = 'Standard ($19.99/month)' WHERE ItemsID = 4003 AND TypeID = 40;
UPDATE LookupItems SET [Name] = 'Premium ($29.99/month)' WHERE ItemsID = 4004 AND TypeID = 40;
UPDATE LookupItems SET [Name] = 'Enterprise ($49.99/month)' WHERE ItemsID = 4005 AND TypeID = 40;

-- Update LookupItems for VideoType (TypeID = 50)
UPDATE LookupItems SET [Name] = 'Tutorial' WHERE ItemsID = 5001 AND TypeID = 50;
UPDATE LookupItems SET [Name] = 'Lecture' WHERE ItemsID = 5002 AND TypeID = 50;
UPDATE LookupItems SET [Name] = 'Demo' WHERE ItemsID = 5003 AND TypeID = 50;
UPDATE LookupItems SET [Name] = 'Workshop' WHERE ItemsID = 5004 AND TypeID = 50;
UPDATE LookupItems SET [Name] = 'Live Coding' WHERE ItemsID = 5005 AND TypeID = 50;
UPDATE LookupItems SET [Name] = 'Case Study' WHERE ItemsID = 5006 AND TypeID = 50;

======================================================================================================================================================================================
Add Data To Actors: 
INSERT INTO [Admins] ([Full Name], Email, [Password])
VALUES 
('John Smith', 'john.smith@courses.com', 'admin123'),
('Sarah Johnson', 'sarah.johnson@courses.com', 'secure456'),
('Michael Brown', 'michael.brown@courses.com', 'pass7890'),
('Emily Davis', 'emily.davis@courses.com', 'adminpass1'),
('Robert Wilson', 'robert.wilson@courses.com', 'system123');

INSERT INTO [Instructors] ([Full Name], Email, [Password], [Phone Number], [Profile Image], Bio)
VALUES 
('David Anderson', 'david.anderson@instructor.com', 'teach2023', '0791234567', 'profiles/david.jpg', 'Computer Science professor with 15 years of experience in software development and data structures.'),
('Jennifer Taylor', 'jennifer.taylor@instructor.com', 'password1', '0792345678', 'profiles/jennifer.jpg', 'Economics expert with background in international trade and finance.'),
('Mohammed Al-Jaber', 'mohammed.j@instructor.com', 'secure789', '0771234567', 'profiles/mohammed.jpg', 'Language specialist teaching Arabic, English, and Spanish.'),
('Laura Martinez', 'laura.m@instructor.com', 'instructor1', '0781234567', 'profiles/laura.jpg', 'Marketing professional with 10 years experience in digital marketing strategies.'),
('Ahmed Hassan', 'ahmed.h@instructor.com', 'course2023', '0791987654', 'profiles/ahmed.jpg', 'PhD in Physics with specialization in quantum mechanics.'),
('Sophia Wong', 'sophia.w@instructor.com', 'physics101', '0782345678', 'profiles/sophia.jpg', 'Mathematics instructor specializing in calculus and linear algebra.'),
('James Wilson', 'james.w@instructor.com', 'teaching22', '0773456789', 'profiles/james.jpg', 'Fitness coach and certified nutritionist with expertise in strength training.'),
('Layla Ibrahim', 'layla.i@instructor.com', 'creative99', '0784567890', 'profiles/layla.jpg', 'Professional photographer with expertise in portrait and landscape photography.'),
('Omar Khalid', 'omar.k@instructor.com', 'musicpro1', '0795678901', 'profiles/omar.jpg', 'Classical music composer and instructor with 20 years of piano teaching experience.'),
('Natalie Chen', 'natalie.c@instructor.com', 'design123', '0786789012', 'profiles/natalie.jpg', 'UX/UI designer with experience at major tech companies.');


INSERT INTO [Learners] ([Full Name], Email, [Password], [Profile Image], Bio)
VALUES 
('Alex Johnson', 'alex.j@gmail.com', 'learning1', 'learners/alex.jpg', 'Computer science student interested in web development and AI.'),
('Fatima Al-Zaidi', 'fatima.a@outlook.com', 'student22', 'learners/fatima.jpg', 'Business major looking to expand knowledge in marketing and economics.'),
('Rami Khalil', 'rami.k@yahoo.com', 'password7', 'learners/rami.jpg', 'Self-taught programmer seeking to formalize education in software development.'),
('Zainab Mohammed', 'zainab.m@gmail.com', 'learn2023', 'learners/zainab.jpg', 'Aspiring photographer interested in digital editing and composition.'),
('Thomas Lee', 'thomas.l@hotmail.com', 'courses99', 'learners/thomas.jpg', 'Working professional upgrading skills in data science.'),
('Leila Adnan', 'leila.a@gmail.com', 'student12', 'learners/leila.jpg', 'Language enthusiast learning Spanish and German for travel.'),
('Ryan Park', 'ryan.p@outlook.com', 'learning7', 'learners/ryan.jpg', 'High school student exploring different career paths through online courses.'),
('Hana Ibrahim', 'hana.i@gmail.com', 'course123', 'learners/hana.jpg', 'Fitness enthusiast learning about nutrition and exercise science.'),
('Jason Wong', 'jason.w@yahoo.com', 'student55', 'learners/jason.jpg', 'Music lover learning piano and music theory.'),
('Aisha Mahmoud', 'aisha.m@gmail.com', 'secure123', 'learners/aisha.jpg', 'Medical student taking courses in biology and chemistry.'),
('Daniel Garcia', 'daniel.g@outlook.com', 'learner99', 'learners/daniel.jpg', 'Marketing professional enhancing digital marketing skills.'),
('Layla Hassan', 'layla.h@gmail.com', 'password8', 'learners/layla.jpg', 'Graphic designer expanding into UI/UX design.'),
('Mohammad Saleh', 'mohammad.s@yahoo.com', 'student77', 'learners/mohammad.jpg', 'Engineering graduate specializing in renewable energy.'),
('Emma Wilson', 'emma.w@gmail.com', 'learning5', 'learners/emma.jpg', 'Psychology student interested in cognitive behavioral therapy.'),
('Yousef Ali', 'yousef.a@outlook.com', 'course456', 'learners/yousef.jpg', 'History enthusiast focusing on Middle Eastern civilizations.');
==========================================================================================================================================================================================================================================================

-- Insert Categories data
INSERT INTO Categories ([CategoryItem], CategoryType)
VALUES 
(1001, 10), -- Programming category
(1002, 10), -- Economics category
(1003, 10), -- Languages category
(1004, 10), -- Business category
(1005, 10), -- Marketing category
(1006, 10), -- Health & Fitness category
(1007, 10), -- Arts & Creativity category
(1008, 10), -- Music category
(1009, 10), -- Photography category
(1010, 10); -- Personal Development category

-- Insert Courses data
INSERT INTO Courses ([Title], [Total Duration], [Discount], [DiscountFlag], [ItemsID], [Description], InstructorsID)
VALUES 
('Introduction to Python Programming', '20:00', '0%', 0, 2001, 'A beginner-friendly course covering Python basics, data structures, and simple applications.', 1),
('Advanced Java Development', '30:15', '15%', 1, 2003, 'Deep dive into Java enterprise applications, design patterns, and frameworks.', 1),
('Macroeconomics Principles', '15:30', '0%', 0, 2002, 'Understanding economic indicators, fiscal policy, and market behaviors.', 2),
('Spanish for Beginners', '25:45', '10%', 1, 2001, 'Learn essential Spanish vocabulary, grammar, and conversation skills.', 3),
('Digital Marketing Fundamentals', '18:20', '0%', 0, 2001, 'Introduction to SEO, social media marketing, and content strategy.', 4),
('Quantum Physics Explained', '22:10', '0%', 0, 2003, 'Complex quantum concepts broken down with practical examples.', 5),
('Calculus I', '28:40', '20%', 1, 2002, 'Comprehensive course on limits, derivatives, and integrals.', 6),
('Strength Training Basics', '12:15', '5%', 1, 2001, 'Proper techniques for major lifts and creating an effective routine.', 7),
('Portrait Photography Masterclass', '16:50', '0%', 0, 2002, 'Composition, lighting, and post-processing for stunning portraits.', 8),
('Piano for Beginners', '24:30', '15%', 1, 2001, 'Learn to read music and play simple songs on the piano.', 9),
('UX/UI Design Principles', '19:45', '0%', 0, 2002, 'User-centered design approaches for digital products.', 10);

-- Insert Lessons data (for the first few courses)
-- Python Course Lessons
INSERT INTO Lessons ([Title], [Duration], [VideoPath], [ItemsID], InstructorsID, CourseID)
VALUES 
('Getting Started with Python', '01:15', 'videos/python/intro.mp4', 5001, 1, 1),
('Variables and Data Types', '01:30', 'videos/python/datatypes.mp4', 5001, 1, 1),
('Control Flow: If Statements', '01:45', 'videos/python/ifstatements.mp4', 5001, 1, 1),
('Loops in Python', '01:20', 'videos/python/loops.mp4', 5001, 1, 1),
('Functions and Modules', '02:00', 'videos/python/functions.mp4', 5002, 1, 1);

-- Java Course Lessons
INSERT INTO Lessons ([Title], [Duration], [VideoPath], [ItemsID], InstructorsID, CourseID)
VALUES 
('Java Enterprise Architecture', '02:30', 'videos/java/architecture.mp4', 5002, 1, 2),
('Design Patterns in Java', '03:15', 'videos/java/patterns.mp4', 5002, 1, 2),
('Spring Framework Fundamentals', '02:45', 'videos/java/spring.mp4', 5003, 1, 2),
('Hibernate ORM', '02:30', 'videos/java/hibernate.mp4', 5001, 1, 2),
('RESTful API Development', '02:15', 'videos/java/rest.mp4', 5003, 1, 2);

-- Economics Course Lessons
INSERT INTO Lessons ([Title], [Duration], [VideoPath], [ItemsID], InstructorsID, CourseID)
VALUES 
('Introduction to Macroeconomics', '01:30', 'videos/econ/intro.mp4', 5002, 2, 3),
('GDP and Economic Growth', '01:45', 'videos/econ/gdp.mp4', 5002, 2, 3),
('Inflation and Price Levels', '01:20', 'videos/econ/inflation.mp4', 5002, 2, 3),
('Fiscal Policy', '01:45', 'videos/econ/fiscal.mp4', 5002, 2, 3),
('Monetary Policy', '02:00', 'videos/econ/monetary.mp4', 5002, 2, 3);

-- Spanish Course Lessons
INSERT INTO Lessons ([Title], [Duration], [VideoPath], [ItemsID], InstructorsID, CourseID)
VALUES 
('Spanish Alphabet and Pronunciation', '01:15', 'videos/spanish/alphabet.mp4', 5001, 3, 4),
('Greetings and Introductions', '01:30', 'videos/spanish/greetings.mp4', 5001, 3, 4),
('Basic Spanish Vocabulary', '01:45', 'videos/spanish/vocabulary.mp4', 5001, 3, 4),
('Present Tense Verbs', '02:00', 'videos/spanish/verbs.mp4', 5002, 3, 4),
('Conversation Practice', '02:15', 'videos/spanish/conversation.mp4', 5004, 3, 4);

-- Link courses to categories
INSERT INTO CoursesCategories (CoursesID, CategoryID)
VALUES 
(1, 1), -- Python - Programming
(2, 1), -- Java - Programming
(3, 2), -- Macroeconomics - Economics
(4, 3), -- Spanish - Languages
(5, 5), -- Digital Marketing - Marketing
(6, 11), -- Quantum Physics - Science
(7, 12), -- Calculus - Mathematics
(8, 6), -- Strength Training - Health & Fitness
(9, 9), -- Portrait Photography - Photography
(10, 8), -- Piano - Music
(11, 7); -- UX/UI Design - Arts & Creativity

-- Create some learner enrollments
INSERT INTO LearneresCourses (LearnersID, CoursesID)
VALUES 
(1, 1), -- Alex enrolled in Python
(1, 2), -- Alex enrolled in Java
(1, 6), -- Alex enrolled in Quantum Physics
(2, 3), -- Fatima enrolled in Macroeconomics
(2, 4), -- Fatima enrolled in Business
(3, 1), -- Rami enrolled in Python
(3, 2), -- Rami enrolled in Java
(3, 11), -- Rami enrolled in UX/UI Design
(4, 9), -- Zainab enrolled in Photography
(5, 1), -- Thomas enrolled in Python
(6, 4), -- Leila enrolled in Spanish
(7, 10), -- Ryan enrolled in Piano
(8, 8), -- Hana enrolled in Strength Training
(9, 10), -- Jason enrolled in Piano
(10, 6), -- Aisha enrolled in Quantum Physics
(11, 5), -- Daniel enrolled in Digital Marketing
(12, 11), -- Layla enrolled in UX/UI Design
(13, 6), -- Mohammad enrolled in Quantum Physics
(14, 6), -- Emma enrolled in Quantum Physics
(15, 3); -- Yousef enrolled in Macroeconomics

-- Add some course ratings
INSERT INTO CourcesRate (CoursesID, [ItemsID], [RateAmount], [Message])
VALUES 
(1, 3005, 5, 'Excellent introduction to Python. Very well explained!'),
(1, 3004, 4, 'Good course but could use more exercises.'),
(2, 3005, 5, 'Comprehensive coverage of Java. I learned a lot!'),
(3, 3003, 3, 'Content is good but presentation could be more engaging.'),
(4, 3004, 4, 'Great Spanish course for beginners.'),
(5, 3004, 4, 'Useful digital marketing concepts covered thoroughly.'),
(6, 3005, 5, 'Mind-blowing quantum physics explanations!'),
(7, 3004, 4, 'Helped me understand calculus much better.'),
(8, 3004, 4, 'Practical and effective training routines.'),
(9, 3005, 5, 'Transformed my portrait photography skills.'),
(10, 3003, 3, 'Good for beginners but moves a bit slowly.');

-- Add instructor ratings
INSERT INTO InstructorsRate (InstructorID, [ItemsID], [RateAmount], [Message])
VALUES 
(1, 3005, 5, 'Excellent teaching style and very knowledgeable.'),
(2, 3004, 4, 'Clear explanations of complex economic concepts.'),
(3, 3005, 5, 'Makes learning Spanish fun and engaging!'),
(4, 3004, 4, 'Great practical examples in digital marketing.'),
(5, 3005, 5, 'Brilliant at explaining complex physics concepts.'),
(6, 3003, 3, 'Knows the material but sometimes moves too quickly.');


-- Add some lesson progress for learners
INSERT INTO LearnerLessonsProgress (LearnersID, LessonsID, [Tracker])
VALUES 
(1, 1, 100), -- Alex completed first Python lesson
(1, 2, 100), -- Alex completed second Python lesson
(1, 3, 75),  -- Alex 75% through third Python lesson
(1, 4, 0),   -- Alex hasn't started fourth Python lesson
(2, 11, 100), -- Fatima completed first Economics lesson
(2, 12, 80),  -- Fatima 80% through second Economics lesson
(3, 1, 100),  -- Rami completed first Python lesson
(3, 2, 50),   -- Rami 50% through second Python lesson
(4, 19, 100), -- Zainab completed first Photography lesson
(5, 1, 100),  -- Thomas completed first Python lesson
(5, 2, 100),  -- Thomas completed second Python lesson
(5, 3, 100),  -- Thomas completed third Python lesson
(5, 4, 90);   -- Thomas 90% through fourth Python lesson

-- Add some course progress (calculated based on lesson completion)
INSERT INTO LearnerCoursesProgress (LearnersID, CoursesID, [Tracker])
VALUES 
(1, 1, 55),  -- Alex 55% through Python course
(2, 3, 36),  -- Fatima 36% through Economics course
(3, 1, 30),  -- Rami 30% through Python course
(4, 9, 20),  -- Zainab 20% through Photography course
(5, 1, 78);  -- Thomas 78% through Python course

-- Add some course favorites
INSERT INTO CourseFavorites (CoursesID, LearnersID)
VALUES 
(1, 1),  -- Alex favorited Python
(2, 1),  -- Alex favorited Java
(3, 2),  -- Fatima favorited Economics
(6, 10), -- Aisha favorited Quantum Physics
(8, 8),  -- Hana favorited Strength Training
(10, 9); -- Jason favorited Piano

-- Add some search history
INSERT INTO SearchHistory (CoursesID, LearnersID, [TitleSearch])
VALUES 
(1, 1, 'python programming beginners'),
(2, 1, 'java advanced course'),
(3, 2, 'economics basics'),
(4, 6, 'learn spanish quickly'),
(6, 10, 'quantum physics explained simply'),
(8, 8, 'strength training for beginners'),
(9, 4, 'portrait photography tips');

-- Add some filteration preferences
INSERT INTO Filteration (LearnersID, [Title], [Discount], [Total Duration], [ItemsID])
VALUES 
(1, 'Programming', '0%', '20:00', 2001),  -- Alex filtered for beginner programming courses
(2, 'Economics', '0%', '15:00', 2002),    -- Fatima filtered for intermediate economics courses
(4, 'Photography', '0%', '15:00', 2002),  -- Zainab filtered for intermediate photography courses
(8, 'Fitness', '5%', '12:00', 2001),      -- Hana filtered for beginner fitness courses with discount
(10, 'Physics', '0%', '20:00', 2003);     -- Aisha filtered for advanced physics courses

======================================================================================================================================================================================================================================================
-- Add more learner ratings
INSERT INTO LearnersRate (LearnersID, [ItemsID], [RateAmount], [Message])
VALUES 
(1, 3005, 5, 'Really enjoying my learning journey on this platform!'),
(2, 3004, 4, 'Good selection of courses, interface could be improved'),
(3, 3005, 5, 'Excellent platform for self-paced learning'),
(4, 3004, 4, 'Great variety of courses in my area of interest'),
(5, 3004, 4, 'High quality instructors, very knowledgeable'),
(6, 3003, 3, 'Decent platform but sometimes videos buffer too much'),
(7, 3005, 5, 'Perfect for my learning style, love the interactive lessons'),
(8, 3004, 4, 'Great fitness content, would like more advanced options'),
(9, 3005, 5, 'The music courses are exceptional, highly recommend'),
(10, 3004, 4, 'Science courses are well-structured and comprehensive');

-- Add more learner-lesson connections
INSERT INTO LearneresLessons (LearnersID, LessonsID)
VALUES 
-- Alex's lessons
(1, 1), -- Python intro
(1, 2), -- Python variables
(1, 3), -- Python if statements
(1, 4), -- Python loops
(1, 6), -- Java architecture
(1, 7), -- Java design patterns

-- Fatima's lessons
(2, 11), -- Econ intro
(2, 12), -- GDP
(2, 13), -- Inflation
(2, 16), -- Spanish alphabet

-- Rami's lessons
(3, 1), -- Python intro
(3, 2), -- Python variables
(3, 6), -- Java architecture
(3, 7), -- Java design patterns

-- Zainab's lessons (assuming Photography lessons would be around ID 20-25)
(4, 19), -- Assuming this is a Photography lesson ID
(4, 20), -- Assuming this is a Photography lesson ID

-- Thomas's lessons
(5, 1), -- Python intro
(5, 2), -- Python variables
(5, 3), -- Python if statements
(5, 4), -- Python loops
(5, 5), -- Python functions

-- Leila's lessons
(6, 16), -- Spanish alphabet
(6, 17), -- Spanish greetings
(6, 18), -- Spanish vocabulary



-- Add more search history
INSERT INTO SearchHistory (CoursesID, LearnersID, [TitleSearch])
VALUES 
(1, 3, 'python for data science'),
(5, 11, 'social media marketing strategies'),
(7, 6, 'calculus for beginners'),
(10, 7, 'how to learn piano fast'),
(11, 12, 'best UI design practices'),
(6, 13, 'quantum mechanics basics'),
(3, 2, 'economic policy impact'),
(8, 14, 'effective workout routines'),
(9, 4, 'lighting for indoor portraits'),
(10, 9, 'classical piano techniques');

-- Add more lesson progress data
INSERT INTO LearnerLessonsProgress (LearnersID, LessonsID, [Tracker])
VALUES 
-- Additional progress for existing users
(1, 5, 30),   -- Alex 30% through fifth Python lesson
(1, 6, 100),  -- Alex completed first Java lesson
(1, 7, 60),   -- Alex 60% through second Java lesson

(2, 13, 50),  -- Fatima 50% through third Economics lesson
(2, 14, 20),  -- Fatima 20% through fourth Economics lesson

(3, 3, 25),   -- Rami 25% through third Python lesson
(3, 6, 75),   -- Rami 75% through first Java lesson

-- Progress for other users
(6, 16, 100), -- Leila completed first Spanish lesson
(6, 17, 100), -- Leila completed second Spanish lesson
(6, 18, 70),  -- Leila 70% through third Spanish lesson



(8, 19, 100), -- Hana completed a Strength Training lesson (assuming ID)
(8, 20, 80),  -- Hana 80% through another Strength Training lesson (assuming ID)



(10, 16, 100), -- Aisha completed a Quantum Physics lesson (assuming ID)
(10, 17, 100), -- Aisha completed another Quantum Physics lesson (assuming ID)
(10, 18, 100), -- Aisha completed a third Quantum Physics lesson (assuming ID)
(10, 19, 45);  -- Aisha 45% through fourth Quantum Physics lesson (assuming ID)

-- Add more course progress data
INSERT INTO LearnerCoursesProgress (LearnersID, CoursesID, [Tracker])
VALUES 
(1, 2, 40),   -- Alex 40% through Java course
(1, 6, 15),   -- Alex 15% through Quantum Physics course

(2, 4, 25),   -- Fatima 25% through Spanish course

(3, 2, 20),   -- Rami 20% through Java course
(3, 11, 10),  -- Rami 10% through UX/UI Design course

(6, 4, 70),   -- Leila 70% through Spanish course
(7, 10, 45),  -- Ryan 45% through Piano course
(8, 8, 60),   -- Hana 60% through Strength Training course
(9, 10, 75),  -- Jason 75% through Piano course
(10, 6, 85),  -- Aisha 85% through Quantum Physics course
(11, 5, 30),  -- Daniel 30% through Digital Marketing course
(12, 11, 50), -- Layla 50% through UX/UI Design course
(13, 6, 25),  -- Mohammad 25% through Quantum Physics course
(14, 6, 40),  -- Emma 40% through Quantum Physics course
(15, 3, 35);  -- Yousef 35% through Macroeconomics course

-- Add more course favorites
INSERT INTO CourseFavorites (CoursesID, LearnersID)
VALUES 
(6, 1),   -- Alex favorited Quantum Physics
(5, 2),   -- Fatima favorited Digital Marketing
(11, 3),  -- Rami favorited UX/UI Design
(9, 4),   -- Zainab favorited Photography
(1, 5),   -- Thomas favorited Python
(4, 6),   -- Leila favorited Spanish
(10, 7),  -- Ryan favorited Piano
(8, 8),   -- Hana favorited Strength Training (already exists, this would cause error)
(7, 11),  -- Daniel favorited Calculus
(5, 11),  -- Daniel favorited Digital Marketing
(11, 12), -- Layla favorited UX/UI Design
(7, 13),  -- Mohammad favorited Calculus
(6, 14),  -- Emma favorited Quantum Physics
(3, 15);  -- Yousef favorited Macroeconomics

-- Add more filteration preferences
INSERT INTO Filteration (LearnersID, [Title], [Discount], [Total Duration], [ItemsID])
VALUES 
(3, 'Java', '15%', '30:00', 2003),       -- Rami filtered for advanced Java courses with discount
(5, 'Python', '0%', '20:00', 2001),      -- Thomas filtered for beginner Python courses
(6, 'Spanish', '10%', '25:00', 2001),    -- Leila filtered for beginner Spanish courses with discount
(7, 'Music', '15%', '24:00', 2001),      -- Ryan filtered for beginner music courses with discount
(9, 'Piano', '15%', '24:00', 2001),      -- Jason filtered for beginner piano courses with discount
(11, 'Marketing', '0%', '18:00', 2001),  -- Daniel filtered for beginner marketing courses
(12, 'Design', '0%', '19:00', 2002),     -- Layla filtered for intermediate design courses
(13, 'Physics', '0%', '22:00', 2003),    -- Mohammad filtered for advanced physics courses
(14, 'Science', '0%', '22:00', 2003),    -- Emma filtered for advanced science courses
(15, 'History', '0%', '15:00', 2002);    -- Yousef filtered for intermediate history courses


INSERT INTO [Courses Price] (CourseID, ItemsID, Price)
VALUES 
(1, 4002, 9.99),   -- Python course - Basic plan
(2, 4003, 19.99),  -- Java course - Standard plan
(3, 4001, 0.00),   -- Macroeconomics - Free
(4, 4004, 29.99),  -- Spanish - Premium plan
(5, 4003, 19.99),  -- Digital Marketing - Standard plan
(6, 4005, 49.99),  -- Quantum Physics - Enterprise plan
(7, 4002, 9.99),   -- Calculus - Basic plan
(8, 4003, 19.99),  -- Strength Training - Standard plan
(9, 4004, 29.99),  -- Photography - Premium plan
(10, 4002, 9.99);  -- Piano - Basic plan