FROM cp.icr.io/cp/appc/ace-server-prod@sha256:891841a6a7e6996bd23fb8910972cd73005d2ffb507a1e8adea4319b322536fa
USER root
COPY Rest_Api_Application_Put_Get.bar  /home/aceuser/initial-config/bars/
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
