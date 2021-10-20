FROM jekyll/builder:3.8

#RUN cd /srv && \
#  git clone https://github.com/turbotobbe/jekyll-theme-sparti.git && \
#  chmod -R 777 jekyll-theme-sparti && \
#  cd jekyll-theme-sparti && \
#  gem build jekyll-theme-sparti && \
#  gem install jekyll-theme-sparti


COPY . /srv/jekyll

RUN bundle install

#RUN bundle exec jekyll build

EXPOSE 4000

WORKDIR /srv/jekyll
