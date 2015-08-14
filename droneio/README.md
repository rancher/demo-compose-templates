## Drone CI environment with Distributed workers.

### What is this?

------

This is the compose file that was used in the 10/13 Rancher Meetup to deploy a Drone CI environment. It deploys a Drone Server, MySQL database and workers that expose a hosts Docker daemon over Ranchers private network.

This makes it easy to distribute builds across multipe build slaves using Drone.


### Usage

* Pre-requisites.
  * Rancher environment with at least one node tagged
    * drone.role=leader
    * drone.role=follower
  * GitHub OAuth application for Drone.
  
* Settings
  * Edit docker-compose.yml. Add DRONE_GITHUB_CLIENT and DRONE_GITHUB_SECRET values.
  
* Bring up with rancher-compose CLI.
  * `rancher-compose -p drone up`

