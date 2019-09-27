FROM jboss/wildfly:10.1.0.Final

ADD  https://firebasestorage.googleapis.com/v0/b/ejemplot-efa2e.appspot.com/o/ejemplowebcondb.war?alt=media&token=10327e20-2d90-4ee0-8b21-2f9931bee6fa /opt/jboss/wildfly/standalone/deployments/

USER root
RUN chmod 777 -R /opt/jboss/wildfly/standalone/deployments/ejemplowebcondb.war
USER jboss

