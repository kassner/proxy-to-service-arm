FROM arm32v7/busybox

RUN opkg-install socat
ADD start.sh start.sh

# Usage: docker run -p <host-port>:<port> <this-container> <tcp|udp> <port> <service-name> [timeout]
ENTRYPOINT ["/start.sh"]
