import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/logic/favourite_stores.dart';
import 'package:coupon_are_us/pages/storePage.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:flutter/material.dart';

///==============
/// use sql
/// ============
class FavouriteStores extends StatefulWidget {
  const FavouriteStores({Key? key}) : super(key: key);

  @override
  _FavouriteStoresState createState() => _FavouriteStoresState();
}

class _FavouriteStoresState extends State<FavouriteStores> {
  List<Store> favourites = [];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }else{
        return Colors.orangeAccent;
      }//end if-else
    }//end get color
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite stores'),
        backgroundColor: primaryAppBarColor,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: const Icon(Icons.search)
          )
        ],
        iconTheme: const IconThemeData(color: primaryIconThemeDataColor),
      ),
      backgroundColor: backgroundApplicationColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // todo: a block detailing permissions for notifications
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width/10,
                      backgroundColor: backgroundApplicationColor,
                      child:  Icon(Icons.person, size: MediaQuery.of(context).size.width/10,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),
                      child: Row(children: [
                        const Expanded(flex: 4,child:Text('Turn on Notifications? ' , style: TextStyle(color: textColor),)),
                        Expanded(child: Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            checkColor: Colors.blueAccent,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                          ),flex: 1,)
                      ],),
                    )
                  ],
                ),
              ),
              flex: 1,
            ),
            // the favourite stores
            Expanded(child: SizedBox(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    favourites = snapshot.data as List<Store>;
                    return ListView.builder(
                      itemBuilder: (context , index) {
                        return ListTile(
                          leading: Padding(padding: EdgeInsets.zero, child: Image.network(favourites[index].networkImage),),
                          title: Text('Store name: ${favourites[index].name}', style: const TextStyle(color: textColor),),
                          subtitle: Text('Location: ${favourites[index].location}', style: const TextStyle(color: textColor),),
                          trailing: IconButton(
                              onPressed: () async{
                                //delete from database
                                String string = favourites[index].name;
                                await FavouriteStoresListing.deleteStore(favourites[index]).whenComplete(() {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('The store $string has been deleted.'))
                                  );
                                });
                              },
                              icon: const Icon(Icons.delete)
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>  ViewStore(store: favourites[index],)));
                          },
                        );
                      },
                      itemCount: favourites.length,
                    );
                  }else{
                    return const Center(child: CircularProgressIndicator(),);
                  }//end if-else
                },
                future: FavouriteStoresListing.getFavouriteStores(),
              ),
            ),flex: 3,)
          ],
        ),
      ),
    );
  }
}
