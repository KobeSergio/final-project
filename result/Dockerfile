# Prefer minimal base images  - use official node runtime base image
FROM node:14-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the source code
COPY . .

# Expose on specific port 
EXPOSE 5001

# Define environment variable for Node.js to run in production mode
ENV NODE_ENV production

# Instantiate/run the app
CMD ["npm", "run", "app"]
