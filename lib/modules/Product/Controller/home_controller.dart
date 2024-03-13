import 'package:fashion_store/modules/Product/Model/product_model.dart';
import 'package:flutter/material.dart';

class Productcontroller extends ChangeNotifier {
  List<ProductModel> Productlist = [
    ProductModel(
        category: 'dress',
        id: 1,
        productname: 'Sportwear Set',
        price: '\$ 39.99',
        imageUrl: 'assets/prdctdetailimg.png',
        rating: 83,
        colors: ["E7C0A7", '050302', "EE6969"],
        size: ['S', 'M', 'L'],
                description:'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.'
),
    ProductModel(
        category: 'dress',
        id: 2,
        productname: 'Turtleneck Sweater',
        colors: ["E7C0A7", '050302', "EE6969"],
        price: '\$ 39.99',
        imageUrl: 'assets/homepageimg2.png',
        size: ['S', 'M', 'L'],
                description:'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.'

        ),
        
    ProductModel(
        category: 'dress',
        id: 3,
        productname: 'Turtleneck Sweater',
        colors: ["E7C0A7", '050302', "EE6969"],
        price: '\$ 39.99',
        imageUrl: 'assets/imge0.png',
        size: ['S', 'M', 'L'],
        description:
            'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.'),
    ProductModel(
        category: 'dress',
        id: 4,
        productname: 'Turtleneck Sweater',
        colors: ["E7C0A7", '050302', "EE6969"],
        price: '\$ 39.99',
        imageUrl: 'assets/homepageimg2.png',
        size: ['S', 'M', 'L'],
        description:'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.'
        ),
 
        
        
  ];

  List<ProductModel> Collectionlist = [
    ProductModel(
        category: 'collections',
        id: 1,
        productname: 'Knitted Vest Dress',
        price: '\$ 29.00',
        imageUrl: 'assets/collection1.png'),
    ProductModel(
        category: 'collections',
        id: 2,
        productname: 'Knitted Dress',
        price: '\$ 29.00',
        imageUrl: 'assets/collection2.png'),
    ProductModel(
        category: 'collections',
        id: 3,
        productname: 'Ribbed Top',
        price: '\$ 29.00',
        imageUrl: 'assets/collection3.png'),
    ProductModel(
        category: 'collections',
        id: 4,
        productname: 'Crop top',
        price: '\$ 29.00',
        imageUrl: 'assets/collection4.png')
  ];

    List<ProductModel>cartlist=[];
  onAddtocart(ProductModel product ){
if(!cartlist.contains(product)){
cartlist.add(product);

notifyListeners(); 
  }
  }





  List<ProductModel>wishlist=[];
void onwishlisted(ProductModel product){

 
if(wishlist.contains(product)){

 
  wishlist.remove(product);
     product.isWishlisted=false;
  }
   else{
    
    wishlist.add(product);
    product.isWishlisted=true;
  }
  notifyListeners(); 

  }
}

