import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:ui';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PlantScreen> {
  File? selectedimages;
  String? Prediction = "Tomato Early Blight";
  String image = "";
  
   
    

  
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 21, 89, 23),
          title: const Text('Paddy Diseases'),
         
        ),
        body: selectedimages == null
            ? Stack(
              alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/image.jpeg',
                    fit: BoxFit.fill,
                    width: window.physicalSize.width,
                    height: window.physicalSize.height,
                  ),
                  
                ],
              )
            : SingleChildScrollView(
                child: ConditionalBuilder(
                  condition: Prediction != "",
                  builder: (context) => Column(children: [
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.memory(
                            base64Decode(image),
                            fit: BoxFit.contain,
                          ),
                          Text(
                            Prediction!,
                            style: const TextStyle(
                                color: Colors.green,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                                        if (Prediction == "Tomato Early Blight")
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: const EdgeInsets.all(10),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            """ 
you can control it by:
    1 - A fungicide spraying program combined with an early blight prediction system is the most effective means of controlling this disease.
    2 - Use field sanitation techniques such as crop rotation and weed control, and turn over or remove debris from previous crops to reduce disease severity
""",
                            textAlign: TextAlign.start,
                            maxLines: 20,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    else if (Prediction == "Tomato Late Blight")
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: const EdgeInsets.all(10),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            """ 
you can stop it by:
          1-Tomato varieties resistant to certain races of the late blight fungus are grown where the disease occurs regularly.
          2-Remove any nearby volunteer tomato and potato plants and nightshades.
          3-Check transplants to ensure they are free of late blight before planting.
          4-Avoid sprinkler irrigation, if possible, because it favors the development of late blight.
          5-Fungicides are generally needed only if the disease appears during a time of year when rain is likely or overhead irrigation is practiced. Mefenoxam-resistant strains of the pathogen are widespread in California and this fungicide is no longer effective.
          6-Disc tomato fields in fall to eliminate a winter reservoir for the fungus.
""",
                            maxLines: 20,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    else if (Prediction == "Tomato Leaf Mold")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
you can control it by:
         	1_Remove and destroy all affected plant parts. For plants growing under cover, increase ventilation and, if possible, the space between plants.
          2-Try to avoid wetting the leaves when watering plants, especially when watering in the evening,
          3-Copper-based fungicides can be used to control diseases on tomatoes.
""",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                    else if (Prediction == "Tomato Septoria Leaf Spot")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
Bacterial blight is caused by Xanthomonas oryzae pv. oryzae.It causes wilting of seedlings and yellowing and drying of leaves.
you can control it by:
        1. Remove diseased leaves. If caught early, the lower infected leaves can be removed and burned or destroyed. However, removing leaves above where fruit has formed will weaken the plant and expose fruit to sunscald. At the end of the season, collect all foliage from infected plants and dispose of or bury. Do not compost diseased plants.
        2. Improve air circulation around the plants. If the plants can still be handled without breaking them, stake or cage the plants to raise them off the ground and promote faster drying of the foliage.
        3. Mulch around the base of the plants. Mulching will reduce splashing soil, which may contain fungal spores associated with debris. Apply mulch after the soil has warmed.
        4. Do not use overhead watering. Overhead watering facilitates infection and spreads the disease. Use a soaker hose at the base of the plant to keep the foliage dry. Water early in the day.
        5. Control weeds. Nightshade and horsenettle are frequently hosts of Septoria leaf spot and should be eradicated around the garden site.
        6. Use crop rotation. Next year do not plant tomatoes back in the same location where diseased tomatoes grew. Wait 1–2 years before replanting tomatoes in these areas.
        7. Use fungicidal sprays. If the above measures do not control the disease, you may want to use fungicidal sprays. Fungicides will not cure infected leaves, but they will protect new leaves from becoming infected. Apply at 7 to 10 day intervals throughout the season. Apply chlorothalonil, maneb, macozeb, or a copper-based fungicide, such as Bordeaux mixture, copper hydroxide, copper sulfate, or copper oxychloride sulfate. Follow harvest restrictions listed on the pesticide label
""",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                    else if (Prediction == "Tomato Spider Mites Two Spotted Spider Mite")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
Bacterial leaf streak is caused by the bacterium Xanthomonas vasicola. The disease has been observed on field corn, seed corn, popcorn, and sweet corn.
you can control it by:
        1-If you catch the mites early enough, you can try spraying them off the stems and leaves of the plant with a garden hose. Next, the plants should be sprayed with neem oil which is a natural insecticide.
        2- If the infestation is severe, you should use a stronger treatment such as an insecticidal spray plus something like diatomaceous earth which is another natural solution.
        3-One of the best ways to get rid of spider mites is to allow beneficial insects such as beetles, caterpillars, and spiny soldier bugs to do the work for you.
""",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                    else if (Prediction == "Tomato Target Spot")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
Rice tungro disease is caused by the combination of two viruses, which are transmitted by leafhoppers. It causes leaf discoloration, stunted growth, reduced tiller numbers and		sterile or partly filled grains.
you can control it by:
        1-Remove old plant debris at the end of the growing season; otherwise, the spores will travel from debris to newly planted tomatoes in the following growing season, thus beginning the disease anew. Dispose of the debris properly and don’t place it on your compost pile unless you’re sure your compost gets hot enough to kill the spores.
        2-Rotate crops and don’t plant tomatoes in areas where other disease-prone plants have been located in the past year– primarily eggplant, peppers, potatoes or, of course – tomatoes. Rutgers University Extension recommends a three year rotation cycle to reduce soil-borne fungi.
        3-Pay careful attention to air circulation, as target spot of tomato thrives in humid conditions. Grow the plants in full sunlight. Be sure the plants aren’t crowded and that each tomato has plenty of air circulation. Cage or stake tomato plants to keep the plants above the soil.
        4-Water tomato plants in the morning so the leaves have time to dry. Water at the base of the plant or use a soaker hose or drip system to keep the leaves dry. Apply a mulch to keep the fruit from coming in direct contact with the soil. Limit mulch to 3 inches (8 cm.) or less if your plants are bothered by slugs or snails.
""",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                    else if (Prediction == "Tomato Yellow Leaf Curl Virus")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
Caterpillar bore into central shoot of paddy seedling and tiller, causes drying of the central shoot known as “dead heart”.
you can control it by:
       1-before planting Select TYLCV-resistant cultivars.Use virus- and whitefly-free cultures.Do not import tomatoes (or any potential whitefly host) from areas known to have the virus .
       2-during the growing season Sow immediately after any tomato-free period or true winter.Avoid planting new fields near old ones (especially those containing TYLCV-infected plants).Whiteflies management.Cover the plants with floating row covers of fine mesh (agrill or agripone) to protect them from whitefly infestations.Rogue diseased plants when the virus infection rate is low.Practice good weed management in and around fields to the extent possible.
       3-after the growing season Remove and destroy old crop residues and volunteers on a regional basis.Voluntary or enforced territorial host vacancy in areas lacking a true winter season (i.e. temperatures low enough to prevent cropping and whitefly survival) may be a useful management tool. The crops to be included in an area depend on the agroecosystem
""",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                    else if (Prediction == "Tomato mosaic Virus")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
Rice hispa is a very serious insect pest of rice, particularly in the Terai region of Nepal. The adult is a small bluish black 	beetle, measuring 5 mm in length and is recognized by numerous short spines on the body and forewings.
you can control it by:
        1-Non-chemical control It is recommended that plants showing symptoms be removed immediately, as they will act as a source of infection for other healthy tomato plants nearby After handling infected plants, wash hands and tools with hot, soapy water. As an extra precaution, sterilize tools in Virkon S disinfectant, which can be obtained from farm suppliersAvoid planting other sensitive plants in close proximityCultivars with alleged resistance to TMV include 'Cherry Wonder', 'Cumulus', 'Dombito', 'Dona', 'Estrella', 'Ida', 'Nimbus', 'Piranto', 'Shirley' and 'Sonatine'.
        2-Chemical controlThere are no chemical controls. Using insecticides to reduce aphid transmission is not practical for amateur gardeners.
        """,
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                    else if (Prediction == "Blast")
                      Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: const EdgeInsets.all(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              """ 
Blast disease, also known as rice rotten neck, is caused by the fungus Pyricularia oryzae and is the most damaging of all the 	fungal diseases in Southern Africa.
you can control it by:
        1-Incorporate or roll the rice stubble soon after 
        harvest to promote early decomposition.
        2-Use fungicides""",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),


                    const Text('')
                  ]),

                  fallback: (context) =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ));
  }
}