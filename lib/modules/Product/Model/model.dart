class HomeModel{
     int id;
     String title;
     String icon;

 HomeModel( {required this.id,
 required this.title,
 required this.icon});
  

}

List<HomeModel> drawer=[
  HomeModel(id: 1, title: 'HomePage', icon: 'assets/Home.png'),
  HomeModel(id: 2, title: 'Discover', icon: 'assets/search.png'),
  HomeModel(id: 3, title: 'My Order', icon: 'assets/carticon.png'),
  HomeModel(id: 4, title: 'My Profile', icon: 'assets/Profileicon.png'),
  HomeModel(id: 5, title: 'Settings', icon: 'assets/settings.png'),
  HomeModel(id: 6, title: 'Support', icon: 'assets/policyicon.png'),
  HomeModel(id: 7, title: 'About Us', icon: 'assets/support.png'),
 

];


