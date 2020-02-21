FROM jekyll/builder:3.8

COPY . /srv/jekyll

RUN bundle install

EXPOSE 4000

WORKDIR /srv/jekyll
