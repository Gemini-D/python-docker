FROM python:3.9-alpine3.14

RUN set -ex 
RUN python --version 
RUN apk update 
RUN apk add openssh libstdc++ 
RUN apk add --no-cache --virtual .build-deps python3-dev g++ 
RUN pip3 install --upgrade -i https://mirrors.aliyun.com/pypi/simple pip 
RUN pip install cython 
RUN pip install pymysql 
RUN pip install pandas 
RUN pip install sqlalchemy 
RUN pip install datetime 
RUN pip install requests 
RUN pip install html-table 
RUN pip install yagmail 
RUN pip install pyecharts 
RUN pip install jieba 
RUN pip install numpy 
RUN pip install snownlp 
#  && pip install Matplotlib 
#RUN pip install scipy==1.6.0
#RUN pip install sklearn
RUN pip install apscheduler
RUN pip install loguru
RUN pip install sqlalchemy
RUN pip install pymongo

   # ---------- clear works ----------
RUN apk del .build-deps
RUN rm -rf /var/cache/apk/* /tmp/* /usr/share/man
RUN echo -e "033[42;37m Build Completed :).033[0mn"
