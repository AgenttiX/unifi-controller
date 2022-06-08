# UniFi controller with Docker Compose

## Setup
Connect the UniFi devices to untagged ports of the same management network as the controller, and configure the actual Wi-Fi networks as tagged VLANs for the UniFi APs. Then start the container with `sudo docker compose up`, and follow the instructions at `https://controller-ip-address:8443/`.

To be able to adopt UniFi devices to the controller, enable Settings -> System -> Other Configuration -> Override Inform Host and set the IP address to the address of your controller in the management network. Then restart the Docker container. After this you can adopt the devices as usual.
