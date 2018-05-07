import getpass
import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEText import MIMEText

sender = raw_input('Enter your email address or intra login: ')
senderPass = getpass.getpass('Enter your email password: ')
sendTo = raw_input('Enter the email to send this to: ')

if '@' not in sender:
    sender = sender + '@student.42.us.org'
if '@' not in sendTo:
    print "Invalid Email"

subject = raw_input('Enter the subject for the email or "Call" to arise the warriors: ')
if subject == 'Call':
    subject = 'Calling all Warriors!'


msg = MIMEMultipart()
msg['From'] = sender
msg['To'] = sendTo
msg['Subject'] = subject
body = raw_input('Enter your message or "Chant" for the warriors: ')
if body == 'Chant':
    body = 'Join the battle today!\n We need every man we can get!'

msg.attach(MIMEText(body, 'plain'))
server = smtplib.SMTP('smtp.gmail.com', 587)
server.ehlo()
server.starttls()
server.login(sender, senderPass)
server.sendmail(sender, sendTo, msg.as_string())
print "Email sent."
server.quit()
