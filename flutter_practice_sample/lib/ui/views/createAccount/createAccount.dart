import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

const List<String> list = <String>['India', 'Pakistan', 'China', 'America'];

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return AccountPage();
  }
}

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _formKey = GlobalKey<FormState>();

  String _userName = '';
  String _mobileNumber = '';
  String _countryCode = '+1';
  String _email = '';
  String _state = '';
  String _district = '';
  String _taluk = '';
  String _city = '';
  String _address1 = '';
  String _address2 = '';
  List<String> liststate = <String>['One', 'Two', 'Three', 'Four'];
  List<String> listdistrict = <String>['One', 'Two', 'Three', 'Four'];
  List<String> listtaluk = <String>['One', 'Two', 'Three', 'Four'];

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'User Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a user name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _userName = value!;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Mobile Number'),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a mobile number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _mobileNumber = value!;
                      },
                    ),
                  ),
                  // badges.Badge(
                  //   badgeContent: Text('200'),
                  //   child: Icon(Icons.sms),
                  // ),
                  // badges.Badge(
                  //   position: badges.BadgePosition.topEnd(top: -10, end: -12),
                  //   showBadge: true,
                  //   ignorePointer: false,
                  //   onTap: () {},
                  //   badgeContent:
                  //       Icon(Icons.check, color: Colors.white, size: 10),
                  //   badgeAnimation: badges.BadgeAnimation.rotation(
                  //     animationDuration: Duration(seconds: 1),
                  //     colorChangeAnimationDuration: Duration(seconds: 1),
                  //     loopAnimation: false,
                  //     curve: Curves.fastOutSlowIn,
                  //     colorChangeAnimationCurve: Curves.easeInCubic,
                  //   ),
                  //   badgeStyle: badges.BadgeStyle(
                  //     shape: badges.BadgeShape.square,
                  //     badgeColor: Colors.blue,
                  //     padding: EdgeInsets.all(5),
                  //     borderRadius: BorderRadius.circular(4),
                  //     borderSide: BorderSide(color: Colors.white, width: 2),
                  //     borderGradient: badges.BadgeGradient.linear(
                  //         colors: [Colors.red, Colors.black]),
                  //     badgeGradient: badges.BadgeGradient.linear(
                  //       colors: [Colors.blue, Colors.yellow],
                  //       begin: Alignment.topCenter,
                  //       end: Alignment.bottomCenter,
                  //     ),
                  //     elevation: 0,
                  //   ),
                  //   child: Text('Badge'),
                  // ),
                  // const SizedBox(width: 8),
                  Flexible(
                    flex: 1,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Country Code'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a country code';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _countryCode = value!;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email ID'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              const SizedBox(height: 16),

              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Color.fromARGB(255, 77, 77, 78)),
                underline: Container(
                  height: 2,
                  color: const Color.fromARGB(255, 77, 77, 79),
                ),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              const SizedBox(height: 16),
              DropdownButton(
                value: 'Select State',
                isDense: true,
                onChanged: (value) {
                  setState(() {
                    _state = value!;
                  });
                },
                items: ['Select State', 'Tamilnadu', 'Andrapradesh', 'kerala']
                    .map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              DropdownButton(
                value: 'Select District',
                isDense: true,
                onChanged: (value) {
                  setState(() {
                    _state = value!;
                  });
                },
                items: ['Select District', 'Erode', 'Coimbatore', 'pollachi']
                    .map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              DropdownButton(
                value: 'Select taluk',
                isDense: true,
                onChanged: (value) {
                  setState(() {
                    _state = value!;
                  });
                },
                items: [
                  'Select taluk',
                  'thudiyalur',
                  'kovilpalayam',
                  'periyanaikkanpalayam'
                ].map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              // Step 1.
// Step 2.
              // DropdownButton(
              //   value: dropdownValue,
              //   items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
              //       .map<DropdownMenuItem<String>>((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(
              //         value,
              //         style: TextStyle(fontSize: 30),
              //       ),
              //     );
              //   }).toList(),
              //   onChanged: (String? newValue) {
              //     setState(() {
              //       dropdownValue = newValue!;
              //     });
              //   },
              // ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address 1'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address line 1';
                  }
                  return null;
                },
                onSaved: (value) {
                  _address1 = value!;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address 2'),
                onSaved: (value) {
                  _address2 = value!;
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Perform account creation or processing here
                        print('Account created with the following details:');
                        print('User Name: $_userName');
                        print('Mobile Number: $_countryCode $_mobileNumber');
                        print('Email: $_email');
                        print('State: $_state');
                        print('District: $_district');
                        print('Taluk: $_taluk');
                        print('City: $_city');
                        print('Address 1: $_address1');
                        print('Address 2: $_address2');
                      }
                    },
                    child: const Text('Create Account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
