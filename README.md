# CARES - Cancer Awareness and Risk Evaluation by Self-Assessment

CARES is a user-friendly platform designed to empower individuals by providing reliable and comprehensive information on various types of cancers. With its personalized features and advanced technology, CARES goes beyond merely offering information, aiming to foster proactive health management, informed decision-making, and ultimately a healthier lifestyle. 

<p align="center">
  <img src="https://i.ibb.co/QDL7SHH/main.png" alt="CARES LOGO"/>
</p>


### Key Sections Explanation:
- **Key Features**: Outlines the main features of CARES, such as the cancer information, risk assessment tool, AI chatbot, and resource access.
- **Getting Started**: Provides instructions on prerequisites, installation, and setting up the development environment.
- **Usage**: Explains how to interact with the app's core functionalities.
- **License and Contact**: Standard sections providing licensing information and contact details.

## Key Features

- **Comprehensive Cancer Information**: 
  CARES provides users with detailed insights into cancer symptoms, available treatments, and potential side effects, allowing individuals to better understand and manage their health.

- **Interactive Risk Assessment Tool**: 
  The app includes a personalized risk assessment tool that analyzes user-provided data, such as RBC, WBC, platelet, and hemoglobin counts. This tool estimates susceptibility to cancer by comparing previous and current health records against established threshold values.

- **Health Management and Recommendations**: 
  Based on the self-assessment results, CARES helps users understand which health components may be in lower count, helping in the dietary management to replenish deficient components and improve overall health.

- **AI-Powered Chatbot**: 
  Integrated with the Gemini API, CARES features an AI chatbot that provides real-time answers to user queries, enhancing user engagement and providing valuable support.

- **Educational Resources**: 
  CARES offers tiles that lead to detailed explanations of various cancer-related topics, ensuring users have access to reliable information at their fingertips.

- **Drawer Menu for Additional Resources**: 
  The app includes a convenient drawer menu that provides access to external resources, previous health records, free medication schemes, and alternative methods that can help in cancer treatment and prevention.


## Core code 

  **This is the comparision algortithm that decides the depletion of the counts based on threshold value.**
      
      class BloodCountComparator {
        final Map<String, dynamic>? _previousWeekData;
        final Map<String, dynamic>? _thisWeekData;
  
        BloodCountComparator(this._previousWeekData, this._thisWeekData);
  
        Map<String, String> compare({num threshold = 10}) {
          final results = <String, String>{};
          _previousWeekData!.forEach((key, prevValue) {
            final thisValue = _thisWeekData![key];
            final diffPercentage = ((thisValue! - prevValue) / prevValue) * 100;
            if (diffPercentage.abs() > threshold) {
              results[key] = 'abnormal';
            } else {
              results[key] = 'normal';
            }
          });
          return results;
        }
      }

## Screenshots

<p> 
    <img src="https://i.ibb.co/xX7r8nq/signup.jpg" width="200" height="500" hspace="10" >
    <img src="https://i.ibb.co/rHWz6Bn/homeM.jpg" width="200" height="500" hspace="10" >
    <img src="https://i.ibb.co/nmFgYgt/informatin-container.jpg" width="200" height="500" hspace="10" >
</p>


<p>
    <img src="https://i.ibb.co/VYsqHf3/websitre.jpg" width="200" height="500" hspace="10" >
    <img src="https://i.ibb.co/gdCMTVD/self-assessment.jpg" width="200" height="500" hspace="10" >
</p>

  This is the screen to submit the data

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install) (version 2.x or higher)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/) (for iOS development)
- A device emulator or a physical device for testing
- [Gemini API Key](https://www.gemini.com/) (for chatbot integration)

### Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/CARES.git

2. Navigate into the project directory:

    ```bash
    cd CARES

3. Install the Flutter dependencies:

    ```bash
    flutter pub get

4. Connect an Android or iOS device, or start an emulator.

5. Run the application:

    ```bash
    flutter run

## Usage

1. **Risk Assessment Tool**: 
   - Navigate to the risk assessment tool within the app.
   - Input your health data (e.g., RBC, WBC, platelets, hemoglobin counts).
   - The app will analyze the data and provide a personalized risk profile based on your input.
   - Review recommendations on dietary or lifestyle adjustments based on the assessment results.

2. **AI Chatbot**:
   - Ask questions related to cancer symptoms, treatments, and prevention.
   - The AI chatbot, powered by the Gemini API, will respond with relevant information and support.

3. **Access Educational Resources**:
   - Explore cancer-related topics via interactive tiles.
   - Use the drawer menu to access free medication schemes, alternative treatment methods, and external resources.

4. **View Previous Health Records**:
   - Access and compare your past health records to track changes and improvements in your health profile over time.


## License

    This project is licensed under the MIT License. See the LICENSE file for more details.
