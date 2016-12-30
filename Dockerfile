#FROM daocloud.io/centos

FROM tips
MAINTAINER Mutiwu <gquo@qq.com>

#RUN yum install python screen -y
#RUN yum install python-setuptools -y

#RUN easy_install pip
#RUN mkdir -p /tips
RUN rm -rf /tips
ADD . /tips
WORKDIR /tips


#RUN pip install -r requirements.txt

RUN python generate.py

