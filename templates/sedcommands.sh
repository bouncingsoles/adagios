#!/bin/sh
sed -i '
    s|/etc/nagios/passwd|/etc/thruk/htpasswd|g
    s|user=nagios|user=naemon|g
    s|group=nagios|group=naemon|g' /etc/httpd/conf.d/adagios.conf
sed -i '
    s|/etc/nagios/nagios.cfg|/etc/naemon/naemon.cfg|g
    s|nagios_url = "/nagios|nagios_url = "/thruk|g
    s|/etc/nagios/adagios/|/etc/naemon/adagios/|g
    s|/etc/init.d/nagios|/etc/init.d/naemon|g
    s|nagios_service = "nagios"|nagios_service = "naemon"|g
    s|livestatus_path = None|livestatus_path = "/var/cache/naemon/live"|g
    s|/usr/sbin/nagios|/usr/bin/naemon|g' /etc/adagios/adagios.conf
sed -i '
    s|/etc/nagios/nagios.cfg|/etc/naemon/naemon.cfg|g
    s|/etc/nagios/okconfig/|/etc/naemon/okconfig/|g
    s|/etc/nagios/okconfig/examples|/etc/naemon/okconfig/examples|g' /etc/okconfig.conf
sed -i '
    s|nagios|naemon|g
    s|/usr/sbin/naemon|/usr/bin/naemon|g' /etc/sudoers.d/adagios
sed -i '
    s|/usr/lib64/naemon/plugins|/usr/lib64/nagios/plugins|g' /etc/naemon/resource.cfg
sed -i '
    s|/etc/nagios/passwd|/etc/thruk/htpasswd|g' /etc/httpd/conf.d/pnp4nagios.conf
sed -i '
    s/user = nagios/user = naemon/g
    s/group = nagios/group = naemon/g' /etc/pnp4nagios/npcd.cfg
