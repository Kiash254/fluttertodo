class Category {
  late String name;
  late String Descriptiom;
  late String store_number;
  late String Ordered_by;
  late String phone_number;
  Category(
      {required this.name,
      required this.Descriptiom,
      required this.Ordered_by,
      required this.phone_number,
      required this.store_number});
}

List<Category> cat = [

  Category(name: 'Mabgo', Descriptiom:'sweetmango', Ordered_by:'Snave', 
  phone_number: '0714128629', store_number:'34')
];
