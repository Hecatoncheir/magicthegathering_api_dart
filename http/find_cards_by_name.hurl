#GET https://api.magicthegathering.io/v1/cards?language=russian&name=Хранитель+Кровной+Линии
#GET https://api.magicthegathering.io/v1/cards?language=russian&name=%D0%A5%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C+%D0%9A%D1%80%D0%BE%D0%B2%D0%BD%D0%BE%D0%B9+%D0%9B%D0%B8%D0%BD%D0%B8%D0%B8
#GET https://api.magicthegathering.io/v1/cards?name=血脉维系者&language=chinese simplified
GET https://api.magicthegathering.io/v1/cards?name=Bloodline+Keeper
Content-Type: application/json
HTTP *
[Asserts]
status == 200
