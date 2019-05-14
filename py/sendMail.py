import smtplib

sender = 'no_reply@mydomain.com'
receivers = ['giuliobva@gmail.com']

message = """From: No Reply <no_reply@mydomain.com>
To: Person <person@otherdomain.com>
Subject: Test Email

This is a test e-mail message.
"""

try:
   smtpObj = smtplib.SMTP('localhost')
   smtpObj.sendmail(sender, receivers, message)         
   print("Successfully sent email")
except SMTPException:
   print("Error: unable to send email")
