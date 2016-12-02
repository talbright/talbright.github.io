AWS_CLI_PROFILE:=korebantic
S3_SITE_BUCKET:=aws-website-talbright-ac3r5

server:
	hugo server

build:
	hugo

sync: build
	aws s3 --profile korebantic sync ./public s3://$(S3_SITE_BUCKET)

.PHONY: server build sync
