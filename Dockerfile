# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the project
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
