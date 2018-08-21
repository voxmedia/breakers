FROM docker.voxops.net/ruby:2.3-3.0.2

ENV WORKDIR=/app
WORKDIR ${WORKDIR}
ADD . ${WORKDIR}
RUN bundle install
RUN rm -rf /usr/local/bundle/cache
