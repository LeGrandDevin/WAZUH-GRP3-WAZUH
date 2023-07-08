#Cp ossec.conf and local_rules.xml with our configurations to their directories
read -p 'email: ' email
python3 emailConf.py $email
cp ossec.conf /var/ossec/etc/
cp local_rules.xml /var/ossec/ruleset/rules/
