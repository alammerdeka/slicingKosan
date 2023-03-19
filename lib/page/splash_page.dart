part of 'pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
            alignment: Alignment.bottomCenter,
                child: Image.asset('assets/splash_image.png')),

            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage('assets/logo.png'))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: purpleColor
                    ),
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                      },
                      child: Text('Explore Now',style: whiteTextStyle.copyWith(fontWeight: FontWeight.normal, fontSize: 18),),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
