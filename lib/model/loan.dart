class Loan {
  List<ActiveOffers>? activeOffers;
  int? amount;
  Null? carCondition;
  int? clientId;
  String? createdAt;
  String? id;
  int? maturity;
  List<PassiveOffers>? passiveOffers;
  List<SponsoredOffers>? sponsoredOffers;
  String? type;

  Loan(
      {this.activeOffers,
      this.amount,
      this.carCondition,
      this.clientId,
      this.createdAt,
      this.id,
      this.maturity,
      this.passiveOffers,
      this.sponsoredOffers,
      this.type});

  Loan.fromJson(Map<String, dynamic> json) {
    if (json['active_offers'] != null) {
      activeOffers = <ActiveOffers>[];
      json['active_offers'].forEach((v) {
        activeOffers!.add(new ActiveOffers.fromJson(v));
      });
    }
    amount = json['amount'];
    carCondition = json['carCondition'];
    clientId = json['client_id'];
    createdAt = json['created_at'];
    id = json['id'];
    maturity = json['maturity'];
    if (json['passive_offers'] != null) {
      passiveOffers = <PassiveOffers>[];
      json['passive_offers'].forEach((v) {
        passiveOffers!.add(new PassiveOffers.fromJson(v));
      });
    }
    if (json['sponsored_offers'] != null) {
      sponsoredOffers = <SponsoredOffers>[];
      json['sponsored_offers'].forEach((v) {
        sponsoredOffers!.add(new SponsoredOffers.fromJson(v));
      });
    }
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.activeOffers != null) {
      data['active_offers'] =
          this.activeOffers!.map((v) => v.toJson()).toList();
    }
    data['amount'] = this.amount;
    data['carCondition'] = this.carCondition;
    data['client_id'] = this.clientId;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['maturity'] = this.maturity;
    if (this.passiveOffers != null) {
      data['passive_offers'] =
          this.passiveOffers!.map((v) => v.toJson()).toList();
    }
    if (this.sponsoredOffers != null) {
      data['sponsored_offers'] =
          this.sponsoredOffers!.map((v) => v.toJson()).toList();
    }
    data['type'] = this.type;
    return data;
  }

  @override
  String toString() {
    return 'Loan{activeOffers: $activeOffers, amount: $amount, carCondition: $carCondition, clientId: $clientId, createdAt: $createdAt, id: $id, maturity: $maturity, passiveOffers: $passiveOffers, sponsoredOffers: $sponsoredOffers, type: $type}';
  }
}

class ActiveOffers {
  double? annualRate;
  String? bank;
  int? bankId;
  String? bankType;
  String? detailNote;
  double? expertise;
  String? footnote;
  double? hypothecFee;
  double? interestRate;
  String? logoUrl;
  String? note;
  String? productName;
  double? sponsoredRate;
  String? url;

  ActiveOffers(
      {this.annualRate,
      this.bank,
      this.bankId,
      this.bankType,
      this.detailNote,
      this.expertise,
      this.footnote,
      this.hypothecFee,
      this.interestRate,
      this.logoUrl,
      this.note,
      this.productName,
      this.sponsoredRate,
      this.url});

  @override
  String toString() {
    return 'ActiveOffers{annualRate: $annualRate, bank: $bank, bankId: $bankId, bankType: $bankType, detailNote: $detailNote, expertise: $expertise, footnote: $footnote, hypothecFee: $hypothecFee, interestRate: $interestRate, logoUrl: $logoUrl, note: $note, productName: $productName, sponsoredRate: $sponsoredRate, url: $url}';
  }

  ActiveOffers.fromJson(Map<String, dynamic> json) {
    annualRate = json['annual_rate'];
    bank = json['bank'];
    bankId = json['bank_id'];
    bankType = json['bank_type'];
    detailNote = json['detail_note'];
    expertise = json['expertise'];
    footnote = json['footnote'];
    hypothecFee = json['hypothec_fee'];
    interestRate = json['interest_rate'];
    logoUrl = json['logo_url'];
    note = json['note'];
    productName = json['product_name'];
    sponsoredRate = json['sponsored_rate'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['annual_rate'] = this.annualRate;
    data['bank'] = this.bank;
    data['bank_id'] = this.bankId;
    data['bank_type'] = this.bankType;
    data['detail_note'] = this.detailNote;
    data['expertise'] = this.expertise;
    data['footnote'] = this.footnote;
    data['hypothec_fee'] = this.hypothecFee;
    data['interest_rate'] = this.interestRate;
    data['logo_url'] = this.logoUrl;
    data['note'] = this.note;
    data['product_name'] = this.productName;
    data['sponsored_rate'] = this.sponsoredRate;
    data['url'] = this.url;
    return data;
  }
}

class PassiveOffers {
  double? annualRate;
  String? bank;
  int? bankId;
  String? bankType;
  Null? detailNote;
  double? expertise;
  Null? footnote;
  double? hypothecFee;
  double? interestRate;
  Null? logoUrl;
  Null? note;
  String? productName;
  double? sponsoredRate;
  String? url;

