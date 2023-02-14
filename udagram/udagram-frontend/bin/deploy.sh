export NODE_OPTIONS=--openssl-legacy-provider

aws s3 cp --recursive --acl public-read ./www s3://mynewbuckethere/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://mynewbuckethere/

eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD
eb setenv POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB
eb setenv AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
eb setenv AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION