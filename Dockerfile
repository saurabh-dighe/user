FROM        node:18
RUN         useradd roboshop
WORKDIR     /home/roboshop
COPY        node_modules/ node_modules/
COPY        server.js .
COPY        package.json .   
COPY        global-bundle.pem /home/roboshopg/lobal-bundle.pem
ENTRYPOINT  ["node", "server.js"] /home/roboshop/  
