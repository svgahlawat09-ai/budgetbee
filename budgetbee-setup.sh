#!/bin/bash

# BudgetBee - Complete Project Setup Script
# Run this script to create the entire project structure

echo "🐝 Creating BudgetBee Project..."

# Create main project directory
mkdir -p budgetbee
cd budgetbee

# Initialize React Native project with Expo
npx create-expo-app@latest . --template blank

# Create directory structure
mkdir -p src/{screens,components,utils,context,assets,config}
mkdir -p src/components/{common,chat,budget}
mkdir -p src/assets/{images,animations}

# Create all necessary files
echo "📁 Creating project files..."

# Package.json dependencies (will be added)
cat > package.json << 'EOF'
{
  "name": "budgetbee",
  "version": "1.0.0",
  "main": "node_modules/expo/AppEntry.js",
  "scripts": {
    "start": "expo start",
    "android": "expo start --android",
    "ios": "expo start --ios",
    "web": "expo start --web"
  },
  "dependencies": {
    "expo": "~50.0.0",
    "expo-status-bar": "~1.11.1",
    "react": "18.2.0",
    "react-native": "0.73.0",
    "react-native-svg": "14.1.0",
    "firebase": "^10.7.1",
    "lottie-react-native": "6.5.1",
    "@react-navigation/native": "^6.1.9",
    "@react-navigation/bottom-tabs": "^6.5.11",
    "@react-navigation/stack": "^6.3.20",
    "react-native-screens": "~3.29.0",
    "react-native-safe-area-context": "4.8.2",
    "expo-linear-gradient": "~12.7.0"
  },
  "devDependencies": {
    "@babel/core": "^7.20.0"
  },
  "private": true
}
EOF

echo "✅ package.json created"
echo "📦 Run 'npm install' to install dependencies"
echo ""
echo "🐝 BudgetBee project structure created!"
echo ""
echo "Next steps:"
echo "1. cd budgetbee"
echo "2. npm install"
echo "3. Copy the code files from the artifacts"
echo "4. npx expo start"
