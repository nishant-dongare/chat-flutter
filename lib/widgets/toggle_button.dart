import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.redAccent,
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
                  width: 215,
                  child: Stack(
                    children: alignList(
                      isSelected: isSelected,
                      selectedPrimaryColor: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
}
