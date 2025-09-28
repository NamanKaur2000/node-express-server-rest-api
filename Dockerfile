# Using the official Node.js image
FROM node:18

# Setting the working directory inside the container
WORKDIR /app

# Copying package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copying the rest of the application
COPY . .

# Exposeing the port the app runs on
EXPOSE 3000

# Starting the app
CMD ["npm", "start"]
