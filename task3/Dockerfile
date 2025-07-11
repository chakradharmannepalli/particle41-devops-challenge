# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application source
COPY . .

# Expose port
EXPOSE 3000

# Set environment variables
ENV APP_VERSION=1.0.0
ENV NODE_ENV=production

# Start application
CMD ["npm", "start"]
