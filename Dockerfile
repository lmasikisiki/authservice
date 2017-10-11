FROM alpine-java

# RUN apk  --no-cache update 

# RUN apk --no-cache -Uuv add groff \
#         util-linux \
#         make \
#         bash \
#         alpine-sdk \ 
#         tar && \
#         rm -R /var/cache/apk/  

RUN mkdir /app

COPY /db-5.3.28.* /app

COPY /openldap-2.4.45.* /app

WORKDIR /app

RUN tar -xvf /app/db-5.3.28.* 

RUN tar -xvf /app/openldap-2.4.45.* 

RUN cd /app/db-5.3.28/build_unix &&  \
        ../dist/configure --prefix=/usr  \
        --enable-compat185 \
        --enable-dbm       \
        --disable-static   \
        --enable-cxx && \
        make && make install   
            
RUN cd /app/openldap-2.4.45 && ./configure && \
        make && \
        make depend && \
        make install 

EXPOSE 389

RUN rm -R  /app/db-* /app/openldap-*

COPY /scripts/ /app/scripts
 
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

CMD /app/entrypoint.sh
 
 