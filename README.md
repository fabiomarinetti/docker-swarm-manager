[![Build Status](https://travis-ci.com/fabiomarinetti/fmarinetti.swarm-manager.svg?branch=master)](https://travis-ci.com/fabiomarinetti/fmarinetti.swarm-manager)

fmarinetti.swarm-manager
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

 - fmarinetti.docker-secured

Example Playbook
----------------

Create a swarm manager
```
   - hosts: manager
     roles: 
       - fmarinetti.swarm-manager
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
