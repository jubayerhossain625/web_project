

import '../../model/item_model.dart';

class HardData{
  List<Item> getIndividuals() {
    return [
      Item(name: "Scrap Collection"),
      Item(name: "Zero Waste Society"),
      Item(name: "Vehicle Scrapping"),
    ];
  }
  List<Item> getBusinesses() {
    return [
      Item(name: "Scrap Collection"),
      Item(name: "Circular Economy"),
      Item(name: "CSR Services"),
      Item(name: "EPR services"),
      Item(name: "Zero Waste"),
      Item(name: "Dismantling"),
      Item(name: "Paper Shredding"),
    ];
  }

  List<Item> getGovernments() {
    return [
      Item(name: "Material Recovery Facility"),
      Item(name: "IEC"),
    ];
  }
}