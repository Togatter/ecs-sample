
ECR_REPO='631938344310.dkr.ecr.ap-northeast-1.amazonaws.com/ecr-sample'
IMAGE_TAG='latest'

ecr-login:
	$$(aws ecr get-login --no-include-email --region ap-northeast-1)

ecr-push:
	docker push ${ECR_REPO}:${IMAGE_TAG}

build:
	docker build -t ${ECR_REPO}:latest .

test:
	echo "start test!"
	echo "end test!"

print-json:
	printf '{"Version":"latest","ImageURI":"%s"}' ${ECR_REPO}:${IMAGE_TAG}
