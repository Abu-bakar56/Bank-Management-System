---
# Bank Management System

This **Bank Management System** is a Java-based application with a graphical user interface (GUI) built using **Swing** and **AWT**, and it utilizes a **MySQL database** for data storage and retrieval.

## Project Overview

The system streamlines banking operations, allowing users to create and manage bank accounts, perform transactions, and maintain account details.

## Features

### 1. Account Creation
- Users can create new bank accounts by providing personal details.
- A unique account number is generated for each account.
- An initial deposit (minimum PKR 5000) is required.

### 2. Account Types
- Users can choose between account types (e.g., Current, Savings).

### 3. Loan Management (Partial)
- Initial loan value is set to 0 for all accounts.

### 4. PIN Validation
- The system checks for PIN uniqueness during account creation.

## Technical Details

- **Database Connection:** Uses JDBC to connect to MySQL.
- **Account Storage:** User details are stored in the database with default values for balance, PIN, and loan amount.
- **Error Handling:** Basic error handling for database connectivity issues.

##  Project Overview with Screenshots

![Picture1](https://github.com/user-attachments/assets/c3cbc1ea-49e5-4146-aaf4-92b7a8b275dd)

When the user first runs the program, they enter the Main menu:

1. As Manager
2. As User
3. Exit

### As Manager

![Picture2](https://github.com/user-attachments/assets/3652398f-8ac1-4f2e-99f5-3c8627007abf)


To use the Bank as a manager, enter the manager's username and password. The default username is **university branch**, and the password is **admin**. The manager can also exit from here to switch to user mode.

#### After Login
![Picture3](https://github.com/user-attachments/assets/37a2efc8-c7d9-456b-ae65-caf0d473d95b)



After logging in, the following options are available for the manager:

1. Check the total money in the bank and the bank's loan money.
2. View all accounts open in the bank.
3. Delete accounts.
4. View accounts that have taken loans.
5. Update account applicant data.
6. Exit.

### To Show Bank Money

![Picture4](https://github.com/user-attachments/assets/532996cc-9d89-41e0-82ab-a51f7982d6fd)


### To Show All Accounts

![Picture5](https://github.com/user-attachments/assets/9f456112-16bb-416d-91e8-d266e9fcaa13)


### To Delete Accounts

![Picture6](https://github.com/user-attachments/assets/d748c814-1f77-4ef9-82de-2e5319fdf060)


### To Show Accounts That Have Taken Loans
![Picture7](https://github.com/user-attachments/assets/a256965e-d547-4a7b-bdcd-ee2342ca9aae)

### To Update Data
![Picture8](https://github.com/user-attachments/assets/c7ce1d6f-ad82-4d1e-916d-b0554faadaa9)

### As User

![Picture9](https://github.com/user-attachments/assets/b635dbf6-292d-4aed-b273-e5082696a502)


The following options are available for the user:

1. Open an account.
2. Deposit money via account number.
3. Credit money via account number.
4. Apply for a loan.
5. Repay a loan.
6. View bank statement.
7. Use the ATM.
8. Pay Zakat.
9. Exit.

### To Open Account

![Picture10](https://github.com/user-attachments/assets/2a3f5dad-c806-48c0-8b8e-665623b0e980)


### To Deposit Money

![Picture11](https://github.com/user-attachments/assets/9068ff9f-429c-43ef-a66e-c90ff124ee25)


### To Credit Money

![Picture12](https://github.com/user-attachments/assets/642f2156-47a2-4bce-81f3-83e9ff6dbeae)


### To Apply for a Loan

![Picture13](https://github.com/user-attachments/assets/9618958c-4e8a-4d8f-aeff-515ee9546e6c)


### To Repay Loan
![Picture14](https://github.com/user-attachments/assets/d12f1bc0-142f-46e4-95b6-0135ecbab68b)

### To Pay Zakat
![Picture15](https://github.com/user-attachments/assets/1a4660bf-938b-4228-8d18-5dc8defd96a5)

### To View Bank Statement

![Picture16](https://github.com/user-attachments/assets/4285dc0a-5813-4f7f-817d-40ca309dc681)


### To Use ATM

![Picture17](https://github.com/user-attachments/assets/6aa1c8be-f5f6-4f3a-9c6d-dccd7537c345)


Users can deposit, withdraw, change their PIN, and check their balance via ATM using their PIN number.

---
