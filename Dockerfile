# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /home/ubuntu/nodejs

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Command to run the application
CMD ["npm", "start"]

