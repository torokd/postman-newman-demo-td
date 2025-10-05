# 👋 Hi there!
So glad you're here! This little project is a playful, practical demo to help you get comfy with API testing using Postman and Newman. Whether you're learning, experimenting, or just browsing, you’re in the right place. 

## 👀 What is this project?
This is a Postman + Newman demo based on the public [DummyJSON](https://dummyjson.com) API — a free-to-use mock API created by a developer for learning and testing purposes. 

This project is a semi-automated API testing imaginary project. The requirement was it should be comfortable for the manual and automated testers as well. I tried to make a project strucure and the user frameworks and tools to reach this goal.

The content of the project is mostly:
- Contract testing
- Empty checks
- Some business logic tests
- Positive and negative scenarios

📚 API documentation for DummyJSON is available here: [https://dummyjson.com/docs](https://dummyjson.com/docs)

## 🚀 Quick start

### Option 1 – Run it in postman

1. Download the collection file:  
   [`DummyJSON.postman_collection.json`](./collection/DummyJSON.postman_collection.json)
2. Download the environment file:  
   [`DummyJSON.postman_environment.json`](./environment/DummyJSON.postman_environment.json)
3. Import both into Postman
4. You can run specific collections, directories or requests

### Option 2 – Run it with newman

1. Clone the project and install dependencies
```bash 
git clone https://github.com/torokd/postman-newman-demo-td.git
cd postman-newman-demo-td
npm install
```

2. You have these 2 commands to run
Run it with predefined scripts (they are added to package to json file in the format of testingscope:environment:tokentype:reportingtype), every report is going to be generated under reports directory. Currently cli, csv, json and html reporting are available.
```bash
npm run regression:dev:accessToken:html
```
Run with newman in node:
```bash
npx newman run collection/DummyJSON.postman_collection.json -e environment/DummyJSON.postman_environment.json --env-var token={{accessToken}}
```

3. If you would like to use directly newman commands you need to install newman first globally on your machine, after that you can run the official newman commands
```bash 
npm install -g newman
newman run collection/DummyJSON.postman_collection.json -e environment/DummyJSON.postman_environment.json --env-var token={{accessToken}}
```

### Option 3 – Run it in DOCKER container

1. We have dockerisation on the project. You can image any kind docker image with parameters and you can run them.
```bash
git clone https://github.com/torokd/postman-newman-demo-td.git
cd postman-newman-demo-td
```
2. Here you can use:
- testingScope: smoke, regression
- environment: dev
- tokenType: accessToken, refreshToken
- reporting: cli, csv, json, html
```bash
docker build \
-t dockerimagename \
--build-arg testingScope=regression \
--build-arg environment=dev \
--build-arg tokenType=accessToken \
--build-arg reporting=html \
.
```
This will execute the appropriate NPM scipt based on the provided build arguments -> npm run regression:dev:accessToken:html (that will run the newman command defined in package.json)
```bash
docker run --rm dockerimagename
```

There is a quick build setup in the package.json file for building a sample image via running the following command:
```bash
npm run docker:quickbuild
```

### 🤖 CI/CD integration

- merge-smoke.yml runs in the CI/CD:
   - smoke scope with access token
   - smoke scope with refresh token

- nightly-regression.yml, runs daily at 22:00 (dockerised):
   - regression scope with access token
   - regression scope with refresh token
  

### 💡 Future ideas for improving this project
   - Adding negative cases for missing tokens (currently the dummy project has no implementation for it)
   - Adding test cases for missing properties in the requests
   - Adding test cases for invalid format in the requests
   - Adding test cases for malformed json
   - Adding test cases for already deleted elements check (currently the json dummy project does not have any real DB so it's pointless at the moment)
   - Adding test cases for wrong content types
   - Push it to automated and scheduled CI/CD and make the reporting webhooked to teams/slack/email
   - Adding more quick scripts to package.json for building up docker images
   - Add more API endpoints from DUMMY JSON project
   - Add folders as run-parameters and make scripts for them
