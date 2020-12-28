FROM cirrusci/flutter:stable

ENV PATH ${PATH}:${FLUTTER_HOME}/.pub-cache/bin

RUN flutter pub global activate junitreport 
