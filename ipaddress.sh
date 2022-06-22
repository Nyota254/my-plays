aws ec2 describe-instances \
    --profile cicdadmin \
    --query 'Reservations[*].Instances[*].PublicIpAddress' \
    --filters 'Name=tag:Name,Values=Udacity' \
    --output text >> inventory