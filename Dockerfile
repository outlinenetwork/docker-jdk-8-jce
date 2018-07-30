FROM frolvlad/alpine-oraclejdk8:slim

RUN apk update \
    && apk add bash \
    && apk add nano \
    && apk add openssl

RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"
RUN unzip jce_policy-8.zip
RUN mv -f UnlimitedJCEPolicyJDK8/local_policy.jar /usr/lib/jvm/default-jvm/jre/lib/security/
RUN mv -f UnlimitedJCEPolicyJDK8/US_export_policy.jar /usr/lib/jvm/default-jvm/jre/lib/security/

