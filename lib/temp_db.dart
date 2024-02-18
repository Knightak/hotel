final List<String> items = List.generate(100, (index) => 'item${index + 1}');
final List<Hotel> hotels = [
  Hotel(
      id: 01,
      name: 'Hostel World Capsule',
      address: 'Bur Dubai, Dubai',
      rating: 4.5,
      price: 145,
      description:
          'Located in Dubai and within 1.3 km of Grand Mosque, Hostel World Capsule Dubai 5 min Walkable from Sharaf DG Metro features a terrace, non-smoking rooms, and free WiFi throughout the property.',
      image:
          'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg'),
  Hotel(
      id: 02,
      name: 'Jumeirah Creekside Hotel',
      address: 'Garhoud, Dubai',
      rating: 4.8,
      price: 155,
      description:
          'Overlooking Dubai Creek, Jumeirah Creekside Hotel accommodations with 2 outdoor pools, 5 restaurants, gym and spa. Guests receive complimentary WiFi in all areas of the property.',
      image:
          'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg'),
  Hotel(
      id: 03,
      name: 'Dubai Marina Hostel',
      address: 'Jumeirah Beach Residence, Dubai',
      rating: 4.6,
      price: 149,
      description:
          'Set in Dubai, 700 metres from Hidden Beach, Travelers - Dubai Marina Hostel offers accommodation with an outdoor swimming pool, private parking, a shared lounge and a terrace.',
      image:
          'https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg'),
  Hotel(
      id: 04,
      name: 'Lemon Tree Hotel',
      address: 'Beach & Coast, Dubai',
      rating: 4.7,
      price: 160,
      description:
          'Located in Dubai, 1.8 km from Jumeira Public Beach, Lemon Tree Hotel, Jumeirah Dubai provides accommodation with an outdoor swimming pool, free private parking, a fitness centre and a terrace.',
      image:
          'https://images.pexels.com/photos/261204/pexels-photo-261204.jpeg'),
  Hotel(
      id: 05,
      name: 'Shangri-La Dubai',
      address: 'Trade Centre, Dubai',
      rating: 4.9,
      price: 159,
      description:
          'Centrally located along Sheikh Zayed Road, 10 minutes’ drive from Dubai Mall and Burj Khalifa, this 5-star Asian themed hotel boasts two swimming pools, an extensive health club and spa, free WiFi and more.',
      image:
          'https://images.pexels.com/photos/1167021/pexels-photo-1167021.jpeg'),
];

class Hotel {
  int id;
  String name;
  String address;
  double rating;
  double price;
  String description;
  bool favorite;
  String image;

  Hotel({
    required this.id,
    required this.name,
    required this.address,
    required this.rating,
    required this.price,
    required this.description,
    this.favorite = false,
    required this.image,
  });
}
