import 'package:demo_one/models/models.dart';
import 'package:petstore_client/petstore_client.dart' as api;

class PetMapper {
  Pet fromApi(api.Pet pet) {
    final b = PetBuilder();
    b.name = pet.name;

    return b.build();
  }
}
