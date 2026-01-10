# Use a minimal base image with a shell
FROM alpine:latest

# Add several labels
LABEL maintainer="Sc3p73R"
LABEL website="https://waiyan.dev"

# Install the network diagnostic tools	
RUN apk add --no-cache bash iputils traceroute net-tools bind-tools curl

# Create Non-Root User
RUN adduser -D appuser

# Switch the Non-Root User
USER appuser

# Set the entry point to a shell, so the container stays running for interactive use
CMD ["/bin/bash"]
ENTRYPOINT ["sleep", "infinity"]
