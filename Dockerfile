FROM hasura/graphql-engine:latest

# Enable the console
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

ENV PORT 8080

# Change $DATABASE_URL to your heroku postgres URL if you're not using
# the primary postgres instance in your app
CMD graphql-engine \
    --database-url $DATABASE_URL \
    serve \
    --server-port $PORT