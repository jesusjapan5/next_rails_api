FROM ruby:3.1.1
RUN apt-get update -qq \
 && apt-get install -y nodejs postgresql-client npm \
 && rm -rf /var/lib/apt/lists/* \
 && npm install --global yarn
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

ARG RUBYGEMS_VERSION=3.3.20
RUN gem update --system ${RUBYGEMS_VERSION} && \
    bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
