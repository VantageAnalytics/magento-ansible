# magento-ansible

This ansible play will provision a self contained Magento server for a CentOS 6.5 base image, with Apache 2.2, PHP 5.5 and MySQL 5.6 contained on it. It is meant for scratch test and development environments.

## Configuration

Here is an example host_vars file

```
magento_database_name: magento
magento_database_user: magento
magento_database_password: magento
magento_session_save: db
magento_use_secure: no
magento_admin_use_secure: no
magento_admin_firstname: John
magento_admin_lastname: Doe
magento_admin_email: example@example.org
magento_admin_user: admin
magento_admin_password: example
magento_encryption_key: e364de3091504fa0a668acb502ee4949ea5f2418a6b54fe293c472f0
magento_full_hostname: www.example.org
magento_version: 1.9
```

Most of these fields are self explanatory. Note that magento_version 1.9 maps to the latest stable release of 1.9. The source code is checked out from the Magento SVN repository. magento_full_hostname must resolve because the Magento config script drives the web based configuration wizard.

## Improvements

Support SSL. As this playbook is meant to be used in a dev environment, I did not bake in SSL. It might be easy to bake in letsencrypt.org
