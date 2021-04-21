 FROM node:12-alpine
 RUN wait 12000
 ENV HTTP_PROXY="http://proxy-gdpshs-p.we1.azure.aztec.cloud.allianz:80"
 ENV HTTPS_PROXY="http://proxy-gdpshs-p.we1.azure.aztec.cloud.allianz:80"
 ENV http_proxy="http://proxy-gdpshs-p.we1.azure.aztec.cloud.allianz:80"
 ENV https_proxy="http://proxy-gdpshs-p.we1.azure.aztec.cloud.allianz:80"
 ENV NO_PROXY="10.100.0.0/16,172.20.0.0/16,localhost,127.0.0.1, .internal, .local, .ec1.aws.aztec.cloud.allianz, 169.254.169.254,logs.eu-central-1.amazonaws.com,ec2.eu-central-1.amazonaws.com,ecr.eu-central-1.amazonaws.com,sts.eu-central-1.amazonaws.com,elasticloadbalancing.eu-central-1.amazonaws.com,autoscaling.eu-central-1.amazonaws.com, s3.eu-central-1.amazonaws.com, .gitlab.gda.allianz, .gda.allianz, .svc"
 ENV no_proxy="10.100.0.0/16,172.20.0.0/16,localhost,127.0.0.1, .internal, .local, .ec1.aws.aztec.cloud.allianz, 169.254.169.254,logs.eu-central-1.amazonaws.com,ec2.eu-central-1.amazonaws.com,ecr.eu-central-1.amazonaws.com,sts.eu-central-1.amazonaws.com,elasticloadbalancing.eu-central-1.amazonaws.com,autoscaling.eu-central-1.amazonaws.com, s3.eu-central-1.amazonaws.com, .gitlab.gda.allianz, .gda.allianz, .svc"
 RUN apk add --no-cache python g++ make
 WORKDIR /app
 COPY . .
 RUN yarn install --production
 CMD ["node", "src/index.js"]
