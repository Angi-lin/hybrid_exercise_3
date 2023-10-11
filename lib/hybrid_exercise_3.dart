

class Students{

  List<Map<String, String>> people = [];
  Students(List<Map<String, String>> data) {
    this.people = data;
  }

  void sort(String field) {
  people.sort((a, b) => (a[field] ?? '').compareTo(b[field] ?? ''));
   
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

// if we remove only by field we would erase the list.. SO we need to remove by field and value
// I GUESS this was the intention of the exercise
  void remove(String field, String value) {
    people.removeWhere((person) => person[field] == value);
  }

}
