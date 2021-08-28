// users story list
const List chats_json = [
  {
    "img": "assets/images/human/hr05.jpg",
    "name": "上野",
    "online": false,
    "story": false,
  },
  {
    "img": "assets/images/human/hr01.jpeg",
    "name": "堀田",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/human/hr02.jpeg",
    "name": "中島",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/human/hr10.jpg",
    "name": "パトリック",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/human/hr09.jpg",
    "name": "茂木",
    "online": false,
    "story": false,
  },
  {
    "img": "assets/images/human/hr03.jpeg",
    "name": "浅野",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/human/hr04.jpeg",
    "name": "湯浅",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/human/hr06.jpeg",
    "name": "木本",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/human/hr07.jpeg",
    "name": "Campbell",
    "online": false,
    "story": false,
  },
  {
    "img": "assets/images/human/hr08.jpg",
    "name": "Maya",
    "online": false,
    "story": false,
  },
];

// users message list
List userMessages = [
  {
    "id": 1,
    "name": "TODO株式会社　堀田亜弥奈",
    "img": "assets/images/human/hr01.jpeg",
    "online": true,
    "story": false,
    "message": "こんにちは！採用担当の堀田...",
    "created_at": "1:00 pm"
  },
  {
    "name": "日本YMCA株式会社　中島志穂",
    "img": "assets/images/human/hr02.jpeg",
    "online": true,
    "story": false,
    "message": "はじめまして！採用担当の中...",
    "created_at": "12:00 am"
  },
  {
    "id": 3,
    "name": "株式会社W&B　パトリック・マディソン",
    "img": "assets/images/human/hr10.jpg",
    "online": true,
    "story": false,
    "message": "濱口様　初めまして．株式会社...",
    "created_at": "3:30 pm"
  },
  {
    "id": 4,
    "name": "DDD株式会社　茂木裕司",
    "img": "assets/images/human/hr09.jpg",
    "online": false,
    "story": false,
    "message": "濱口泰成様　こんにちは！××株...",
    "created_at": "9:00 am"
  },
  {
    "id": 5,
    "name": "Mecha Nemu株式会社　浅野ゆい",
    "img": "assets/images/human/hr03.jpeg",
    "online": true,
    "story": false,
    "message": "はじめまして！採用担当の...",
    "created_at": "11:25 am"
  },
  {
    "id": 6,
    "name": "サポーターズ株式会社　上野美菜子",
    "img": "assets/images/human/hr05.jpg",
    "online": false,
    "story": false,
    "message": "こんにちは！採用担当の上野...",
    "created_at": "10:00 am"
  },
];

/*
// users story list
const List chats_json = [
  {
    "img": "assets/images/girls/img_1.jpeg",
    "name": "Ayo",
    "online": true,
    "story": true,
  },
  {
    "img": "assets/images/girls/img_2.jpeg",
    "name": "Rondeau",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/girls/img_3.jpeg",
    "name": "Valerie",
    "online": true,
    "story": true,
  },
  {
    "img": "assets/images/girls/img_4.jpeg",
    "name": "Mary",
    "online": false,
    "story": false,
  },
  {
    "img": "assets/images/girls/img_5.jpeg",
    "name": "Angie",
    "online": true,
    "story": true,
  },
  {
    "img": "assets/images/girls/img_6.jpeg",
    "name": "Anne",
    "online": false,
    "story": true,
  },
  {
    "img": "assets/images/girls/img_7.jpeg",
    "name": "Fineas",
    "online": true,
    "story": false,
  },
  {
    "img": "assets/images/girls/img_8.jpeg",
    "name": "Atikh",
    "online": true,
    "story": true,
  },
  {
    "img": "assets/images/girls/img_9.jpeg",
    "name": "Campbell",
    "online": false,
    "story": true,
  },
  {
    "img": "assets/images/girls/img_10.jpeg",
    "name": "Maya",
    "online": false,
    "story": true,
  },
];

// users message list
List userMessages = [
  {
    "id": 1,
    "name": "Ayo",
    "img": "assets/images/girls/img_1.jpeg",
    "online": true,
    "story": true,
    "message": "How are you doing?",
    "created_at": "1:00 pm"
  },
  {
    "name": "Rondeau",
    "img": "assets/images/girls/img_2.jpeg",
    "online": true,
    "story": false,
    "message": "Long time no see!!",
    "created_at": "12:00 am"
  },
  {
    "id": 3,
    "name": "Valerie",
    "img": "assets/images/girls/img_3.jpeg",
    "online": true,
    "story": true,
    "message": "Glad to know you in person!",
    "created_at": "3:30 pm"
  },
  {
    "id": 4,
    "name": "Anne",
    "img": "assets/images/girls/img_4.jpeg",
    "online": false,
    "story": false,
    "message": "I'm doing fine and how about you?",
    "created_at": "9:00 am"
  },
  {
    "id": 5,
    "name": "Fineas",
    "img": "assets/images/girls/img_5.jpeg",
    "online": true,
    "story": false,
    "message": "What is your real name?",
    "created_at": "11:25 am"
  },
  {
    "id": 6,
    "name": "Maya",
    "img": "assets/images/girls/img_6.jpeg",
    "online": false,
    "story": true,
    "message": "I'm happy to be your friend",
    "created_at": "10:00 am"
  },
];
*/