<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1, h2, h3 {
            color: #333;
        }
        img {
            max-width: 100%;
            height: auto;
            margin: 10px 0;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        code {
            background-color: #f4f4f4;
            border: 1px solid #ddd;
            padding: 5px;
            border-radius: 5px;
            font-family: 'Courier New', Courier, monospace;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bank Management System</h1>
        <p>This project is a Java-based Bank Management System with a graphical user interface (GUI) built using Swing and AWT. The system interacts with a MySQL database to manage bank accounts, perform transactions, and maintain account details.</p>
        
        <h2>Project Overview</h2>
        <ul>
            <li>The Bank Management System is designed to streamline banking operations.</li>
            <li>It allows users to create and manage bank accounts, perform transactions, and maintain account details.</li>
            <li>The system interacts with a MySQL database for data storage and retrieval.</li>
        </ul>
        <img src="images/project-overview.png" alt="Project Overview Screenshot">
        
        <h2>Features and Functionalities</h2>
        <h3>Account Creation</h3>
        <ul>
            <li>Users can open new bank accounts by providing personal details such as name, father’s name, date of birth, nationality, address, phone number, email, marital status, and qualification.</li>
            <li>The system generates a unique account number (accNum) for each account.</li>
        </ul>
        <img src="images/account-creation.png" alt="Account Creation Screenshot">
        
        <h3>Account Types</h3>
        <ul>
            <li>Users can specify the account type (e.g., current, savings) during account creation.</li>
        </ul>
        <img src="images/account-types.png" alt="Account Types Screenshot">
        
        <h3>Initial Deposit</h3>
        <ul>
            <li>Users must deposit an initial amount (minimum 5000) when opening an account.</li>
            <li>The account balance (new_balance) is set based on the deposit.</li>
        </ul>
        <img src="images/initial-deposit.png" alt="Initial Deposit Screenshot">
        
        <h3>Loan Management (Partial Implementation)</h3>
        <ul>
            <li>The loan attribute is set to 0 for all accounts initially, but there is no explicit loan request or approval process in this snippet.</li>
        </ul>
        <img src="images/loan-management.png" alt="Loan Management Screenshot">
        
        <h2>User Interface</h2>
        <ul>
            <li>The system provides a graphical user interface (GUI) where users can interact with the system by entering details and making selections.</li>
        </ul>
        <img src="images/gui.png" alt="User Interface Screenshot">
        
        <h2>Database Connection and Initialization</h2>
        <ul>
            <li>The Bank management system class establishes a connection to a MySQL database using JDBC (Java Database Connectivity).</li>
            <li>It initializes the database connection in the constructor.</li>
        </ul>
        <img src="images/database-connection.png" alt="Database Connection Screenshot">
        
        <h2>Account Creation Process</h2>
        <ul>
            <li>The openAccount() method allows users to create a new bank account.</li>
            <li>It prompts the user to input account details and generates an account number (accNum).</li>
            <li>The account details are then inserted into the accounts table in the database.</li>
        </ul>
        <img src="images/account-creation-process.png" alt="Account Creation Process Screenshot">
        
        <h2>PIN Validation</h2>
        <ul>
            <li>The system checks whether the entered PIN is already present in the database.</li>
            <li>If the PIN is already in use, it prompts the user to enter another PIN.</li>
        </ul>
        <img src="images/pin-validation.png" alt="PIN Validation Screenshot">
        
        <h2>Error Handling</h2>
        <ul>
            <li>The system includes basic error handling for database connectivity issues and other potential errors.</li>
        </ul>
        <img src="images/error-handling.png" alt="Error Handling Screenshot">
        
        <p>Note: The project is a basic implementation and can be extended with additional features such as transaction history, fund transfers, and security measures.</p>
    </div>
</body>
</html>
