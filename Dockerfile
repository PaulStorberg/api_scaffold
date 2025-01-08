FROM ruby:3.2.2

# Install system dependencies including postgresql-client
RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client

# Set working directory
WORKDIR /app

# Install gems
COPY Gemfile ./
RUN bundle config set force_ruby_platform true && \
    bundle install --jobs 20 --retry 5 && \
    bundle lock --add-platform x86_64-linux && \
    bundle install

# Copy application code
COPY . .

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Start the main process
CMD ["rails", "server", "-b", "0.0.0.0"]
