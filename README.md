# Rapid Rails API Scaffold

A modern Ruby on Rails API scaffold with GraphQL, Docker support, and best practices for rapid development.

## Features
- Ruby 3.2.2 & Rails 7.1.0
- GraphQL API setup
- Docker containerization
- RSpec for testing
- Rubocop for code linting
- Environment variable management
- Database configuration

### Prerequisites: 
- Install a code editor. [VScode](https://code.visualstudio.com/download) or [Cursor](https://www.cursor.com/) or any IDE
- [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Install Rails](https://guides.rubyonrails.org/v5.0/getting_started.html#:~:text=3.1%20Installing%20Rails)
- [Install Docker](https://docs.docker.com/engine/install/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)

### Setup Instructions:

#### 1. Repository Setup
```bash
# Clone the repository
git clone https://github.com/PaulStorberg/api_scaffold.git

# Rename the project directory
mv api_scaffold your-new-repo-name

# Navigate to the project directory
cd your-new-repo-name

# Set up your new GitHub repository
# Create a new repository on GitHub, then:
git remote set-url origin https://github.com/your-username/your-new-repo-name.git
git push -u origin main
```

#### 2. Environment Configuration
```bash
# Copy the example environment file
cp .env.example .env

# Update .env with your configuration
# At minimum, you should update:
# - DATABASE_PASSWORD
# - RAILS_MASTER_KEY
# - SECRET_KEY_BASE
```

The `.env` file contains important configuration variables for:
- Database credentials
- Rails environment settings
- Server configuration
- API keys (if using external services)
- Email settings (if needed)

Make sure to never commit your `.env` file to version control.

#### 3. Development Setup

##### Option A: Using Docker (Recommended)
```bash
# Build and start the containers
docker-compose up --build

# Create and setup the database (in a new terminal)
docker-compose exec web rails db:create db:migrate

# Run tests to verify setup
docker-compose exec web rspec
```

##### Option B: Local Setup
```bash
# Install dependencies
bundle install

# Setup database
rails db:create db:migrate

# Start the server
rails server
```

#### 4. Accessing the Application
- GraphQL API endpoint: http://localhost:3000/graphql
- GraphiQL interface (if enabled in development): http://localhost:3000/graphiql

### Development

#### Running Tests
```bash
# With Docker
docker-compose exec web rspec

# Without Docker
bundle exec rspec
```

#### Code Quality
```bash
# Run Rubocop
bundle exec rubocop
```

### Deployment
- The application is containerized and can be deployed to any Docker-compatible hosting service
- Configure your production environment variables accordingly
- Ensure all tests pass before deployment

### Contributing
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Creator
- [Paul Storberg](https://www.paulstorberg.com)
- [Github](https://www.github.com/PaulStorberg)

### License
This project is licensed under the MIT License - see the LICENSE file for details
