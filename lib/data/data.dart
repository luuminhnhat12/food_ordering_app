import 'package:flutter_application_food_ordering/model/model_category.dart';
import 'package:flutter_application_food_ordering/model/model_food_item.dart';
import 'package:flutter_application_food_ordering/model/model_menu_item.dart';
import 'package:flutter_application_food_ordering/model/model_more.dart';
import 'package:flutter_application_food_ordering/model/model_notification.dart';
import 'package:flutter_application_food_ordering/model/model_menu.dart';
class Data{
  List catArr = [
    ModelCategory(name: "Offers", image: "assets/img/cat_offer.png"),
    ModelCategory(name: "Sri Lankan", image: "assets/img/cat_sri.png"),
    ModelCategory(name: "Italian", image: "assets/img/cat_3.png"),
    ModelCategory(name: "Indian", image: "assets/img/cat_4.png"),
  ];

  List popArr = [
    ModelFoodItem(image: "assets/img/res_1.png", name: "Minute by tuk tuk", rate: "4.9", rating: "124", type:"Cafa", foodType: "Western Food"),
    ModelFoodItem(image: "assets/img/res_2.png", name: "Café de Noir", rate: "4.9", rating: "124", type: "Cafa", foodType: "Western Food"),
    ModelFoodItem(image: "assets/img/res_3.png", name: "Bakes by Tella", rate: "4.9", rating: "124", type: "Cafa", foodType: "Western Food"),
  ];

  List mostPopArr = [
    ModelFoodItem(image: "assets/img/m_res_1.png", name: "Minute by tuk tuk", rate: "4.9", rating: "124", type: "Cafa", foodType: "Western Food"),
    ModelFoodItem(image: "assets/img/m_res_2.png", name: "Café de Noir", rate: "4.9", rating: "124", type: "Cafa", foodType: "Western Food"),
  ];

  List recentArr = [
    ModelFoodItem(image: "assets/img/item_1.png", name: "Mulberry Pizza by Josh", rate:"4.9", rating: "124", type:"Cafa"  , foodType: "Western Food"),
    ModelFoodItem(image: "assets/img/item_2.png", name: "Barita", rate: "4.9", rating:"124", type: "Cafa", foodType: "Western Food"),
    ModelFoodItem(image: "assets/img/item_3.png", name: "Pizza Rush Hour", rate: "4.9", rating: "124", type: "Cafa", foodType: "Western Food" )
  ];
 

  List menuArr = [
    ModelMenu(name: "Food", image: "assets/img/menu_1.png", itemsCount: "120"),
    ModelMenu(name: "Beverages", image: "assets/img/menu_2.png", itemsCount: "220"),
    ModelMenu(name: "Desserts", image: "assets/img/menu_3.png", itemsCount: "155"),
    ModelMenu(name: "Promotions", image: "assets/img/menu_4.png", itemsCount: "25"),
  ];
  List menuItemsArr =[
    ModelFoodItem(image: "assets/img/dess_1.png", name: "French Apple Pie", rate: "4.9", rating: "124", type: "Minute by tuk tuk", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_2.png", name: "Dark Chocolate Cake", rate: "4.9", rating: "124", type: "Cakes by Tella", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_3.png", name: "Street Shake", rate: "4.9", rating: "124", type: "Café Racer", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_4.png", name: "Fudgy Chewy Brownies", rate: "4.9", rating: "124", type: "Minute by tuk tuk", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_1.png", name: "French Apple Pie", rate: "4.9", rating: "124", type: "Minute by tuk tuk", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_2.png", name: "Dark Chocolate Cake", rate: "4.9", rating: "124", type: "Cakes by Tella", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_3.png", name: "Street Shake", rate: "4.9", rating: "124", type: "Café Racer", foodType: "Desserts"),
    ModelFoodItem(image: "assets/img/dess_4.png", name: "Fudgy Chewy Brownies", rate: "4.9", rating: "124", type: "Minute by tuk tuk", foodType: "Desserts"),
  ];
  
  List offerArr = [
    ModelFoodItem(image:  "assets/img/offer_1.png", name: "Café de Noires", rate:"124", rating: "124", type: "Cafa", foodType: "Western Food"),
    ModelFoodItem(image:  "assets/img/offer_2.png", name: "Isso", rate:"124", rating: "124", type: "Cafa", foodType: "Western Food"),
    ModelFoodItem(image: "assets/img/offer_3.png", name: "Cafe Beans", rate: "4.9", rating: "124", type: "Cafa", foodType: "Western Food")
  
  ];
 
  List notificationArr = [
    ModelNotification(title: "Your orders has been picked up", time: "Now"),
    ModelNotification(title: "Your order has been delivered", time: "1 h ago"),
    ModelNotification(title: "Your orders has been picked up", time: "3 h ago"),
    ModelNotification(title: "Your order has been delivered", time: "5 h ago"),
    ModelNotification(title: "Your orders has been picked up", time: "05 Jun 2023"),
    ModelNotification(title: "Your order has been delivered", time: "05 Jun 2023"),
    ModelNotification(title: "Your orders has been picked up", time: "06 Jun 2023"),
    ModelNotification(title: "Your order has been delivered", time: "06 Jun 2023"),
  ];

  List moreArr = [
    ModelMore(index: "1", name: "Payment Details", image: "assets/img/more_payment.png", base: 0),
    ModelMore(index: "2", name: "My Orders", image: "assets/img/more_my_order.png", base: 0),
    ModelMore(index: "3", name: "Notifications", image: "assets/img/more_notification.png", base: 15),
    ModelMore(index: "4", name: "Inbox", image: "assets/img/more_inbox.png", base: 0),
    ModelMore(index: "5", name: "About Us", image: "assets/img/more_info.png", base: 0),
    ModelMore(index: "6", name: "Logout", image: "assets/img/more_info.png", base: 0),
  ];
 
  
  List itemArr = [
    ModelMenuItem(name: "Beef Burger", qty: "1", price: 16.0),
    ModelMenuItem(name: "Classic Burger", qty: "1", price: 14.0),
    ModelMenuItem(name: "Cheese Chicken Burger", qty: "1", price: 17.0),
    ModelMenuItem(name: "Chicken Legs Basket", qty: "1", price: 15.0),
    ModelMenuItem(name: "French Fires Large", qty: "1", price: 6.0)
  ];
}