aws --profile rexroof --region us-east-2 \
  ec2 run-instances \
  --image-id ami-8c122be9 \
  --instance-type t2.micro \
  --security-group-ids sg-5342a238 \
  --subnet-id subnet-9c4645d6 \
  --count 6 \
  --key-name rex-roof-us-east-2 \
  --associate-public-ip-address \
  --instance-initiated-shutdown-behavior terminate
