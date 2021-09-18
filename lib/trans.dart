class TransactionModel {
  String name;
  String photo;
  String time;
  int rating;
  String rvcount;
  String amount;

  TransactionModel(
      this.name, this.photo, this.time, this.rating, this.rvcount, this.amount);
}

var transaction = [
  TransactionModel("Lifestyle Pro Excercise", "asset/svg/boxing-gloves.svg",
      "2 hours 45 minutes", 4, "864 Review", "\$20"),
  TransactionModel("Healthy Food Tips \$ Tricks", "asset/svg/apple.svg",
      "1 hours 45 minutes", 5, "364 Review", "\$10"),
  TransactionModel("Daily Various Sports", "asset/svg/basketball.svg",
      "3 hours 45 minutes", 3, "324 Review", "\$25")
];