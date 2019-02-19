## Create a s3 bucket and change the config/s3.config file with your own values

## Change de inputs.tfvars with your vars then:
    
### In the first time    
    $ sh run.sh create
        
### When you want to update   
    $ sh run.sh update

### For destroy
    $ sh run.sh destroy
# You can get the api gateway id with this command
    aws apigateway get-rest-apis --profile terraform
## where --profile flag specify the name of your credentials, this could be omitted if you are using IAM roles. 

### The configuration setup take about 15-20 minutes, so you need wait after the terraform finish.