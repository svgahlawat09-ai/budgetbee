BudgetBee - AI Budgeting Assistant
BudgetBee is a conversational AI budgeting assistant that prevents overspending by understanding user
emotions, cognitive load, social triggers, and spending patterns.
Features
Cognitive Load Alerts - Detects decision fatigue
Social Trigger Detection - Identifies FOMO from social media
Emotional Spending Detection - Recognizes emotional purchases
Social Comparison Interception - Addresses peer pressure
Honey Pot - Savings jar for skipped purchases
ChatBee - AI conversational assistant with text support
Quick Start
Prerequisites
Node.js (v16 or higher)
npm or yarn
Expo CLI
iOS Simulator or Android Emulator (optional)
Installation
1. Clone or create the repository:

2. Initialize Expo project:

3. Install dependencies:
bash
mkdir budgetbee
cd budgetbee

bash
npx create-expo-app@latest .. --template blank

bash

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 2 of 9
4. Create project structure:

5. Copy all the code files:
Copy App.js to root
Copy screen files to src/screens/
Copy AppContext.js to src/context/
Copy aiUtils.js to src/utils/
Project Structure

Design System
npm install @react-navigation/native @react-navigation/bottom-tabs @react-navigation/stack
npm install react-native-screens react-native-safe-area-context
npm install react-native-svg expo-linear-gradient
npm install firebase lottie-react-native
npx expo install react-native-screens react-native-safe-area-context

bash
mkdir -p src/{screens,components,utils,context,assets,config}
mkdir -p src/components/{common,chat,budget}
mkdir -p src/assets/{images,animations}

budgetbee/
├── App.js # Main entry point
├── src/
│ ├── screens/
│ │ ├── OnboardingScreen.js # Budget setup
│ │ ├── HomeScreen.js # Dashboard
│ │ ├── ChatBeeScreen.js # AI chat interface
│ │ ├── PurchaseDecisionScreen.js # Decision modal
│ │ ├── HoneyPotScreen.js # Savings jar
│ │ └── SettingsScreen.js # Settings
│ ├── context/
│ │ └── AppContext.js # State management
│ ├── utils/
│ │ └── aiUtils.js # AI detection logic
│ ├── components/ # Reusable components
│ ├── assets/ # Images and animations
│ └── config/ # Configuration files
├── package.json
└── README.md

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 3 of 9
Colors
Primary: #FDB515 (Golden Honey)
Secondary: #FFD700 (Bright Gold)
Background: #FFF8DC (Cream)
Text: #3B3B3B (Charcoal)
Success: #7CB342 (Honey Green)
Alert: #FF6F61 (Soft Coral)
Typography
Headings: Bold, 20-32px
Body: Regular, 16px
Captions: Regular, 14px
Components
Glassmorphic Cards: Semi-transparent with backdrop blur
Rounded Corners: 12-16px for cards, 24px for buttons
Bee Accents: Friendly, non-gendered bee avatar
AI Detection Logic
Triggers Detected:
1. Cognitive Load
Keywords: tired, exhausted, sleepy
Time: Late night (after 10 PM) or very early (before 6 AM)
2. Social Triggers
Keywords: Instagram, TikTok, influencer, saw online, trending
3. Emotional Spending
Keywords: stressed, sad, deserve, treat myself, excited
4. Social Comparison
Keywords: everyone has, all my friends, only one without, keeping up
AI Response Flow:

Running the App
User Input → Keyword Detection → Trigger Analysis → Budget Check → Response Generation →
Recommendation

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 4 of 9
Running the App
Start Development Server:

Run on iOS Simulator:

Run on Android Emulator:

Run on Web:

Configuration
Firebase Setup (Optional - for production)
1. Create a Firebase project at firebase.google.com
2. Create src/config/firebase.js :
bash
npx expo start

bash
npx expo start --ios

bash
npx expo start --android

bash
npx expo start --web

