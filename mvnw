#!/bin/sh
# Maven Wrapper — downloads Maven if not present and runs it
set -e
MAVEN_HOME="${HOME}/.m2/wrapper/dists/apache-maven-3.9.9"
if [ ! -f "${MAVEN_HOME}/bin/mvn" ]; then
    mkdir -p "${MAVEN_HOME}"
    DIST_URL="https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.9.9/apache-maven-3.9.9-bin.zip"
    curl -sL "$DIST_URL" -o /tmp/maven.zip
    unzip -qo /tmp/maven.zip -d "${HOME}/.m2/wrapper/dists/"
    rm /tmp/maven.zip
fi
exec "${MAVEN_HOME}/bin/mvn" "$@"
