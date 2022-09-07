
#List IssueTypes
curl -u $USER:$PASSWORD -X GET -H \
  "Content-Type: application/json" -H "Accept: application/json" \
  --url https://env0-dev.atlassian.net/rest/api/3/issuetype | jq -rC '.'


#Create issues
curl -u $USER:$PASSWORD -X POST -H \
  "Content-Type: application/json" -H "Accept: application/json" \
  --url https://env0-dev.atlassian.net/rest/api/3/issuetype \
  --data '{
    "type": "standard",
    "name": "deployment",
    "description": "deployment tracking issue"
  }' | jq -rc '.'

## FIELDS 

#Get Fields for the issue
curl -u $USER:$PASSWORD -X GET -H \
"Content-Type: application/json" -H "Accept: application/json" \
--url https://env0-dev.atlassian.net/rest/api/3/field

# Get Field Options
curl -u $USER:$PASSWORD -X GET -H \
"Content-Type: application/json" -H "Accept: application/json" \
--url https://env0-dev.atlassian.net/rest/api/3/customFieldOption/10000


## PROJECTS

#Get All Projects
curl -u $USER:$PASSWORD -X GET -H \
"Content-Type: application/json" -H "Accept: application/json" \
--url https://env0-dev.atlassian.net/rest/api/3/project/search | jq -rC '.'
