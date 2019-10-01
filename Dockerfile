FROM jboss/wildfly:10.1.0.Final

ADD  https://firebasestorage.googleapis.com/v0/b/ejemplot-efa2e.appspot.com/o/springbootconbd.war?alt=media&token=da1a5a88-3d32-4960-84ba-3b84d9e3d4ec /opt/jboss/wildfly/standalone/deployments/

USER root
RUN chmod 777 -R /opt/jboss/wildfly/standalone/deployments/springbootconbd.war
USER jboss

