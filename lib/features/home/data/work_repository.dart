import 'package:peterbk/features/home/models/work_model.dart';

abstract class IWorkRepository {
  Future<List<WorkModel>> getWorkList();
}

class WorkRepository extends IWorkRepository {
  @override
  Future<List<WorkModel>> getWorkList() async {
    return [
      const WorkModel(
        projectName: "YS Field App",
        position: "Associate Software Engineer",
        imageUrl:
            "https://store-images.s-microsoft.com/image/apps.3048.13768000683876661.5d021cc0-8ce7-43ce-9c98-b929fa7fce97.2dad1dc7-b7d8-4322-9227-15b1c32b0e53?h=464",
        description:
            "A mobile app which includes Maps, SOS, Chat, Events, Daily Functions and much more",
      ),
      const WorkModel(
        projectName: "EGW Writings(Multi-Platform App)",
        imageUrl: "https://picsum.photos/800/10",
        position: "Software Engineer",
        description:
            "The large scale app, which uses the EGW Writings API, is available on both iOS, Android, MacOs, Web, Windows, Linux, TvOS, Android TV, Wearables and Watch OS.",
      ),
      const WorkModel(
          projectName: "SUMMA Desktop Application",
          imageUrl:
              "https://store-images.s-microsoft.com/image/apps.3048.13768000683876661.5d021cc0-8ce7-43ce-9c98-b929fa7fce97.2dad1dc7-b7d8-4322-9227-15b1c32b0e53?h=464",
          description: """
A Magabook program treasurer is an important and key element in the success of your program. By keeping accurate records and submitting timely reports, you are enabling the accurate and timely payment of scholarships at the completion of your program.
The SUMMA system was developed to assist you in your work as a program treasurer. The goal was to develop a system that would be easy to use and assist you in providing accurate reports.
When information is entered into the SUMMA system on a daily basis and the procedures are followed, you will be able to submit the timely and accurate reports needed to make your job a success.
        """),
      const WorkModel(
        position: "Associate Software Engineer",
        projectName: "",
        imageUrl:
            "https://store-images.s-microsoft.com/image/apps.3048.13768000683876661.5d021cc0-8ce7-43ce-9c98-b929fa7fce97.2dad1dc7-b7d8-4322-9227-15b1c32b0e53?h=464",
        description:
            "A Magabook program treasurer is an important and key element in the success of your program. By keeping accurate records and submitting timely reports, you are enabling the accurate and timely payment of scholarships at the completion of your program. The SUMMA system was developed to assist you in your work as a program treasurer. The goal was to develop a system that would be easy to use and assist you in providing accurate reports. When information is entered into the SUMMA system on a daily basis and the procedures are followed, you will be able to submit the timely and accurate reports needed to make your job a success",
      ),
    ];
  }
}
