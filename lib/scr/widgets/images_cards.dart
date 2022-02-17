import 'package:flutter/material.dart';
import 'package:travel_booking_app/scr/models/places.dart';
import 'package:travel_booking_app/scr/widgets/image_card.dart';

class ImagesCards extends StatefulWidget {

  @override
  _ImagesCardsState createState() => _ImagesCardsState();
}

class _ImagesCardsState extends State<ImagesCards> {
  List<Place> places = [
    Place(place: 'Chitral', images: 'Chitral.jpeg', days: 7, text: 'Nestled within a fertile valley beneath the mighty Tirich Mir - at 7,700m the highest mountain in the Hindu Kush - Chitral Town is a cosy place, inhabited by warm and welcoming people. A lively bazaar, many of the stalls and restaurants run by Afghan refugees, leads through its centre to the small airstrip at one end and the polo field.', price: 500),
    Place(place: 'Deosai National Park', images: 'DeosaiNationalPark.jpeg', days: 12, text: 'Renowned for its rich flora and fauna, the Deosai Plains lie along the alpine steppes of the Karakoram-West Tibetan Plateau. During the spring, these fertile plains are blanketed in millions of colourful wildflowers that attract a vast army of butterflies to their dazzling blooms. The highest plateau on the planet/.', price: 400),
    Place(place: 'Fairy Meadows', images: 'FairyMeadows.jpeg', days: 4, text: 'Pakistan is blessed with areas of matchless beauty and Fairy Meadows can easily be considered one of the most beautiful locations in the region and is an absolute must on the list of places to visit in Pakistan. It requires a hike of approximately three hours but the views of Nanga Parbat.', price: 1300),
    Place(place: 'Hunza', images: 'Hunza.jpeg', days: 7, text: 'The area known as Hunza lies on the ancient Silk Road to Kashgar and today the Karakoram Highway follows the same route, with Karimabad being the regions main town. This small, mountainous region was, until recently, a semi-autonomous state but is now fully unified with Pakistan.', price: 700),
    Place(place: 'Karachi', images: 'Karachi.jpeg', days: 12, text: 'Pakistan’s most populous and most cosmopolitan city, Karachi lies on the shores of the Arabian Sea. Home to two of the country’s busiest seaports, it began life as a fortified settlement in the early years of the 18th century, before going on to play a major role in British India before Partition.', price: 500),
    Place(place: 'haplu', images: 'Khaplu.jpeg', days: 4, text: 'Khaplu is a beautiful village just a few miles east of Skardu with picturesque terraced fields growing all sorts of crops. Khaplu was once a famous and wealthy kingdom and the Khaplu Palace was once the residential fort of the local ruler. Recently the Aga Khan showed interest in the palace.', price: 200),
    Place(place: 'Khunjerab Pass', images: 'KhunjerabPass.jpeg', days: 6, text: 'The highest point on the famous Karakoram Highway and the highest paved border crossing in the world, the Khunjerab Pass lies at a lofty 4,693 metres, straddling the frontier between Pakistan and the Xinjiang Autonomous Region of China. Located amongst some of the most spectacular mountains.', price: 900),
    Place(place: 'Skardu', images: 'Skardu.jpeg', days: 7, text: 'Set in a landscape of towering mountains, deep gorges, resounding waterfalls and calm, deep lakes Skardu is perched at an elevation of 2,286 m in the backdrop of the great peaks of the Karakoram mountain range. As the capital of Baltistan, it sits on the old tea and trade routes between China and the subcontinent.', price: 800),
    Place(place: 'The Shandur Pass', images: 'TheShandurPass.jpeg', days: 9, text: 'Situated between Chitral and Gilgit, in the heart of the Hindu Kush, the Shandur Pass is a spectacular mountain plateau rising to a height of almost 4,000 metres. Surrounded by snow-capped peaks, dissected by tumbling rivers teeming with trout and inhabited by grazing yaks, eagles, fox and the rare snow leopard.', price: 600),
    Place(place: 'The Kalash', images: 'TheKalash.jpeg', days: 5, text: 'Obscured by time, the routes of the Kalash are steeped in myth and legend. Descended, they maintain, from the armies of Alexander the Great, the Kalash worship a plethora of ancestral gods and hold colourful religious festivals of music and dance. Though the men now wear the standard Pakistani shalwar kameez.', price: 500),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (_, index){
          return ImageCard(
            place: places[index],
            name: places[index].place,
            days: places[index].days,
            picture: places[index].images,
            text: places[index].text,
            price: places[index].price,
          );
        },
      )
    );
  }
}
