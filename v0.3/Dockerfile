FROM dockerfile/ubuntu
MAINTAINER nacyot(propellerheaven@gmail.com)

# Run upgrades
RUN apt-get update

# Install basic packages
RUN apt-get -qq -y install git curl build-essential openssl libssl-dev python-software-properties python g++ make 

# Install Ruby 2.1
RUN apt-get -qq -y install python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get -qq -y install ruby2.1 ruby2.1-dev
RUN gem install bundler --no-ri --no-rdoc

# Install packages for app
RUN apt-get install -qq -y libsqlite3-dev
RUN apt-get install -qq -y mysql-server mysql-client libmysqlclient-dev
RUN apt-get install -qq -y nodejs
RUN gem install foreman compass

# Install docker-sample-project v0.3
WORKDIR /app
RUN git clone https://github.com/nacyot/docker-sample-project.git /app
RUN git checkout v0.3
RUN bundle install --without development test

# Run docker-sample-project
ENV SECRET_KEY_BASE hellodocker
ENV RAILS_ENV production
EXPOSE 60005
CMD foreman start -f Procfile

