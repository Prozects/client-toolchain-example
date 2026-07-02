# 1. Use the official Node 22 lightweight image
FROM node:22.12.0-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Install the specific version of npm you want
RUN npm install -g npm@11.18.0 && npm cache clean --force

# 4. Copy the package files and install dependencies
COPY package*.json ./

# 5. Tell npm not to store install caches inside this layer
RUN npm install --no-audit --no-fund && npm cache clean --force

# 6. Copy the rest of your application files into the container
COPY . .

# 7. Expose port 3000 to allow outside access
EXPOSE 3000

# 8. Run the exact same start command you used on the VM
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3000"]

