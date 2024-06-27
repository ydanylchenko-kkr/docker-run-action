#FROM artifactory-prod.delivery.kkr.cloud/enterpriseprocess-docker/docker:27-cli
FROM artifactory-prod.delivery.kkr.cloud/enterpriseprocess-docker/docker:20.10

#RUN apk add bash
CMD ["/bin/sh"]
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["sh", "/entrypoint.sh"]
