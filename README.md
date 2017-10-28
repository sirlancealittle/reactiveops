# reactiveops coding challend
this repos provides all the code to go from zero to a simple flask app serving the roo uri

# ./terraform
## getting the public ip
```
cd terraform && terraform output
```

## setup
```
cd terraform
export AWS_ACCESS_KEY_ID="<aws_access_key_id>"
export AWS_SECRET_ACCESS_KEY="<aws_secret_acess_key>"

# provisioning
```
cd terrafor
terraforom get; terraform init; terraform apply
```

# ./flask
just a stupid simple flask app for demo purposes

# destroying and recreating yourself
feel free to destroy and recreate the stack yourself.  if you want ssh access to the
box you will need to pass a base64 encoded public ssh key to terraform via
`--var public_key="<base64 encoded string>" and add your source ip to the `ssh-22`
security group in `security-groups.tf`