  PassiveOffers(
      {this.annualRate,
      this.bank,
      this.bankId,
      this.bankType,
      this.detailNote,
      this.expertise,
      this.footnote,
      this.hypothecFee,
      this.interestRate,
      this.logoUrl,
      this.note,
      this.productName,
      this.sponsoredRate,
      this.url});

  @override
  String toString() {
    return 'PassiveOffers{annualRate: $annualRate, bank: $bank, bankId: $bankId, bankType: $bankType, detailNote: $detailNote, expertise: $expertise, footnote: $footnote, hypothecFee: $hypothecFee, interestRate: $interestRate, logoUrl: $logoUrl, note: $note, productName: $productName, sponsoredRate: $sponsoredRate, url: $url}';
  }

  PassiveOffers.fromJson(Map<String, dynamic> json) {
    annualRate = json['annual_rate'];
    bank = json['bank'];
    bankId = json['bank_id'];
    bankType = json['bank_type'];
    detailNote = json['detail_note'];
    expertise = json['expertise'];
    footnote = json['footnote'];
    hypothecFee = json['hypothec_fee'];
    interestRate = json['interest_rate'];
    logoUrl = json['logo_url'];
    note = json['note'];
    productName = json['product_name'];
    sponsoredRate = json['sponsored_rate'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['annual_rate'] = this.annualRate;
    data['bank'] = this.bank;
    data['bank_id'] = this.bankId;
    data['bank_type'] = this.bankType;
    data['detail_note'] = this.detailNote;
    data['expertise'] = this.expertise;
    data['footnote'] = this.footnote;
    data['hypothec_fee'] = this.hypothecFee;
    data['interest_rate'] = this.interestRate;
    data['logo_url'] = this.logoUrl;
    data['note'] = this.note;
    data['product_name'] = this.productName;
    data['sponsored_rate'] = this.sponsoredRate;
    data['url'] = this.url;
    return data;
  }
}

class SponsoredOffers {
  String? adButtonText;
  String? adContent;
  String? adDetails;
  String? adDisplayType;
  String? adHeader;
  String? adImgLink;
  String? adName;
  String? adUtmLink;
  String? badgeText;
  String? bank;
  int? bankId;
  String? endDate;
  Null? footnote;
  int? listType;
  Null? logoUrl;
  int? productType;
  int? sponsoredRate;

  SponsoredOffers(
      {this.adButtonText,
      this.adContent,
      this.adDetails,
      this.adDisplayType,
      this.adHeader,
      this.adImgLink,
      this.adName,
      this.adUtmLink,
      this.badgeText,
      this.bank,
      this.bankId,
      this.endDate,
      this.footnote,
      this.listType,
      this.logoUrl,
      this.productType,
      this.sponsoredRate});

  @override
  String toString() {
    return 'SponsoredOffers{adButtonText: $adButtonText, adContent: $adContent, adDetails: $adDetails, adDisplayType: $adDisplayType, adHeader: $adHeader, adImgLink: $adImgLink, adName: $adName, adUtmLink: $adUtmLink, badgeText: $badgeText, bank: $bank, bankId: $bankId, endDate: $endDate, footnote: $footnote, listType: $listType, logoUrl: $logoUrl, productType: $productType, sponsoredRate: $sponsoredRate}';
  }

  SponsoredOffers.fromJson(Map<String, dynamic> json) {
    adButtonText = json['ad_button_text'];
    adContent = json['ad_content'];
    adDetails = json['ad_details'];
    adDisplayType = json['ad_display_type'];
    adHeader = json['ad_header'];
    adImgLink = json['ad_img_link'];
    adName = json['ad_name'];
    adUtmLink = json['ad_utm_link'];
    badgeText = json['badge_text'];
    bank = json['bank'];
    bankId = json['bank_id'];
    endDate = json['end_date'];
    footnote = json['footnote'];
    listType = json['list_type'];
    logoUrl = json['logo_url'];
    productType = json['product_type'];
    sponsoredRate = json['sponsored_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ad_button_text'] = this.adButtonText;
    data['ad_content'] = this.adContent;
    data['ad_details'] = this.adDetails;
    data['ad_display_type'] = this.adDisplayType;
    data['ad_header'] = this.adHeader;
    data['ad_img_link'] = this.adImgLink;
    data['ad_name'] = this.adName;
    data['ad_utm_link'] = this.adUtmLink;
    data['badge_text'] = this.badgeText;
    data['bank'] = this.bank;
    data['bank_id'] = this.bankId;
    data['end_date'] = this.endDate;
    data['footnote'] = this.footnote;
    data['list_type'] = this.listType;
    data['logo_url'] = this.logoUrl;
    data['product_type'] = this.productType;
    data['sponsored_rate'] = this.sponsoredRate;
    return data;
  }
}
