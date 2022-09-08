class Country {
  String countryFlag;
  String currency;
  Country({required this.countryFlag, required this.currency});
  static final List<Country> data = [
    Country(countryFlag: 'images/usa.png', currency: 'USD'),
    Country(countryFlag: 'images/try.png', currency: 'TRY'),
    Country(countryFlag: 'images/cad.png', currency: 'CAD'),
    Country(countryFlag: 'images/rub.png', currency: 'RUB'),
    Country(countryFlag: 'images/chf.png', currency: 'CHF'),
    Country(countryFlag: 'images/gbp.png', currency: 'GBP'),
  ];
}
