part of 'pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    PhoneFormField();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();
  final ctrlUser = TextEditingController();
  final ctrlNumb = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlPass.dispose();
    ctrlNumb.dispose();
    ctrlUser.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Form(
            key: _loginKey,
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_box)),
                  controller: ctrlUser,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => FormValidator.validate(
                    min: 1,
                    max: 40,
                    value,
                    required: true,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email)),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Invalid Email!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                PhoneFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone_android)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: PhoneValidator.compose([
                    PhoneValidator.required(
                        errorText: "You must enter a value"),
                    PhoneValidator.validMobile(),
                  ]),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city)),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => FormValidator.validate(
                    min: 1,
                    max: 40,
                    value,
                    required: true,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_loginKey.currentState!.validate()) {
                      Fluttertoast.showToast(
                          msg: 'Booking Confirmation' +
                              '\n'
                                  '\n' +
                              'Name : ' +
                              ctrlUser.text.toString() +
                              "\n"
                                  'Email : ' +
                              ctrlEmail.text.toString() +
                              "\n"
                                  'Phone Number : ' +
                              ctrlNumb.text.toString() +
                              "\n"
                                  'City : ' +
                              ctrlCity.text.toString(),
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          fontSize: 25,
                          backgroundColor: Colors.white,
                          textColor: Colors.black);
                    } else {
                      Fluttertoast.showToast(
                          msg: 'Booking Failed!' +
                              '\n'
                                  '\n' +
                              "Please fill all form fields!",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          fontSize: 14,
                          backgroundColor: Colors.white,
                          textColor: Colors.black);
                    }
                  },
                  icon: Icon(
                    Icons.save,
                    size: 24,
                  ),
                  label: Text('Book Now'),
                ),
              ],
            )),
      ),
    );
  }
}
