let monat = 22.0

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return Double((dailyRateFrom(hourlyRate:hourlyRate) * monat * calculateDiscount(discount:discount)).rounded())
}
func calculateDiscount(discount: Double) -> Double {
    return((discount / 100) - 1) * (-1)
}


func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return Double((budget / (calculateDiscount(discount:discount) * dailyRateFrom(hourlyRate:hourlyRate))).rounded(.down))

}
