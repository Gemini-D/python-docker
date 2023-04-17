FROM python:3.9-alpine3.14

RUN set -ex \
  && python --version \
  && apk update \
  && apk add openssh libstdc++ \
  && apk add --no-cache --virtual .build-deps python3-dev g++ \
  && pip3 install --upgrade -i https://mirrors.aliyun.com/pypi/simple pip \
  && pip install cython \
  && pip install pymysql \
  && pip install pandas \
  && pip install sqlalchemy \
  && pip install datetime \
  && pip install requests \
  && pip install html-table \
  && pip install yagmail \
  && pip install pyecharts \
  && pip install jieba \
  && pip install numpy \
  && pip install snownlp \
#  && pip install Matplotlib \
  && pip install scipy==1.6.0 \
  && pip install sklearn \
  && pip install apscheduler \
  && pip install loguru \
  && pip install sqlalchemy \


   # ---------- clear works ----------
  && apk del .build-deps \
  && rm -rf /var/cache/apk/* /tmp/* /usr/share/man \
  && echo -e "\033[42;37m Build Completed :).\033[0m\n"
