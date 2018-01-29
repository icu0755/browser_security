'use strict';

const Hapi = require('hapi');
const fs = require('fs');

// Create a server with a host and port
const server = Hapi.server();
const tls = {
    key: fs.readFileSync('/code/selfsigned.key'),
    cert: fs.readFileSync('/code/selfsigned.crt')
};
server.connection({host: '0.0.0.0', port: 80});
server.connection({host: '0.0.0.0', port: 443, tls});

// Add the route
server.route({
    method: 'GET',
    path: '/hello',
    handler: function (request, h) {
        return 'hello world';
    }
});

// Start the server
async function start() {

    try {
        await server.start();
    }
    catch (err) {
        console.log(err);
        process.exit(1);
    }

    console.log('Server running at:', server.info.uri);
};

start();