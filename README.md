# 👋 Hi there! Welcome!
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
```bash
npm run test:api
npx newman run collection/DummyJSON.postman_collection.json -e environment/DummyJSON.postman_environment.json
```
npm run test:api test runs always in CI/CD for every merge

3. If you would like to use directly newman commands you need to install newman first globally on your machine, after that you can run the official newman commands
```bash 
npm install -g newman
sudo npm install -g newman
newman run collection/DummyJSON.postman_collection.json -e environment/DummyJSON.postman_environment.json
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

1. kidolgozni a kulonbozo uzleti scenariokat, meg hozza kell parat -> invalid inputs, missing parameters, boundary values, timeouts, authorization failures, malformed JSON, etc.
2. validaciokba betenni uzleti validaciokat is
3. readme rewrite + docker implementacio