config-staging:
	ansible-playbook -i ansible/hosts --ask-vault-pass ansible/site.yml

edit-staging:
	ansible-vault edit ansible/host_vars/magentotest.yml --ask-vault-pass
