FROM python:3.9-alpine3.14

RUN set -ex \
  && python --version \
  && apk update \
  && apk add openssh libstdc++ \
  && apk add --no-cache --virtual .build-deps python3-dev g++ \
  && pip3 install --upgrade -i https://mirrors.aliyun.com/pypi/simple pip \
  && pip install pymysql \
  && pip install pandas \
   # ---------- clear works ----------
  && apk del .build-deps \
  && rm -rf /var/cache/apk/* /tmp/* /usr/share/man \
  && echo -e "\033[42;37m Build Completed :).\033[0m\n"
