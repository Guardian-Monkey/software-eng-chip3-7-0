FROM ruby:3.3.8

# 1. Set the working directory
WORKDIR /app

# 2. Update rubygems and install bundler
RUN gem install bundler

# 3. Copy your Gemfile into the container and install dependencies
COPY Gemfile* ./
RUN bundle install

# 4. Copy the rest of your application code (app.rb, config.ru, etc.)
COPY . .

# 5. Start the web server and bind it to 0.0.0.0 so Render can route traffic to it
CMD ["rackup", "--host", "0.0.0.0", "--port", "10000"]