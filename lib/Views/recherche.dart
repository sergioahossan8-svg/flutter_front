import 'package:flutter/material.dart';

class Recherche extends StatefulWidget {
  const Recherche({super.key});

  @override
  State<Recherche> createState() => _RechercheState();
}

class _RechercheState extends State<Recherche> {
  String? selectedDepartement;
  String? selectedVille;
  String? selectedQuartier;

  final List<String> departements = [
    'Paris',
    'Lyon',
    'Marseille',
    'Toulouse',
    'Nice',
  ];

  final List<String> villes = [
    'Ville 1',
    'Ville 2',
    'Ville 3',
    'Ville 4',
  ];

  final List<String> quartiers = [
    'Quartier 1',
    'Quartier 2',
    'Quartier 3',
    'Quartier 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Changer votre\ndestination',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                height: 1.2,
              ),
            ),
            SizedBox(height: 60),
            Text(
              'Département',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text('Sélectionner'),
                  value: selectedDepartement,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: departements.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDepartement = newValue;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Ville',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text('Sélectionner'),
                  value: selectedVille,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: villes.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedVille = newValue;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Quartier',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text('Sélectionner'),
                  value: selectedQuartier,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: quartiers.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedQuartier = newValue;
                    });
                  },
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    print('Département: $selectedDepartement');
                    print('Ville: $selectedVille');
                    print('Quartier: $selectedQuartier');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4ECDC4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Appliquez les changement',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
