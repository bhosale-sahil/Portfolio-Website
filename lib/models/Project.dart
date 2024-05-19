class Project {
  final String? title, description, url;

  Project({
    this.title,
    this.description,
    this.url,
  });
}

List<Project> demo_projects = [
  Project(
      title: "KOS-Professionals Connect",
      description:
          "A Flutter Application which lets Professionals and Entrepreneurs connect to each other. Ability to Post,Discover,Chat,etc between people.Use of Firebase as BaaS for Login,Signup,Authentication,Store User Data, Realtime Chat etc.",
      url: "https://github.com/kimjong69/KOS_APP"),
  Project(
      title: "Flash Chat",
      description:
          "A multi user chat application made using Flutter and Firebase. It lets users Signin,Login,Chat as well as view profiles in the application.Demonstrates excellent Flutter and Firebase skills with neat and well written code.",
      url: "https://github.com/kimjong69/Flash-Chat"),
  Project(
      title: "Clima Weather",
      description:
          "A Weather app which displays the accurate weather conditions of a area. OpenWeather API is used to get the accurate weather information about a particular area. ",
      url: "https://github.com/kimjong69/Weather-App"),
  Project(
      title: "BitCoin-Ticker",
      description:
          "This app demonstates the use of API to get live updates about the rate of bitcoin and also convert it to various international currencies.It demonstates excellent and neat code writing skills",
      url: "https://github.com/kimjong69/Bitcoin-Ticker"),
  Project(
      title: "Portfolio Website in Flutter",
      description:
          "A personal portfolio website built completely in flutter. Responsive and animated website which demonstates flutter web skills as well as grasp on animations using flutter. Deployed using Firebase",
      url: "https://github.com/kimjong69/Bitcoin-Ticker"),
];
