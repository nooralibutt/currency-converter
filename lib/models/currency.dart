class Currency {
  String Flag;
  String Symbol;
  Currency({required this.Flag, required this.Symbol});
  static final List<Currency> data = [
    Currency(Flag: 'images/usa.png', Symbol: 'USD'),
    Currency(Flag: 'images/try.png', Symbol: 'TRY'),
    Currency(Flag: 'images/cad.png', Symbol: 'CAD'),
    Currency(Flag: 'images/rub.png', Symbol: 'RUB'),
    Currency(Flag: 'images/chf.png', Symbol: 'CHF'),
    Currency(Flag: 'images/gbp.png', Symbol: 'GBP'),
  ];
}
