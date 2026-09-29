# geoserver-cloud-poc

Replica of geoserver/geoserver-cloud's SonarCloud fork PR workflow.

Demonstrates fork checkout + Maven build code execution:
- `pull_request_target` triggers on any fork PR touching pom.xml or src/
- `build` job checks out the fork's commit (`head.sha`)
- Runs `./mvnw verify` on the attacker's code — full RCE
- `SONAR_TOKEN` and `GITHUB_TOKEN` are env vars in the vulnerable step
- No gate, no approval required

Used for authorized security research only.
