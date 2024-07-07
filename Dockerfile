# This is the build phase of the docker file.

# Download the node image with alpine
FROM node:16-alpine AS builder

# Set the working directory inside of the alpine image
# as /app
WORKDIR '/app'

# Copy over the package.json file from out local directory
# into the current working directory (app) inside of our
# container
COPY package.json .

# Run this command inside of the working directory inside
# the container and this will install all of the dependencies
# that is listed inside of package.json
RUN npm install

# Go ahead and copy everything else over after the dependencies
# have been copied over to the new image.
COPY . .

# Compile a build file that will be used for the NGINX image.
RUN npm run build
EXPOSE 80
# This is the run phase of the docker file
FROM nginx

# Copy over a specific file from the build phase into the current
# NGINX file system from the "builder" step 
COPY --from=builder /app/build /usr/share/nginx/html

# The default command for NGINX is to start up 
# NGINX so that means that we do not need to 
# run any command.
