# #!/bin/bash

# cd /app/db-6.2.32/build_unix && ../dist/configure --prefix=/usr  \
#                   --enable-compat185 \
#                   --enable-dbm       \
#                   --disable-static   \
#                   --enable-cxx       && make

# rm -r -f /app/db-*

# export LDFLAGS="-L/usr/local/BerkeleyDB.6.2/lib"

# ls /usr/local/li

# cd /app/openldap-2.4.45 && ./configure && \
#     make depend && \
#     make && \
#     make test

# rm -r -f /app/openldap-*

#Run ldap
usr/local/libexec/slapd
ps -ef
wait
