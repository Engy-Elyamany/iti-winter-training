/* Problem
Implement the extension function getFullInfo() returning a string value. It should 
list the properties of the class as in the example below and add "Unspecified" if 
the corresponding value is null
*/

/* Example
• name: Alice
• email: alice@gmail.com
• country: Germany
• city: Munich
• street: Unspecified
*/
class Client {
  String? name;
  String? email;
  Address? ad;
  Client([this.name, this.email, this.ad]);
}

class Address {
  String? country;
  String? city;
  String? street;

  Address([this.country, this.city, this.street]);
}

extension extFunc on Client {
  String getFullInfo() {
    return '''
name    = ${name ?? 'Unspecified'}
email   = ${email ?? 'Unspecified'}
country = ${ad?.country ?? 'Unspecified'}
city    = ${ad?.city ?? 'Unspecified'}
street  = ${ad?.street ?? 'Unspecified'}
''';
  }
}

void main() {
  Client alice =
      Client('Alice', 'alica@gmail.com', Address('Germany', 'Munich'));
  print(alice.getFullInfo());

  Client bob =
      Client('Bob');
  print(bob.getFullInfo());
}
