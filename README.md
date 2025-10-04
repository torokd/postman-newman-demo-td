# 👋 Hi there!
So glad you're here! This little project is a playful, practical demo to help you get comfy with API testing using Postman and Newman. Whether you're learning, experimenting, or just browsing, you’re in the right place. 

## 👀 What is this project?
This is a Postman + Newman demo based on the public [DummyJSON](https://dummyjson.com) API — a free-to-use mock API created by a developer for learning and testing purposes. 

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

### Option 3 – Run it in docker container
1. Clone the project and install dependencies
```bash
git clone https://github.com/torokd/postman-newman-demo-td.git
cd postman-newman-demo-td
```
2. Build docker container and run the tests in it
```bash
docker build -t postman-newman-demo .
docker run --rm postman-newman-demo
```

## 🤖 CI/CD integration
You can set it up in the tests.yml, currently we have 2 jobs that runs for push and pull. 
- smoke scope with access token
- smoke scope with refresh token

## 💡 Future ideas for imrpoving this project
1. Adding negative cases for
   - Adding negative cases for missing tokens (currently the dummy project has no implementation for it)
   - Adding test cases for missing properties in the requests
   - Adding test cases for invalid format in the requests
   - Adding test cases for malformed json
   - Adding test cases for already deleted elements check (currently the json dummy project does not have any real DB so it's pointless at the moment)
   - Adding test cases for wrong content types
   - Push it to automated and scheduled CI/CD and make the reporting webhooked to teams/slack/email
