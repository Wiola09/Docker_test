# Use a Node.js base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Install git
RUN apk add --no-cache git

# Clone the TypingMind repository
RUN git clone https://github.com/TypingMind/typingmind.git .

# Install dependencies
RUN npm install

# Expose the default port (3000)
EXPOSE 3000

# Start the server
CMD ["npm", "run", "start"]
