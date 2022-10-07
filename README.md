# Testing From The Start

This is an example of Test driven development at compile time.   

This project was created to build and run in QtCreator using Qt SDK 6.x.

The project is setup to run on Windows, macOS, and Linux.

This project builds 3 sub-projects; one staic library (AddLibrary), one dynamic library (SubLibrary), and a Main Project.   
As each sub-project is built a test is also built and executed.  If the test for the sub-project passes the next project
in the tree is built.  If the sub-project test fails compiling stops.

This is the project layout:

SUBDIRS =
    ./AddLibrary/AddLibrary.pro
        SUBDIRS = 
            ./AddLibrary/AddLibrary.pro
                TARGET = AddLibrary
            ./AddLibraryTest/AddLibraryTest.pro
                TARGET = AddLibraryTest
        
    ./SubLibrary/SubLibrary.pro
        SUBDIRS = 
            ./SubLibrary/Sublibrary.pro
                TARGET = SubLibrary
            ./SubLibraryTest/SubLibraryTest.pro
                TARGET = SubLibraryTest

    ./MainProject/MainProject.pro
        TARGET = MainProject
        
        
