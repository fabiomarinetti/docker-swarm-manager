[![Build Status](https://travis-ci.com/fabiomarinetti/docker-swarm-manager.svg?branch=master)](https://travis-ci.com/fabiomarinetti/docker-swarm-manager)

docker_swarm_manager
=========

This role configure a secure swarm master. The roles print out the swarm command  for joining slaves.

Requirements
------------

None

Role Variables
--------------

- manager_port: the port where the swarm-manager listens on (default: 2377)
- network_interface: name of network interface used (if not specified the init process will take the default one)

Dependencies
------------

 - fabiomarinetti.fmarinetti_docker_secured

Example Playbook
----------------

Create a swarm manager
```
   - hosts: manager
     roles: 
       - fabiomarinetti.docker_swarm_manager
```
