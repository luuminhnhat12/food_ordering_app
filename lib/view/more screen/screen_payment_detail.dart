import 'package:flutter/material.dart';
import 'package:flutter_application_food_ordering/component/custom_text.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:quickalert/quickalert.dart';
class ScreenPaymentDetails extends StatefulWidget {
  const ScreenPaymentDetails({super.key});

  @override
  State<ScreenPaymentDetails> createState() => _ScreenPaymentDetailsState();
}

class _ScreenPaymentDetailsState extends State<ScreenPaymentDetails> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   String cardNumber = '4242 4242 4242 4242';
  String expiryDate = '04/24';
  String cardHolderName = 'John Smith';
  String cvvCode = '424';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios)),
                  CustomText(text:'Payment Details',color: Colors.deepOrange ,size: 20, weight: FontWeight.bold),
                  const SizedBox(width: 50,),
                ],
              ),
              const SizedBox(height: 20),
             
              CreditCardWidget(
                cardBgColor: Colors.deepPurpleAccent,
                isHolderNameVisible: true,
                cardType: CardType.visa,
                cardNumber: cardNumber, 
                expiryDate: expiryDate , 
                cardHolderName: cardHolderName , 
                cvvCode: cvvCode , 
                showBackView: true, 
                bankName: 'World Bank',
                onCreditCardWidgetChange: (CreditCardBrand brand) {}
              ),
              const SizedBox(height: 20),
              CreditCardForm(
                formKey: formKey,
                obscureCvv: true,
                obscureNumber: true,
                cardNumber: cardNumber,
                cvvCode: cvvCode,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                cardHolderName: cardHolderName,
                expiryDate: expiryDate,
                inputConfiguration: const InputConfiguration(
                  cardNumberDecoration: InputDecoration(
                    labelText: 'Number',
                    hintText: 'XXXX XXXX XXXX XXXX',
                  ),
                  expiryDateDecoration: InputDecoration(
                    labelText: 'Expired Date',
                    hintText: 'XX/XX',
                  ),
                  cvvCodeDecoration: InputDecoration(
                    labelText: 'CVV',
                    hintText: 'XXX',
                  ),
                  cardHolderDecoration: InputDecoration(
                    labelText: 'Card Holder',
                    ),
                ),
                onCreditCardModelChange:(p0) {
                  setState(() {
                    cardNumber = p0.cardNumber;
                    expiryDate = p0.expiryDate;
                    cardHolderName = p0.cardHolderName;
                    cvvCode = p0.cvvCode;
                    isCvvFocused = p0.isCvvFocused;
                  });
                },
              ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            ElevatedButton(
              onPressed: () {
              if (formKey.currentState!.validate()) {
                QuickAlert.show(context:context, text: 'Comfirm Success', type: QuickAlertType.success);
              } else {
                QuickAlert.show(context:context, text: 'Invalid', type: QuickAlertType.error);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              minimumSize: const Size(double.infinity, 50),
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: CustomText(text: 'Confirm Payment', color: Colors.white, size: 20, weight: FontWeight.bold),
            
            ),
          ],
          ),
        ),
      ),
      
    );
  }
}