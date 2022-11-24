az spring app create --service fenzho-1123-native  --resource-group fenzho-rg --name serverless-3x-native
az spring app deploy --service fenzho-1123-native  --resource-group fenzho-rg --name serverless-3x-native --build-env BP_NATIVE_IMAGE=true BP_JVM_VERSION=17 BP_MAVEN_BUILD_ARGUMENTS="-Dmaven.test.skip=true -Pnative package" --build-cpu 4 --build-memory 10Gi  --builder native  --source-path .


az spring app create --service fenzho-1123-native  --resource-group fenzho-rg --name serverless-3x
az spring app deploy --service fenzho-1123-native  --resource-group fenzho-rg --name serverless-3x --build-env BP_JVM_VERSION=17 --source-path .
