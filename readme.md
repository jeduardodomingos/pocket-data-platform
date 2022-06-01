
# Pocket Data Platform

The Pocket Data Platform project is a project developed with the goal to provide small companies with the possibility to create a quick and resilient platform for their business. This project doesn't mirror a production environment but simulates which components this structure should have, the main idea is not to provide a done environment, but to show how the data culture could be implemented in your organization and which are the basic structures to make it possible.

## Setup Evironment

To start using these docker stacks you must create a new docker network called "platform_network", below you can see the command to do it.

    docker network create -d bridge platform_network
