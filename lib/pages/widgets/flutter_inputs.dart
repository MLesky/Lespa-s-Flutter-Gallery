import 'package:flutter/material.dart';

class FlutterInputFields extends StatefulWidget {
  const FlutterInputFields({Key? key}) : super(key: key);

  @override
  State<FlutterInputFields> createState() => _FlutterInputFieldsState();
}

class _FlutterInputFieldsState extends State<FlutterInputFields> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController emailController,
      usernameController,
      passwordController;

  bool isRequired = false;
  bool showPassword = false;
  String username = '';
  String email = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Username:\t$username'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Email:\t$email'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Password:\t$password'),
                  ),
                ],
              ),
            ),
          ],
        )),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(children: [
                Form(
                  key: _formKey,
                  child: buildSection(children: [
                    TextFormField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      decoration: buildInputDecoration('Username').copyWith(
                        hintText: 'Enter Username',
                      ),
                      validator: (value) {
                        return value!.trim().isEmpty
                            ? 'Please enter username'
                            : null;
                      },
                      onSaved: (value) =>
                          setState(() => username = usernameController.text),
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: buildInputDecoration('Email').copyWith(
                        hintText: 'Enter Email',
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter email';
                        } else if (!RegExp(
                                r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$')
                            .hasMatch(value!.trim())) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                      onSaved: (value) =>
                          setState(() => email = emailController.text),
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: showPassword,
                      decoration: buildInputDecoration('Password').copyWith(
                        hintText: 'Enter Password',
                        suffix: InkWell(
                          onTap: () =>
                              setState(() => showPassword = !showPassword),
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter password';
                        } else if (value!.trim().length < 8) {
                          return 'Password must be 8 or more characters';
                        }
                        return null;
                      },
                      onSaved: (value) =>
                          setState(() => password = passwordController.text),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }
                            },
                            child: const Text('Submit')),
                      ],
                    ),
                  ]),
                ),
                buildSection(title: 'Types', children: [
                  TextFormField(
                    keyboardType: TextInputType.none,
                    autofocus: true,
                    decoration: buildInputDecoration('None'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    autofocus: true,
                    decoration: buildInputDecoration('Name'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    autofocus: true,
                    decoration: buildInputDecoration('Text'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: buildInputDecoration('Number'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    autofocus: true,
                    decoration: buildInputDecoration('Phone'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    autofocus: true,
                    decoration: buildInputDecoration('Street Address'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    autofocus: true,
                    decoration: buildInputDecoration('Multiline'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    autofocus: true,
                    decoration: buildInputDecoration('DateTime'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.url,
                    autofocus: true,
                    decoration: buildInputDecoration('URL'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    decoration: buildInputDecoration('Email Address'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    autofocus: true,
                    decoration: buildInputDecoration('Visible Password'),
                  ),
                ]),
                buildSection(title: 'Text', children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration('Text'),
                  ),
                  // const Divider(height: 15, thickness: 4, color: Colors.green,),
                  TextFormField(
                    initialValue: 'Lespa',
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration('Text with initial value'),
                  ),
                  // const Divider(height: 15, thickness: 4, color: Colors.green,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    decoration: buildInputDecoration('Word Capitalization'),
                  ),
                  // const Divider(height: 15, thickness: 4, color: Colors.green,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: buildInputDecoration('Sentence Capitalization'),
                  ),
                  // const Divider(height: 15, thickness: 4, color: Colors.green,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textDirection: TextDirection.rtl,
                    decoration: buildInputDecoration('Text Direction'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    autofocus: true,
                    decoration: buildInputDecoration('Auto Focus'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    readOnly: true,
                    decoration: buildInputDecoration('Read Only'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    enabled: false,
                    decoration: buildInputDecoration('Enabled (false)'),
                  ),
                  // const Divider(height: 15, thickness: 4, color: Colors.green,),
                ]),
                buildSection(title: 'Text Align', children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: buildInputDecoration('Start'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    decoration: buildInputDecoration('Center'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.end,
                    decoration: buildInputDecoration('End'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.justify,
                    decoration: buildInputDecoration('Justify'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.left,
                    decoration: buildInputDecoration('Left'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.right,
                    decoration: buildInputDecoration('Right'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: buildInputDecoration('Vertical Top'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: buildInputDecoration('Vertical Center'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: buildInputDecoration('Vertical Bottom'),
                  ),
                ]),
                buildSection(title: 'Input Actions', children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.none,
                    decoration: buildInputDecoration('None'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: buildInputDecoration('Done'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.join,
                    decoration: buildInputDecoration('Join'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: buildInputDecoration('Next'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.continueAction,
                    decoration: buildInputDecoration('Continue Action'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.emergencyCall,
                    decoration: buildInputDecoration('Emergency Call'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.go,
                    decoration: buildInputDecoration('Go'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.newline,
                    decoration: buildInputDecoration('NewLine'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.previous,
                    decoration: buildInputDecoration('Previous'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.route,
                    decoration: buildInputDecoration('Route'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    decoration: buildInputDecoration('Search'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.unspecified,
                    decoration: buildInputDecoration('Unspecified'),
                  ),
                ]),
                buildSection(title: 'Decoration', children: [
                  TextFormField(
                    decoration: buildInputDecoration('Icon').copyWith(
                      icon: const Icon(Icons.person),
                    ),
                  ),
                  TextFormField(
                    decoration: buildInputDecoration('Prefix Icon').copyWith(
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  TextFormField(
                    decoration: buildInputDecoration('Suffix Icon').copyWith(
                      suffixIcon: const Icon(Icons.person),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: showPassword,
                    obscuringCharacter: '*',
                    decoration: buildInputDecoration('Icon').copyWith(
                      suffix: IconButton(
                        onPressed: () =>
                            setState(() => showPassword = !showPassword),
                        icon: Icon(showPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                        //
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: buildInputDecoration('Label Text').copyWith(
                      hintText: 'Hint Text',
                      helperText: 'Helper Text',
                      errorText: 'Error Text',
                      prefixText: 'Prefix Text ',
                      suffixText: 'Suffix Text',
                      counterText: 'Counter Text',
                    ),
                  ),
                  TextFormField(
                    decoration: buildInputDecoration('No Border').copyWith(
                      border: InputBorder.none,
                    ),
                  ),
                  TextFormField(
                    decoration:
                        buildInputDecoration('Outlined Border').copyWith(
                            border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignCenter),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    )),
                  ),
                ]),
                buildSection(title: 'Multiline', children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.unspecified,
                    decoration: buildInputDecoration('Minimum lines (3)'),
                    minLines: 3,
                    maxLines: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.unspecified,
                    decoration: buildInputDecoration('Maximum lines (3)'),
                    maxLines: 3,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.unspecified,
                    decoration: buildInputDecoration('Maximum length (20)'),
                    maxLength: 20,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 300,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.unspecified,
                      decoration: buildInputDecoration('Expands'),
                      expands: true,
                      minLines: null,
                      maxLines: null,
                    ),
                  ),
                ]),
                buildSection(title: 'Pickers', children: [
                  DatePickerDialog(
                    initialDate: DateTime.now(),
                    firstDate:
                        DateTime.now().subtract(const Duration(days: 365 * 20)),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
                    fieldLabelText: 'Date Picker',
                    fieldHintText: 'Pick a date',
                  ),
                ]),
              ])),
        ),
      ],
    );
  }

  InputDecoration buildInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      hintText: 'Enter $label',
      helperText: isRequired ? 'required' : null,
    );
  }
}

Widget buildSection({String? title, required List<Widget> children}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
              child: Column(
                children: children,
              ),
            ),
            Text(
              title ?? '',
              textScaleFactor: 1.3,
            ),
          ],
        ),
      ),
    ),
  );
}