javascript

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 5 of 9
Testing User Flows
Flow 1: Cognitive Load Detection
1. Open app at night (after 10 PM)
2. Go to ChatBee
3. Type: "I want to buy this jacket I'm so tired"
4. ChatBee detects cognitive load and recommends sleeping on it
Flow 2: Social Trigger Detection
1. Open ChatBee
2. Type: "I saw this on Instagram everyone's getting it"
3. ChatBee detects social trigger and FOMO language
4. Provides reality check about influencer marketing
Flow 3: Emotional Spending
1. Open ChatBee
2. Type: "I'm so stressed I deserve to treat myself with new shoes"
3. ChatBee detects emotional trigger
4. Suggests free alternatives
Flow 4: Multi-Trigger
import { initializeApp } from 'firebase/app';;
import { getFirestore } from 'firebase/firestore';;
import { getAuth } from 'firebase/auth';;
const firebaseConfig == {
apiKey:: "YOUR_API_KEY",,
authDomain:: "YOUR_AUTH_DOMAIN",,
projectId:: "YOUR_PROJECT_ID",,
storageBucket:: "YOUR_STORAGE_BUCKET",,
messagingSenderId:: "YOUR_MESSAGING_SENDER_ID",,
appId:: "YOUR_APP_ID"
};;
const app == initializeApp(firebaseConfig);;
export const db == getFirestore(app);;
export const auth == getAuth(app);;

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 6 of 9
1. Open ChatBee
2. Type: "Saw this influencer with the cutest bag and I'm stressed everyone has designer stuff"
3. ChatBee detects multiple triggers (social + emotional + comparison)
4. Comprehensive intervention with multiple points
State Management
The app uses React Context API for global state management:

Key User Actions
Setup Budget (Onboarding)
javascript

{
user:: {
name:: string,,
monthlyIncome:: number,,
essentialExpenses:: number,,
savingsGoal:: number,,
budget:: number,,
budgetRemaining:: number
},,
honeyPot:: {
total:: number,,
skippedPurchases:: [{
id:: number,,
item:: string,,
amount:: number,,
reason:: string,,
date:: Date
}]
},,
chatHistory:: [{
text:: string,,
isUser:: boolean,,
timestamp:: Date
}]
}

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 7 of 9
Add Chat Message

Update Budget (Purchase)

Add to Honey Pot (Skip Purchase)

Reset Budget (New Month)

Known Limitations (Prototype)
Voice mode is UI-only (no actual voice recognition)
AI logic uses keyword matching (not real NLP)
No persistent storage (data resets on app restart)
No user authentication
No actual bank account integration
Future Enhancements
Real voice integration (Agora SDK or Deepgram)
OpenAI GPT integration for advanced NLP
Firebase backend for data persistence
Push notifications for spending alerts
Bank account linking (Plaid API)
javascript
setupBudget(income,, expenses,, savings)

javascript
addChatMessage(message,, isUser)

javascript
updateBudget(amount)

javascript
addToHoneyPot(item,, amount,, reason)

javascript
resetBudget()

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 8 of 9
Social features (shared savings goals)
Analytics dashboard
Development Notes
Adding New Screens
1. Create screen file in src/screens/
2. Add navigation in App.js
3. Update navigation types if needed
Modifying AI Logic
1. Edit src/utils/aiUtils.js
2. Add new keywords to trigger arrays
3. Create new response templates
4. Update emoji mappings
Styling Changes
1. All colors defined in individual StyleSheet objects
2. Use glassmorphism pattern: backgroundColor: 'rgba(255, 255, 255, 0.4)'
3. Maintain honey-gold theme ( #FDB515 )
Troubleshooting
"Unable to resolve module" errors

Metro bundler issues

iOS build errors
bash
npm install
npx expo start -c

bash
rm -rf node_modules
npm install
npx expo start -c

bash

README.md - Complete Setup Guide 14/11/25, 10:01 PM

https://claude.ai/chat/097e1fc6-75ed-4ca0-b635-0c389b563011 Page 9 of 9
License
This project is created for educational/demonstration purposes.
Team
Built for hackathon/prototype demonstration.
Acknowledgments
Expo for rapid development framework
React Navigation for routing
Firebase for backend infrastructure (production)

BudgetBee: Smart savings, one conversation at a time.
