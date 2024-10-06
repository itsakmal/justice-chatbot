# ADHIKAAR Chatbot for the official site of Department of Justice of India.
We developed an interactive chatbot capable of answering queries related to the services of the Department of Justice (DoJ). The chatbot provides information on a wide range of topics, making access to judicial services more efficient and user-friendly.

## Features

### 1. Divisions of the DoJ
- Information about the various divisions within the department, their roles, and key functions.

### 2. Judicial Appointments
- Details on judges appointed to the Supreme Court, High Courts, District Courts, and Subordinate Courts, along with information on vacancies.

### 3. Case Pendency and Data
- Access real-time data on case pendency and disposal rates via the **National Judicial Data Grid (NJDG)**.

### 4. Fine Payment
- Guidance on how to pay fines for traffic violations and other legal penalties.

### 5. Live Court Streaming
- Information on the process and availability of live-streamed court proceedings.

### 6. eFiling and ePay
- Steps for electronic filing of cases and online payment of court fees.

### 7. Fast Track Courts
- Information on fast-track courts handling sensitive cases involving crimes like rape and POCSO.

### 8. eCourts Mobile App
- Details on how to download and use the **eCourts Services mobile application**.

### 9. Tele-Law Services
- Information on accessing tele-law services to seek legal advice remotely.

### 10. Case Status
- Up-to-date information on case statuses through integration with the DoJ’s case tracking system.

## Solution Design and Implementation

### Chatbot Development
- Built using **Rasa**, an open-source machine learning framework.
- The frontend was developed with **HTML**, **CSS**, and **JavaScript**, providing a user-friendly interface that can be integrated into the Department of Justice's official website.

### Backend Integration
- We used **Rust**, a systems programming language, for backend integration due to its high performance and security.
- Rust ensures efficient interaction with the DoJ's databases and services, handling large datasets while maintaining performance.

## Technical Details

### Rasa Pipeline
1. **DIETClassifier**: A transformer-based model that predicts intents and extracts entities from user queries.
2. **EntityClassifier**: Identifies domain-specific legal terms and entities, such as court names and case types.
3. **Fallback Policy**: A fallback mechanism triggers when the chatbot is unsure of a user query, prompting the user to rephrase or providing alternative responses.

### Data Sources
- Data from the **DoJ website** and **National Judicial Data Grid (NJDG)** for real-time updates.
- Integration with external services like **eChallan** for fine payments and **eFiling** portals.

## Backend (Rust)
- **Rust** was chosen for its safety and concurrency model, allowing the system to handle multiple requests simultaneously with high performance.

## Frontend (HTML, CSS, JavaScript)
- A responsive interface for both desktop and mobile devices.
- Users can type queries or choose from predefined options for faster navigation.

## Machine Learning and NLP
- **Pre-trained transformer models** were fine-tuned on legal datasets to improve the chatbot’s ability to understand complex legal queries.

## Key Features
- **Real-time Information Access**: Users can retrieve real-time case status and judicial appointment data.
- **Guided Interactions**: The chatbot helps users pay fines, file cases electronically, and use eCourt services.
- **Learning and Adaptation**: The chatbot improves over time, enhancing its responses as it interacts with more users.

## Future Enhancements

1. **Voice Interface**: Allow users to interact with the chatbot using speech recognition for better accessibility.
2. **Multilingual Support**: Support for regional languages to cater to non-English speaking users.
3. **Advanced AI Models**: Integrating **Llama3** for handling more complex legal queries.

## Conclusion
This chatbot improves the way users access judicial services by providing real-time information and interactive guidance. With future enhancements like voice commands and multilingual support, it will further increase accessibility and efficiency in the judicial system.
