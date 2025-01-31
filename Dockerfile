M node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install -D vue-loader
RUN npm install -g @vue/cli-service @vue/cli-plugin-babel @vue/cli-plugin-eslint @vue/cli-plugin-babel/preset


# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
 
EXPOSE 8080
CMD [ "npm", "run", "dev" ]

