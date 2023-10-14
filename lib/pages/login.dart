import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    Color selectedPrimaryColor = Theme.of(context).primaryColorDark;
    Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;

    return Material(
      color: selectedPrimaryColor,
      child: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "hi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              constraints: const BoxConstraints(maxHeight: 600, maxWidth: 400),
              child: Center(
                child: SizedBox(
                  width: 300,
                  height: 400,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () => changeState(true),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      isSelected ? null : selectedPrimaryColor,
                                  backgroundColor:
                                      isSelected ? null : Colors.white,
                                  side: BorderSide(
                                    color: selectedPrimaryColor,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () => changeState(false),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor:
                                      isSelected ? selectedPrimaryColor : null,
                                  backgroundColor:
                                      isSelected ? Colors.white : null,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    side:
                                        BorderSide(color: selectedPrimaryColor),
                                  ),
                                ),
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      isSelected
                          ? login(primaryColorDark: Colors.white)
                          : register(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column login({required Color primaryColorDark}) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              label: const Text("Email"),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              label: const Text("Password"),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: null,
            child: Text(
              "Forget Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 50,
            width: 140,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                "Sign In",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget register() {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              label: const Text("Username"),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              label: const Text("Email"),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              label: const Text("Password"),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 50,
            width: 140,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void changeState(bool isSelected) {
    setState(() {
      this.isSelected = isSelected;
    });
  }
}
