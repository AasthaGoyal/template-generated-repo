# -- GitLab  --
FROM wso2/wso2am:3.1.0-alpine3.11
COPY build/apis/* /home/wso2carbon/wso2-tmp/synapse-configs/default/api/
COPY build/lib/* /home/wso2carbon/wso2am-3.1.0/repository/components/lib/
COPY build/prometheus/* /home/prometheus/
COPY build/conf/* /home/wso2carbon/wso2am-3.1.0/repository/conf/
COPY build/branding/publisher/logo.svg /home/wso2carbon/wso2am-3.1.0/repository/deployment/server/jaggeryapps/publisher/site/public/images
COPY build/branding/publisher/defaultTheme.js /home/wso2carbon/wso2am-3.1.0/repository/deployment/server/jaggeryapps/publisher/site/public/conf
COPY build/branding/devportal/logo.svg /home/wso2carbon/wso2am-3.1.0/repository/deployment/server/jaggeryapps/devportal/site/public/images
COPY build/branding/devportal/defaultTheme.js /home/wso2carbon/wso2am-3.1.0/repository/deployment/server/jaggeryapps/devportal/site/public/theme
ENV JAVA_OPTS=-javaagent:/home/prometheus/jmx_prometheus_javaagent-0.12.0.jar=8080:/home/prometheus/prometheus.yml
