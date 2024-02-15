import 'package:netflix_clone/utils/image_constant.dart';

class DataBase {
  static List<Map<String, String>> usernameImages = [
    {'image': ImageContants.userkid, 'name': 'kid'},
    {'image': ImageContants.userone, 'name': 'Amal'},
    {'image': ImageContants.usertwo, 'name': 'Home'},
    {'image': ImageContants.userthree, 'name': 'Varun'}
  ];
//movie Posters
  static List<String> cirMovie = [
    'https://i.pinimg.com/474x/6a/e0/75/6ae07585d85dd08be9267a0229d1e749.jpg',
    'https://i.pinimg.com/474x/f9/f4/0e/f9f40eda4f4571a5a4d4a7e0db5701cf.jpg',
    'https://i.pinimg.com/474x/2b/14/da/2b14da6668dcc8e6456ab0ce9bcf1a5d.jpg',
    'https://i.pinimg.com/474x/02/12/b4/0212b4a89dc44f6cf134af4a4d13f156.jpg',
    'https://i.pinimg.com/474x/8c/e3/5f/8ce35f08a33293522c4d60cbc5e642be.jpg',
  ];
  static List<String> popMovie = [
    'https://i.pinimg.com/474x/23/ff/07/23ff07b3be01046c20fdced300040d9b.jpg',
    'https://i.pinimg.com/474x/8c/d9/f2/8cd9f2bdece7ada794937fd9cd960c6a.jpg',
    'https://i.pinimg.com/474x/cf/c8/99/cfc899bbb210026bcb64c32ce80dd9ac.jpg',
    'https://i.pinimg.com/474x/1d/fa/6c/1dfa6ce2aca118aeddd66249d425c575.jpg',
    'https://i.pinimg.com/474x/5e/4b/ea/5e4beaa17a95280f5cfbb0963632b81b.jpg',
  ];
  static List<String> contMovie = [
    'https://i.pinimg.com/474x/cd/50/48/cd5048cabd2fc15b0241399203fd6d78.jpg',
    'https://i.pinimg.com/474x/e8/5a/31/e85a31925858acec5fc35708433501e5.jpg',
    'https://i.pinimg.com/474x/e1/75/bf/e175bf3460f7f28db9e47e87a92b9e59.jpg',
    'https://i.pinimg.com/474x/61/a8/aa/61a8aa2ab46181bf5de774d4246b7229.jpg',
    'https://i.pinimg.com/474x/10/17/d6/1017d65e8ce5f87675b63e8667053e98.jpg',
  ];

  static List<String> searchMovies = [
    'https://i.pinimg.com/474x/2f/b8/79/2fb8792822799e0958f003ae1eb69e6a.jpg',
    'https://i.pinimg.com/236x/ee/bc/84/eebc840d4c3a1696c68890877e22b93b.jpg',
    'https://i.pinimg.com/236x/b7/c4/8d/b7c48d310f32b1bfaa2f8681aaa64e25.jpg',
    'https://i.pinimg.com/236x/aa/eb/e4/aaebe4e4ab93d32a7c1104f452637e17.jpg',
    'https://i.pinimg.com/236x/b9/7c/6d/b97c6d9d03de8fa720f3e2b5f5dfee4c.jpg',
    'https://i.pinimg.com/236x/da/46/96/da46964153839e23ed76248175b40c38.jpg',
    'https://i.pinimg.com/236x/ea/64/7e/ea647ee86332d3f8ed09fe906fcc6565.jpg',
  ];

  static List<Map<String, String>> searchMovie = [
    {
      'image':
          'https://i.pinimg.com/474x/2f/b8/79/2fb8792822799e0958f003ae1eb69e6a.jpg',
      'movie': 'dora'
    },
    {
      'image':
          'https://i.pinimg.com/236x/ee/bc/84/eebc840d4c3a1696c68890877e22b93b.jpg',
      'movie': '71'
    },
    {
      'image':
          'https://i.pinimg.com/236x/b7/c4/8d/b7c48d310f32b1bfaa2f8681aaa64e25.jpg',
      'movie': 'Jaws'
    },
    {
      'image':
          'https://i.pinimg.com/236x/aa/eb/e4/aaebe4e4ab93d32a7c1104f452637e17.jpg',
      'movie': 'Avengers'
    },
    {
      'image':
          'https://i.pinimg.com/236x/b9/7c/6d/b97c6d9d03de8fa720f3e2b5f5dfee4c.jpg',
      'movie': 'Landscape In Mist'
    },
    {
      'image':
          'https://i.pinimg.com/236x/46/64/ed/4664edc82d20d5c9fdb60a2bfc3dbdda.jpg',
      'movie': 'FightClub'
    },
    {
      'image':
          'https://i.pinimg.com/236x/ea/64/7e/ea647ee86332d3f8ed09fe906fcc6565.jpg',
      'movie': 'Pulp Fiction'
    },
  ];

  static List<Map<String, String>> notifi = [
    {
      'image':
          'https://i.pinimg.com/474x/2f/b8/79/2fb8792822799e0958f003ae1eb69e6a.jpg',
      'movie': 'dora',
      "date": '25 feb'
    },
    {
      'image':
          'https://i.pinimg.com/236x/ee/bc/84/eebc840d4c3a1696c68890877e22b93b.jpg',
      'movie': '71',
      "date": '25 feb'
    },
  ];

  static List<Map<String, String>> notification = [
    {
      'image':
          'https://i.pinimg.com/236x/ee/bc/84/eebc840d4c3a1696c68890877e22b93b.jpg',
      'movie': '71',
      "season": 'Season 1&2',
      "info":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
      "thub1": 'Crime',
      "thub2": 'Romance',
      "thub3": 'Thriller',
    },
    {
      'image':
          'https://i.pinimg.com/236x/b7/c4/8d/b7c48d310f32b1bfaa2f8681aaa64e25.jpg',
      'movie': 'Jaws',
      "season": 'Season 2',
      "info":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
      "thub1": 'Crime',
      "thub2": 'Romance',
      "thub3": 'Thriller',
    },
    {
      'image':
          'https://i.pinimg.com/236x/aa/eb/e4/aaebe4e4ab93d32a7c1104f452637e17.jpg',
      'movie': 'Avengers',
      "season": 'Season 1',
      "info":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
      "thub1": 'Crime',
      "thub2": 'Romance',
      "thub3": 'Thriller',
    },
    {
      'image':
          'https://i.pinimg.com/236x/b9/7c/6d/b97c6d9d03de8fa720f3e2b5f5dfee4c.jpg',
      'movie': 'Landscape In Mist',
      "season": 'Season 1-4',
      "info":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
      "thub1": 'Crime',
      "thub2": 'Romance',
      "thub3": 'Thriller',
    },
    {
      'image':
          'https://i.pinimg.com/236x/ea/64/7e/ea647ee86332d3f8ed09fe906fcc6565.jpg',
      'movie': 'Pulp Fiction',
      "season": 'Season 2',
      "info":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
      "thub1": 'Crime',
      "thub2": 'Romance',
      "thub3": 'Thriller',
    },
    {
      'image':
          'https://i.pinimg.com/474x/2f/b8/79/2fb8792822799e0958f003ae1eb69e6a.jpg',
      'movie': 'dora',
      "season": 'Season 1',
      "info":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
      "thub1": 'Crime',
      "thub2": 'Romance',
      "thub3": 'Thriller',
    },
  ];
}
