#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails
rm -f /app/tmp/pids/server.pid

# Wait for database to be ready
until PGPASSWORD=$POSTGRES_PASSWORD psql -h "db" -U "postgres" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

# Only run database commands in web container
if [ "${CONTAINER_ROLE}" = "web" ]; then
  # Try to create database if it doesn't exist
  if ! PGPASSWORD=$POSTGRES_PASSWORD psql -h "db" -U "postgres" -lqt | cut -d \| -f 1 | grep -qw api_scaffold_development; then
    echo "Database does not exist, trying to create..."
    bundle exec rails db:create || true
  fi

  # Run migrations
  bundle exec rails db:migrate
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile)
exec "$@"
