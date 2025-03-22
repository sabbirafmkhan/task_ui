import 'package:flutter/material.dart';

class TellUsAboutScreen extends StatefulWidget {
  const TellUsAboutScreen({super.key});

  @override
  State<TellUsAboutScreen> createState() => _TellUsAboutScreenState();
}

class _TellUsAboutScreenState extends State<TellUsAboutScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedGender = "Women";
    String selectedAge = "Age Range";
    List<String> ageRanges = ["18-24", "25-34", "35-44", "45-54", "55+"];
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),
              Text(
                "Tell Us About Yourself",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Text("Who do you shop for?",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedGender == "Men"
                                ? Colors.deepPurpleAccent
                                : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedGender = "Men";
                        });
                      },
                      child: Text("Men", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedGender == "Women"
                                ? Colors.deepPurpleAccent
                                : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedGender = "Women";
                        });
                      },
                      child: Text(
                        "Women",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                "How Old are you?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedAge == "Age Range" ? null : selectedAge,
                  hint: Text("Age Range"),
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      selectedAge = value!;
                    });
                  },
                  items:
                      ageRanges.map((age) {
                        return DropdownMenuItem(value: age, child: Text(age));
                      }).toList(),
                ),
              ),

              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Finish",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
