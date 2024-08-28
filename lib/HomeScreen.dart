import 'package:flutter/material.dart';
import 'package:banking/DropDownMenu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Color appBarItemsColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final itemsWidth = screenWidth * 0.25;
    final paddingBetween = screenHeight * 0.1;

    String outP = "The Output";

    Widget outputWidget = Text(
      "Here's $outP",
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: appBarItemsColor,
        ),
        backgroundColor: Colors.blueAccent,
        title: Center(
            child: Text(
          "Prediction Screen",
          style: TextStyle(color: appBarItemsColor),
        )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_rounded),
            color: appBarItemsColor,
          )
        ],
      ),
      body: Form(
          child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                width: itemsWidth,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    labelText: 'Age',
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(15.0), // Set the corner radius
                    ),
                  ),
                ),
              ),
              SizedBox(width: paddingBetween),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                width: itemsWidth,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    labelText: 'Job',
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(15.0), // Set the corner radius
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: ' Has credit in default? ',
                      itemsList: ['Yes', 'No'],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
              SizedBox(
                width: paddingBetween,
              ),
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: 'Has housing loan? ',
                      itemsList: ['Yes', 'No'],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
            ],
          ),
          SizedBox(height: screenHeight * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: 'Marital Status',
                      itemsList: ['married', 'single', 'divorced', 'unknown'],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
              SizedBox(width: paddingBetween),
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: "Loan",
                      itemsList: ['yes', 'no'],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
            ],
          ),
          SizedBox(height: screenHeight * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: "Last contact month ",
                      itemsList: [
                        'January',
                        'February',
                        'March',
                        'April',
                        'May',
                        'June',
                        'July',
                        'August',
                        'September',
                        'October',
                        'November',
                        'December'
                      ],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
              SizedBox(width: paddingBetween),
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: 'Last contact day ',
                      itemsList: ['mon', 'tue', 'wed', 'thu', 'fri'],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
            ],
          ),
          SizedBox(height: screenHeight * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: "Contact ",
                      itemsList: ['telephone', 'cellular'],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
              SizedBox(width: paddingBetween),
              SizedBox(
                  width: itemsWidth,
                  child: buildDropdownButtonFormField2(
                      label: 'Education ',
                      itemsList: [
                        'basic.4y',
                        'basic.6y',
                        'basic.9y',
                        'high.school',
                        'university.degree',
                        'professional.course',
                        'unknown',
                        'illiterate'
                      ],
                      screenWidth: screenWidth,
                      screenHeight: screenHeight)),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          ElevatedButton(
            onPressed: () {
              // Add your form submission logic here
              //_submitForm();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[350],
              shadowColor: Colors.deepPurple[900],
              surfaceTintColor: Colors.blueGrey[600],
              disabledForegroundColor: Colors.red[800],
              overlayColor: Colors.indigo[900],
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              textStyle: TextStyle(
                color: Colors.amber[900],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check,
                  size: 30,
                  color: Colors.orange[900],
                ),
                SizedBox(width: 8),
                Text('Submit')
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Container(
            padding: EdgeInsets.only(
                top: screenHeight * 0.08,
                left: screenWidth * 0.192,
                right: screenWidth * 0.192,
                bottom: screenHeight * 0.06),
            width: screenWidth,
            decoration: BoxDecoration(
                color: Colors.blueGrey[600],
                borderRadius: BorderRadius.circular(180)),
            child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amber[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: outputWidget,
                )),
          )
        ]),
      )),
    );
  }
}
