# node_modules 삭제 ------
rm -rf node_modules

# 캐쉬 삭제 ------
npm cache clean --force

# docker-compose 띄우기 (빌드 결과를 deploy_result 폴더에 저장)  ------
docker-compose up -d --build > deploy_result


# 불필요한 파일 삭제 -------------------------
# echo "remote volumn"
docker volume rm $(docker volume ls -qf dangling=true)

# echo "remote docker images"
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
docker images -a | sed '1 d' | awk '{print $3}' | xargs -L1 docker rmi -f