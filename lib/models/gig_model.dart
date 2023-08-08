class Gig {
  String gigName;
  String gigCategory;
  String gigDuration;
  String clientName;
  double gigAmount;
  String paymentType;
  double startingAmount;
  String gigType;

  Gig({
    required this.gigName,
    required this.gigCategory,
    required this.gigDuration,
    required this.clientName,
    required this.gigAmount,
    required this.paymentType,
    required this.startingAmount,
    required this.gigType,
  });

  factory Gig.fromJson(Map<String, dynamic> json) {
    return Gig(
      gigName: json['gigName'],
      gigCategory: json['gigCategory'],
      gigDuration: json['gigDuration'],
      clientName: json['clientName'],
      gigAmount: json['gigAmount'].toDouble(),
      paymentType: json['paymentType'],
      startingAmount: json['startingAmount'].toDouble(),
      gigType: json['gigType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gigName': gigName,
      'gigCategory': gigCategory,
      'gigDuration': gigDuration,
      'clientName': clientName,
      'gigAmount': gigAmount,
      'paymentType': paymentType,
      'startingAmount': startingAmount,
      'gigType': gigType,
    };
  }
}