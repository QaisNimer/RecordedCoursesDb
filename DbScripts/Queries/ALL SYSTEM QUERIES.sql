create database [Recorded Courses System];
--------------
create table LookupTypes(TypeID int primary key,[Type] varchar(255) not null);
create table LookupItems(ItemsID int primary key ,[TypeID] int, [Name] VARCHAR(255));
--------------
Create Table [Admins]( ID int primary Key identity(1,1) ,
[Full Name] varchar(255) not null ,
Email varchar(255) not null Unique Check(Email Like'_%@__%.__%'),
[Password] varchar(14) not null check([Password] like'_______%'),
[Created By] varchar(255) Default 'System',
[Updated By]varchar(255) Default '__',
[CreationDate] DateTime Default GetDate(),
[UpdatedDate] DateTime Default GetDate(),
[IsActive] bit Default 1
);

Create Table [Instructors](
[ID] int primary Key identity(1,1) ,
[Full Name] varchar(255) not null ,
Email varchar(255) not null Unique Check(Email Like'_%@__%.__%'),
[Password] varchar(14) not null check([Password] like'_______%'),
[Phone Number] varchar(10) not null unique check([Phone Number] like'079%_______' or[Phone Number] like'078%_______'or[Phone Number] like'077%_______' ),
[Profile Image] varchar(255),
Bio varchar(255),
[Created By] varchar(255) Default 'System',
[Updated By]varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1
);

Create Table [Learners]( ID int primary Key identity(1,1) ,
[Full Name] varchar(255) not null ,
Email varchar(255) not null Unique Check(Email Like'_%@__%.__%'),
[Password] varchar(14) not null check([Password] like'_______%'),
[Profile Image] varchar(255),
Bio varchar(255),
[Created By] varchar(255) Default 'System',
[Updated By]varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1
);

Create Table Courses (
ID int primary Key identity(1,1),
[Title] varchar(255) not null,
[Total Duration] varchar(10) not null,
[Discount] varchar(5) default '0%' check(discount like '_%' ) not null,
[DiscountFlag] bit default 0 not null,
[ItemsID] int,
[Description] varchar(255) not null,
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
FOREIGN KEY ([ItemsID]) REFERENCES LookupItems([ItemsID]) ON DELETE CASCADE,
);
create table Lessons(
ID int primary Key identity(1,1),
[Title] varchar(255) not null,
[Duration] varchar(10) not null,
[VideoPath] VARCHAR(255),
[ItemsID] int,
[IsComplete] bit not null default 0,
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key ([ItemsID]) references LookupItems([ItemsID]) ON DELETE CASCADE,
);

Create table Categories(ID int primary key identity(1,1),[CategoryItem] int, CategoryType int,
Foreign Key ([CategoryItem]) references LookupItems([ItemsID]) ON DELETE CASCADE,
Foreign Key (CategoryType) references LookupTypes([TypeID]) ON DELETE CASCADE,
);
------------------------------------------------
--NOW ONE_MANY RELATIONSHIPS
ALTER TABLE Courses
ADD InstructorsID INT NOT NULL,
CONSTRAINT FK_Instructors_Courses 
FOREIGN KEY (InstructorsID) 
REFERENCES Instructors(ID);

ALTER TABLE Lessons
ADD CONSTRAINT FK_Instructors_Lessons
FOREIGN KEY (InstructorsID) 
REFERENCES Instructors(ID);

ALTER TABLE Lessons
ADD CourseID INT NOT NULL,
CONSTRAINT FK_Course_Lessons
FOREIGN KEY (CourseID) 
REFERENCES Courses(ID);
----------------------------------------------
--M-M TRELATIONSHIPS (WITHOUT WEAK ENTITIES)
-- check constrains will be add by UI
create table LearneresLessons(
ID int primary key identity (1,1),
LearnersID int not null,
LessonsID int not null,
foreign key (LearnersID) references Learners(ID) ,
foreign key (LessonsID) references Lessons(ID)
);

create table LearneresCourses(
ID int primary key identity (1,1),
LearnersID int not null,
CoursesID int not null,
EnrollmentDate DateTime DEFAULT GETDATE(),
foreign key (LearnersID) references Learners(ID) ,
foreign key (CoursesID) references Courses(ID)
);

--------------------------------
-- add weak entities m-m relations.
create table InstructorsRate(
ID int primary Key identity(1,1),
InstructorID int not null,
[ItemsID] int,
[RateAmount] int,
[Message] varchar(255),
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (InstructorID) references Instructors(ID),
FOREIGN KEY ([ItemsID]) REFERENCES LookupItems([ItemsID]) ON DELETE CASCADE,
);

create table CourcesRate(
ID int primary Key identity(1,1),
CoursesID int not null,
[ItemsID] int,
[RateAmount] int,
[Message] varchar(255),
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (CoursesID) references Courses(ID),
FOREIGN KEY ([ItemsID]) REFERENCES LookupItems([ItemsID]) ON DELETE CASCADE,
);

create table LearnersRate(
ID int primary Key identity(1,1),
LearnersID int not null,
[ItemsID] int,
[RateAmount] int,
[Message] varchar(255),
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (LearnersID) references Learners(ID),
FOREIGN KEY ([ItemsID]) REFERENCES LookupItems([ItemsID]) ON DELETE CASCADE,
);

create table SearchHistory(
ID int primary Key identity(1,1),
CoursesID int not null,
LearnersID int not null,
[TitleSearch] varchar(max),
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (CoursesID) references Courses(ID),
Foreign Key (LearnersID) references Learners(ID),
);

create table LearnerLessonsProgress(
ID int primary Key identity(1,1),
LearnersID int not null,
LessonsID int not null,
[Tracker] int Check (Tracker between 0 and 100),
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (LearnersID) references Learners(ID),
Foreign Key (LessonsID) references Lessons(ID),
);

create table LearnerCoursesProgress(
ID int primary Key identity(1,1),
LearnersID  int not null,
CoursesID int not null,
[Tracker] int Check (Tracker between 0 and 100) ,
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (LearnersID) references Learners(ID),
Foreign Key (CoursesID) references Courses(ID) ,
);

create table CourseFavorites(
ID int primary Key identity(1,1),
CoursesID int not null,
LearnersID int not null,
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (CoursesID) references Courses(ID),
Foreign Key (LearnersID) references Learners(ID),
);

create table Filteration(
ID int primary Key identity(1,1),
LearnersID int not null,
[Title] varchar(255),
[Discount] varchar(5) default '0%' check(discount like '_%' ) not null,
[Total Duration] varchar(10) not null,
[ItemsID] int,
[Created By] varchar(255) Default 'System',
[Updated By] varchar(255) Default '__',
[Creation Date] DateTime Default GetDate(),
[Updated Date] DateTime Default GetDate(),
[Is Active] bit Default 1,
Foreign Key (LearnersID) references Learners(ID) ON DELETE CASCADE,
FOREIGN KEY ([ItemsID]) REFERENCES LookupItems([ItemsID]) ON DELETE CASCADE,
);

CREATE TABLE [CoursesPrice] 
(
ID INT PRIMARY KEY IDENTITY(1,1),
    CourseID INT NOT NULL,
    ItemsID INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL , -- Adding a price column
    CreatedBy VARCHAR(255) DEFAULT 'System',
    UpdatedBy VARCHAR(255) DEFAULT '__',
    CreationDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME DEFAULT GETDATE(),
    IsActive BIT DEFAULT 1,
    FOREIGN KEY (CourseID) REFERENCES Courses(ID) ON DELETE CASCADE,
    FOREIGN KEY (ItemsID) REFERENCES LookupItems(ItemsID)
)
