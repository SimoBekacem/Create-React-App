!#/bin/bash 

echo "By default the project folder will created courant diroctory."
# Getting he name of the app from the user.
read -p "Give me the name of the project: " AppName 
# Creating a directory with the name of the App.
mkdir $AppName 
# Change the working dir to AppName dir
cd $AppName 
# Give to the user the possibility to chose between the React or Vanilla.js app.
select choice in "React" "Vanilla.js" 
do
    case $REPLY in 
    # If the user want React app then we will follow the this blog https://wittcode.com/blogs/create-a-react-app-without-create-react-app . 
        1) 
            # Initiating the npm package
            npm init -y
            # Installing the react packges 
            npm install react
            npm install react-dom
            npm install webpack --save-dev
            npm install webpack-cli --save-dev
            npm install webpack-dev-server --save-dev
            npm install @babel/core --save-dev
            npm install babel-loader --save-dev
            npm install @babel/preset-react --save-dev
            npm install @babel/preset-env --save-dev
            npm install html-webpack-plugin --save-dev
            # Now we will copy the webpack config file from here to the AppName dir
            cp -r ../React/webpack.config.js ./
            # Now we will copy the src folder to the AppName folder
            cp -r ../React/src ./
            # ask the user to add the scripts start and build.
	    echo " Add this scripts \"start\":\"webpack-dev-server --mode development --open --hot\" to package.json"
	    echo " Add this scripts \"build\":\"webpack --mode production\" to package.json "
            echo "I'am Done, happy codding :-)"
            ;;
        2)  
            echo "Creating Vanilla.js app..."
            read -p "Tell me the name of you app: " AppName 
            mkdir $AppName
            cd $AppName
            npm init -y
            cp ./Vanilla.js/index.html $AppName/
            ;;
    esac
done

