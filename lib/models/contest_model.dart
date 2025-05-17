
class ContestModel {
  final String title;
  final String price;
  final String timeLeft;
  final String image;
  final List<ContestPrice> contestPriceList;
  final List<Stock> stocks;

  ContestModel({
    required this.title,
    required this.price,
    required this.timeLeft,
    required this.image,
    required this.contestPriceList,
    required this.stocks,
  });

  factory ContestModel.fromJson(Map<String, dynamic> json) {
    return ContestModel(
      title: json['title'] as String,
      price: json['price'] as String,
      timeLeft: json['timeLeft'] as String,
      image: json['image'] as String,
      contestPriceList: (json['contestPriceList'] as List)
          .map((e) => ContestPrice.fromJson(e))
          .toList(),
      stocks: (json['stocks'] as List)
          .map((e) => Stock.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'timeLeft': timeLeft,
      'image': image,
      'contestPriceList': contestPriceList.map((e) => e.toJson()).toList(),
      'stocks': stocks.map((e) => e.toJson()).toList(),
    };
  }
}

class ContestPrice {
  final int contestPrice;
  final String spots;
  final String prizePool;

  ContestPrice({
    required this.contestPrice,
    required this.spots,
    required this.prizePool,
  });

  factory ContestPrice.fromJson(Map<String, dynamic> json) {
    return ContestPrice(
      contestPrice: json['contestPrice'] as int,
      spots: json['spots'] as String,
      prizePool: json['prizePool'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'contestPrice': contestPrice,
      'spots': spots,
      'prizePool': prizePool,
    };
  }
}

class Stock {
  final String stockName;
  final int id;
  final String stockPrice;
  final String percentage;
  final String image;

  Stock({
    required this.stockName,
    required this.id,
    required this.stockPrice,
    required this.percentage,
    required this.image,
  });

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      stockName: json['stockName'] as String,
      id: json['id'] as int,
      stockPrice: json['stockPrice'] as String,
      percentage: json['percentage'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stockName': stockName,
      'id': id,
      'stockPrice': stockPrice,
      'percentage': percentage,
      'image': image,
    };
  }
} 