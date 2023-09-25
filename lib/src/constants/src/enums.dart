enum PaymentType {
  cash,
  card,
  onlinePayment,
  digitalPayment,
  none;
}

enum DigitalPaymentType {
  digitalPayment,
  bkash,
  rocket,
  nagad,
  ukash,
  upay,
}

enum AppLayout {
  horizontalView,
  verticalView,
}

enum DiscountType { cash, percentage }

//!this can cause build runner to fail who know why
enum CustomerInfoType { name, phone, loyalityCard }
