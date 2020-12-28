FROM cirrusci/flutter:stable

ENV PATH ${PATH}:/root/.pub-cache/bin

RUN flutter pub global activate junitreport

RUN apt-get update -qq -y
RUN apt-get install -y python2 lcov

ADD https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py /root/lcov_cobertura.py
