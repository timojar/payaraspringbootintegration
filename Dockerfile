FROM payara/micro

COPY personRegister-0.0.1-SNAPSHOT.war $DEPLOY_DIR

CMD ["--deploymentDir", "/opt/payara/deployments", "--contextroot", ""]
