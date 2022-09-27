class Currency {
  final String Flag;
  final String Symbol;
  Currency({required this.Flag, required this.Symbol});
  static final List<Currency> data = [
    Currency(Flag: 'images/flag/usa.png', Symbol: 'USD'),
    Currency(Flag: 'images/flag/try.png', Symbol: 'TRY'),
    Currency(Flag: 'images/flag/cad.png', Symbol: 'CAD'),
    Currency(Flag: 'images/flag/rub.png', Symbol: 'RUB'),
    Currency(Flag: 'images/flag/chf.png', Symbol: 'CHF'),
    Currency(Flag: 'images/flag/gbp.png', Symbol: 'GBP'),
    Currency(Flag: 'images/flag/eur.png', Symbol: 'EUR'),
    Currency(Flag: 'images/flag/yun.png', Symbol: 'YUN')
  ];
}
