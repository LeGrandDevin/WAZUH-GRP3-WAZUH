import xml.etree.ElementTree as ET
import sys
email = sys.argv[1]
tree = ET.parse('./ossec.conf')
root = tree.getroot()
emailToNode = root.find('global').find('email_alerts').find('email_to') 
emailToNode.text = email
tree.write("ossec.conf")