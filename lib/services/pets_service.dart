import 'package:demo_one/mappers/mappers.dart';
import 'package:demo_one/models/models.dart';
import 'package:petstore_client/petstore_client.dart' as api;

class PetsService {
  final api.PetApi _petApi;
  final PetMapper _petMapper;
  PetsService(
      {required api.PetstoreClient client, required PetMapper petMapper})
      : _petApi = client.getPetApi(),
        _petMapper = petMapper;

  Future<List<Pet>> getPets(api.PetstoreClient client) async {
    final response = await _petApi.findPetsByStatus();

    if (response.statusCode != 200) {
      // handle error
    }

    return response.data!.map((p0) => _petMapper.fromApi(p0)).toList();
  }
}
