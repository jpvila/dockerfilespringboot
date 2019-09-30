FROM jboss/wildfly:10.1.0.Final

ADD  https://firebasestorage.googleapis.com/v0/b/ejemplot-efa2e.appspot.com/o/ejemplowebcondb.war?alt=media&token=de7ec63a-bb60-4d3d-a2ba-64d28f68479c /opt/jboss/wildfly/standalone/deployments/

USER root
RUN chmod 777 -R /opt/jboss/wildfly/standalone/deployments/ejemplowebcondb.war
USER jboss

