Jitsi inside Docker
===================

Run Jitsi inside Docker and use Docker environment variables to configure it so
it's easy to use from Docker Compose.  Here is a sample docker compose file:

    videobridge:
      image: mdaum/jitsi
      environment:
        JITSI_SECRET: "not-really-secret"
        JITSI_DOMAIN: "example.com"
        JITSI_HOST: "172.17.0.1"
        JITSI_APIS: "rest,xmpp"
