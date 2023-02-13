export NODE_OPTIONS=--openssl-legacy-provider

aws s3 cp --recursive --acl public-read ./www s3://mynewbuckethere/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://mynewbuckethere/

