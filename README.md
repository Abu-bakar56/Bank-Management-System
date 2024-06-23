This project of Bank Management System is in java with Gui (Swing and Awt)  and DataBase .

Project Overview: 
 
•	The Bank Management System is designed to streamline banking operations. 
•	It allows users to create and manage bank accounts, perform transactions, and maintain account details. 
•	The system interacts with a MySQL database for data storage and retrieval. 
 
Features and Functionalities:
 
Account Creation: 
 
•	Users can open new bank accounts by providing personal details such as name, father’s name, date of birth, nationality, address, phone number, email, marital status, and qualification. 
•	The system generates a unique account number (accNum) for each account. 
 
 Account Types: 
 
•	Users can specify the account type (e.g., current, savings) during account creation. 
 
 Initial Deposit: 
 
•	Users must deposit an initial amount (minimum 5000) when opening an account. 
•	The account balance (new_balance) is set based on the deposit. 
 
 Loan Management (Partial Implementation): 
 
•	The loan attribute is set to 0 for all accounts initially, but there is no explicit loan request or approval process in this snippet. 
 
User Interface: 
 
•	The provided code snippet include a graphical user interface (GUI) . 
•	Users interact with the system by entering details and making selections via the console. 
 
Additional Considerations: 
 
•	The snippet lacks complete error handling, security measures, and additional features that a real-world bank management system would require. 
•	In a comprehensive system, you’d need to add features like transaction history, fund transfers, PIN change, and more. 
Feature List of Bank Management System: 
 
Database Connection and Initialization: 
 
•	The Bank management system class establishes a connection to a MySQL database using JDBC (Java Database Connectivity). 
•	It initializes the database connection in the constructor. 
 
Account Creation: 
 
•	The open Account () method allows users to create a new bank account. 
•	It prompts the user to input account details such as name, father’s name, account type (e.g., current, savings), date of birth, nationality, address, phone number, email, marital status, and qualification. 
•	It generates an account number (acc Num) and sets other attributes like balance, PIN, and loan amount to default values. 
•	The account details are then inserted into the accounts table in the database. 
 
 PIN Validation: 
 
•	The code checks whether the entered PIN is already present in the database. 
•	If the PIN is already in use, it prompts the user to enter another PIN. 
 
Database Insertion: 
 
•	The account details are inserted into the accounts table using a prepared statement. 
•	The SQL query includes placeholders for each attribute, which are set using the setString, setInt, and setFloat methods. 
 
Error Handling: 
 
•	The code catches exceptions related to database connectivity (e.g., ClassNotFoundException, SQLException) and throws a RuntimeException if an error occurs during initialization. 
 
 
 
 




