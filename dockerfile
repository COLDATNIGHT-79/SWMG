# Use a Node.js 14 image, change this to the version you need
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the application
RUN npm run build

# Expose the port that your app runs on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]