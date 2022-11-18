FROM node:lts-alpine
RUN mkdir "/profile"
RUN node "./make.mjs"
EXPOSE process.env.PORT
CMD [ "node", "./stealth/stealth.mjs", "serve", "--profile=/profile" ]
