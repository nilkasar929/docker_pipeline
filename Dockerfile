# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /docker

# Copy the package.json and package-lock.json files
 COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .


# Build the TypeScript code
RUN npm run build


#Set the working directory dist folder for complied typescript code
WORKDIR /docker/dist
# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
