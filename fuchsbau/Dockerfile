FROM bitwalker/alpine-elixir:1.7 as build

# Copy the source folder into the Docker image
COPY . .

# Install dependencies and build Release
RUN export MIX_ENV=prod && \
    rm -Rf _build && \
    mix deps.get && \
    mix release

# Extract Release archive to /rel for copying in next stage, please change the application name 
RUN APP_NAME="fuchsbau" && \
    RELEASE_DIR=`ls -d _build/prod/rel/$APP_NAME/releases/*/` && \
    mkdir /export && \
    tar -xf "$RELEASE_DIR/$APP_NAME.tar.gz" -C /export

# Deplyment
FROM pentacent/alpine-erlang-base:latest

# Copy and extract .tar.gz 
COPY --from=build /export/ .


# Set default entrypoint and command
ENTRYPOINT ["/opt/app/bin/fuchsbau"]
CMD ["foreground"]