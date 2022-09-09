curl -X POST \
  https://generator3.swagger.io/api/generate \
  --output api.zip \
  -H 'content-type: application/json' \
  -d '{
  "specURL" : "https://www.irmng.org/rest/api-docs/swagger.json",
  "lang" : "java",
  "type" : "CLIENT",
  "options" : {
  "library" : "okhttp-gson",
  "modelPackage": "org.irmng.aphia.v1_0.model",
  "apiPackage": "org.irmng.aphia.v1_0.api",
  "invokerPackage": "org.irmng.aphia.v1_0.handler",
  "groupId": "org.filteredpush",
  "artifactId": "irmngservice",
  "dateLibrary" : "java8",
  "sourceFolder" : "src/main/gen",
  "java8" : "true",
  "artifactVersion": "0.0.1-SNAPSHOT"
  } ,
  "codegenVersion" : "V3"
}'
