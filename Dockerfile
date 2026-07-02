# 1. Use the official Node.js 20 lightweight image
FROM node:22.12.0-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the package files and install dependencies
ADD package.json ./
RUN npm install

# 4. Copy the rest of your application code
COPY . .

# 5. Expose port 3000 to allow outside access
EXPOSE 3000

# 6. Run the exact same start command you used on the VM
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3000"]

