
ECR_REPO='631938344310.dkr.ecr.ap-northeast-1.amazonaws.com/ecr-sample'

ecr-login:
	$$(aws ecr get-login --no-include-email --region ap-northeast-1)

ecr-push:
	docker push 631938344310.dkr.ecr.ap-northeast-1.amazonaws.com/ecr-sample:latest

build:
	docker build -t ${ECR_REPO}:latest .

test:
	echo "start test"
	echo "end test"

