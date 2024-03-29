// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/core/result.dart';
import 'package:hike/providers/auth_cubit.dart';
import 'package:hike/widgets/alert.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final authCubit;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    Color selectedPrimaryColor = Theme.of(context).primaryColorDark;

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
                      const SizedBox(height: 40),
                      SizedBox(
                        width: 215,
                        height: 50,
                        child: Stack(
                          children: alignList(
                            isSelected: isSelected,
                            selectedPrimaryColor:
                                Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      isSelected ? login() : register(),
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

  Column login() {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              label: const Text("Email"),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 2.0),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) return 'pls Enter text';
              return null;
            },
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: TextFormField(
            controller: passController,
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
              onPressed: () async {
                if (!context.mounted) return;
                Result result = await authCubit.login(
                    emailController.text, passController.text);
                if (result.getResultStatus) {
                  Navigator.pushNamed(context, '/');
                } else {
                  alert(context: context, message: result.getError);
                }
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
    TextEditingController usernameController = TextEditingController();
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TextFormField(
            controller: usernameController,
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
            controller: emailController,
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
          child: TextFormField(
            controller: passController,
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
              onPressed: () async {
                if (!context.mounted) return;
                Result result = await authCubit.register(
                    usernameController.text,
                    emailController.text,
                    passController.text);
                if (result.getResultStatus) {
                  Navigator.pushReplacementNamed(context, '/');
                } else {
                  alert(context: context, message: result.getError);
                }
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

  List<Align> alignList(
      {required bool isSelected, required Color selectedPrimaryColor}) {
    Align a1 = Align(
      alignment: Alignment.centerRight,
      widthFactor: 400,
      child: ElevatedButton(
        onPressed: () {
          changeState(false);
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(120, 40),
          foregroundColor: isSelected ? selectedPrimaryColor : null,
          backgroundColor: isSelected ? Colors.white : null,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(color: selectedPrimaryColor),
          ),
        ),
        child: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
    Align a2 = Align(
      alignment: Alignment.centerLeft,
      /*widthFactor: 100,*/
      child: ElevatedButton(
        onPressed: () => changeState(true),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(120, 40),
          foregroundColor: isSelected ? null : selectedPrimaryColor,
          backgroundColor: isSelected ? null : Colors.white,
          side: BorderSide(
            color: selectedPrimaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(color: selectedPrimaryColor),
          ),
        ),
        child: const Text(
          "Sign In",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
    return isSelected ? [a1, a2] : [a2, a1];
  }

  @override
  void initState() {
    super.initState();
    authCubit = BlocProvider.of<AuthCubit>(context);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }
}
