# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Run npm init -y to generate package.json inside the container
RUN npm init -y

# Copy the rest of the application files
COPY . .

# Install dependencies (if package.json is modified)
RUN npm install || true

# Expose port
EXPOSE 3000

# Start application
CMD ["node", "server.js"]
