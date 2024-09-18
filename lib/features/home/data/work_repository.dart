import 'package:peterbk/features/home/models/work_model.dart';

abstract class IWorkRepository {
  Future<List<WorkModel>> getWorkList();
}


class WorkRepository extends IWorkRepository {
  @override
  Future<List<WorkModel>> getWorkList() async{
    return [
      WorkModel(projectName: "YS Field App", imageUrl: "https://picsum.photos/800/9", description: "Ut nisi quis non sunt elit nulla. Minim elit eiusmod cupidatat elit non officia. Labore enim laborum nulla ut magna. Anim commodo aliqua proident labore sint est ea sint velit incididunt sint ex proident qui. Laboris ad et occaecat nisi fugiat sit eu ipsum laboris ut et amet. Ullamco cillum nostrud sint deserunt ea ex nulla laboris qui."),
      WorkModel(projectName: "", imageUrl: "https://picsum.photos/800/10", description: "Ut nisi quis non sunt elit nulla. Minim elit eiusmod cupidatat elit non officia. Labore enim laborum nulla ut magna. Anim commodo aliqua proident labore sint est ea sint velit incididunt sint ex proident qui. Laboris ad et occaecat nisi fugiat sit eu ipsum laboris ut et amet. Ullamco cillum nostrud sint deserunt ea ex nulla laboris qui."),
      WorkModel(projectName: "YS Field App", imageUrl: "https://picsum.photos/800/11", description: "Ut nisi quis non sunt elit nulla. Minim elit eiusmod cupidatat elit non officia. Labore enim laborum nulla ut magna. Anim commodo aliqua proident labore sint est ea sint velit incididunt sint ex proident qui. Laboris ad et occaecat nisi fugiat sit eu ipsum laboris ut et amet. Ullamco cillum nostrud sint deserunt ea ex nulla laboris qui."),

    ];
  }

}