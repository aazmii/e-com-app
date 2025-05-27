# Cross-Platform POS Software

A robust, real-world-tested Point of Sale (POS) system built for both **Android** and **desktop** platforms. Designed to work seamlessly on actual POS machines of various sizes, this software delivers reliable offline-first functionality, real-time synchronization, and hardware-level integrations for retail environments.

📷 Screenshots
![Frame 1](https://github.com/user-attachments/assets/82c67577-dcfd-49ad-bd87-8512cc8d9087)

## Features
### 💳 Offline-First Sync Engine
- All transactions are **processed locally**, ensuring uninterrupted service even without internet.
- A built-in sync mechanism **replicates data to the server in real-time** when connectivity is available.

### 🧾 Seamless Invoice Printing
- Integrated with **built-in POS printers** for direct receipt and invoice printing.
- Utilizes **platform-specific APIs** for accurate and fast print execution.

### 👥 Role-Based Access Control
- Smart interface adapts to user roles:
  - **Cashiers** can process sales quickly.
  - **Admins** can instantly add or modify **products** and **categories** on-site.

### 🔐 Offline License Management
- Includes an **offline-capable license expiration tracker**.
- Ensures software remains compliant and secure without requiring constant internet.



## Tech Stack

- **Framework**: Flutter
- **Local Storage**: Sqflite
- **Printing**: Platform-specific APIs for native POS integration
- **Real-Time Sync**: Custom offline-first sync logic
- **Platform Support**: Android, Windows, Linux (customizable)
- **Responsive**: Adapting to different screen sizes, input modes (touch vs keyboard), and hardware-level constraints
 
