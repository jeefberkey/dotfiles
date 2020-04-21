function ec2_instances -a region environment --description 'AWS Console-like table from your cli'
  set -q environment[1]; or set environment 'development'
  set -q region[1]; or set region 'us-east-1'

  command aws ec2 describe-instances \
    --filters Name=tag:Environment,Values=$environment \
    --region $region --output table \
    --query "Reservations[*].Instances[*].{
      Name:Tags[?Key==`Name`]|[0].Value,
      Environment:Tags[?Key==`Environment`]|[0].Value,
      Purpose:Tags[?Key==`Purpose`]|[0].Value,
      InstanceType:InstanceType,
      PrivateIP:PrivateIpAddress,
      PublicIP:PublicIpAddress,
      State:State.Nam
    }"
end
