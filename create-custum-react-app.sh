#!/bin/bash

# Welcome message and information
echo "By default, the project folder will be created in the current directory."

# Getting the name of the app from the user
read -p "Give me the name of the project: " AppName

# Creating a directory with the name of the app and navigating into it
mkdir -p "$AppName"
cd "$AppName"

# Initializing the npm package
npm init -y

# Installing React and related packages
npm install react react-dom

# Installing webpack and related packages
npm install --save-dev webpack webpack-cli webpack-dev-server

# Installing Babel and related packages
npm install --save-dev @babel/core babel-loader @babel/preset-react @babel/preset-env

# Installing HTML Webpack Plugin
npm install --save-dev html-webpack-plugin

# Copying the webpack config file from the parent React directory to the project directory
cp -r ../React/webpack.config.js ./

# Copying the src folder from the parent React directory to the project directory
cp -r ../React/src ./

# Displaying instructions for adding scripts to package.json
echo 'Add the following scripts to your package.json:'
echo '"start": "webpack-dev-server --mode development --open --hot",'
echo '"build": "webpack --mode production"'

# Installing Redux Toolkit and React-Redux packages
npm install @reduxjs/toolkit react-redux

# Completion message
echo "I'm done. Happy coding! :-)"
