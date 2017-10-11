#!/bin/bash

# set config files
cat /app/scripts/ldap.conf > /usr/local/etc/openldap/ldap.conf && \
        cat /app/scripts/ldap.conf > /usr/local/etc/openldap/ldap.conf.default && \
        cat /app/scripts/slapd.conf > /usr/local/etc/openldap/slapd.conf && \
        cat /app/scripts/slapd.conf > /usr/local/etc/openldap/slapd.conf.default && \
        cat /app/scripts/slapd.ldif > /usr/local/etc/openldap/slapd.ldif && \
        cat /app/scripts/slapd.ldif > /usr/local/etc/openldap/slapd.ldif.default
#Run ldap
/usr/local/libexec/slapd

ldapadd -x -H ldap:// -D "cn=manager,dc=ldapauth,dc=com" -w lizo90  -f /app/scripts/init.ldif

# for now, run an infinit loop to keep the container running
while :; do sleep 1; done;