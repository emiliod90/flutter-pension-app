import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/components/rounded_button.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/register_form_success.dart';

class RegisterFormScreen extends StatefulWidget {
  @override
  _RegisterFormScreenState createState() => _RegisterFormScreenState();
}

class _RegisterFormScreenState extends State<RegisterFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _surname;
  String _birthday;
  String _ni;

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() {
    if (validateAndSave()) {
      print("mock auth api call");
      // if API call successful
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return RegisterFormSuccessScreen();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Validate Credentials",
            style: TextStyle(color: Colors.black45),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          left: false,
          right: false,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Card(
                            color: Colors.white70,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 18,
                                          height: 1.5,
                                          color: Colors.black45),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "To register, we'll first need to check some more information about you. "
                                            "Please enter your details below.")
                                  ])),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Last name", icon: Icon(Icons.person)),
                        validator: (value) =>
                            value.isEmpty ? "Please provide last name" : null,
                        onSaved: (value) => _surname = value,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Date of Birth (dd/mm/yyyy)",
                            icon: Icon(Icons.date_range)),
                        keyboardType: TextInputType.datetime,
                        validator: (value) =>
                            value.isEmpty ? "Please provide D.O.B" : null,
                        onSaved: (value) => _birthday = value,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "National Insurance",
                            icon: Icon(Icons.account_box)),
                        validator: (value) =>
                            value.isEmpty ? "Please provide NI" : null,
                        onSaved: (value) => _ni = value,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    RoundedButton(
                      text: "Submit",
                      press: validateAndSubmit,
                      color: Colors.purple,
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
