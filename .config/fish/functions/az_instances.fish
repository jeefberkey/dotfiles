function az_instances  --description 'Azure Console-like table from your cli'
  command az vm list -d \
    --output table \
    --query "[].{
      Name:name,
      ResGroup:resourceGroup,
      PrivateIP:privateIps,
      PublicIP:publicIps,
      Size:hardwareProfile.vmSize
    }"
end
