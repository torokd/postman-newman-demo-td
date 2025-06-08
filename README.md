# 👋 Hi there! Welcome!

So glad you're here! This little project is a playful, practical demo to help you get comfy with API testing using Postman and Newman. Whether you're learning, experimenting, or just browsing, you’re in the right place.

## 👀 What is this project?

This is a Postman + Newman demo based on the public [DummyJSON](https://dummyjson.com) API — a free-to-use mock API created by a developer for learning and testing purposes. 

📚 API documentation for DummyJSON is available here: [https://dummyjson.com/docs](https://dummyjson.com/docs)

## 🚀 Quick start

There are two main ways to use this project:

### Option 1 – Run it in postman

1. Download the collection file:  
   [`DummyJSON.postman_collection.json`](./collection/DummyJSON.postman_collection.json)
2. Download the environment file:  
   [`DummyJSON.postman_environment.json`](./environment/DummyJSON.postman_environment.json)
3. Import both into Postman
4. You can run specific collections, directories or requests

### Option 2 – Run it with newman

```bash 
git clone https://github.com/torokd/postman-newman-demo-td.git
```

```bash 
cd postman-newman-demo-td
```

```bash 
npm install
```

```bash npm run test:api
```
OR
```bash
npx newman run collection/DummyJSON.postman_collection.json -e environment/DummyJSON.postman_environment.json
```
OR 
```bash 
newman run collection/DummyJSON.postman_collection.json -e environment/DummyJSON.postman_environment.json
```
Disclaimer: If you would like to run direct newman commands you must install newman globally first if it is not working give an extra psuh with sudo. Then you are able to run direct newman commands like this:

```bash 
npm install -g newman
```
OR
```bash 
sudo npm install -g newman
```

### Option 3 – Run it in docker container

```bash
git clone https://github.com/torokd/postman-newman-demo-td.git
```
```bash 
cd postman-newman-demo-td
```
```bash
docker build -t postman-newman-demo .
```
```bash 
docker run --rm postman-newman-demo
```