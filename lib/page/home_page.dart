part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
          child: ListView(
            //NOTE : TITLE/HEADER
            children: [
              SizedBox(height: edge,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //NOTE : POPULAR CITIES
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Popular Cities',
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    GestureDetector(
                      onTap: (){

                      },
                      child: CityCard(City(
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: true,

                      )),
                    ),
                    CityCard(City(
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png'
                    )),
                    CityCard(City(
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png'
                    )),
                    CityCard(City(
                        name: 'Banten',
                        imageUrl: 'assets/city4.png'
                    ))
                  ],
                ),
              ),
              //NOTE : RECOMENDED CITIES
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Recomended Cities',
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(height: 16,),
              Column(children: [
                SpaceCard(space: Space(name: 'Sindang Sari', imageUrl: 'assets/space1.png',price: 20,city: 'Serang', country: 'Indonesia',rating: 5),),
                SpaceCard(space: Space(name: 'Sindang Sari', imageUrl: 'assets/space1.png',price: 20,city: 'Serang', country: 'Indonesia',rating: 5),),
                SpaceCard(space: Space(name: 'Sindang Sari', imageUrl: 'assets/space1.png',price: 20,city: 'Serang', country: 'Indonesia',rating: 5),),
              ],),
              SizedBox(
                height: 30,
              ),
              // NOTE: TIPS & GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: regulerTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/tips1.png',
                        updatedAt: '20 Apr',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      Tips(
                        id: 2,
                        title: 'Jakarta Fairship',
                        imageUrl: 'assets/tips2.png',
                        updatedAt: '11 Dec',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100 + edge,
              ),
            ],
          )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
