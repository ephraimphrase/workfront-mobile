import 'package:get/state_manager.dart';
import '../models/gig_model.dart';

class GigsController extends GetxController {
  Rx<Gig> gig = Gig(
          gigName: '',
          gigCategory: '',
          gigDuration: '',
          clientName: '',
          gigAmount: 0,
          paymentType: '',
          startingAmount: 0,
          gigType: '')
      .obs;

  void updateGigName(name) {
    gig.update((val) {
      val!.gigName = name;
    });
  }

  void updateCategory(category) {
    gig.update((val) {
      val!.gigCategory = category;
    });
  }

  void updateGigDuration(duration) {
    gig.update((val) {
      val!.gigDuration = duration;
    });
  }

  void updateClientName(clientName) {
    gig.update((val) {
      val!.clientName = clientName;
    });
  }

  void updateGigAmount(amount) {
    gig.update((val) {
      val!.gigAmount = amount;
    });
  }

  void updatePaymentType(paymentType) {
    gig.update((val) {
      val!.paymentType = paymentType;
    });
  }

  void updateStartingAmount(startingAmount) {
    gig.update((val) {
      val!.startingAmount = startingAmount;
    });
  }

  void updateGigType(gigType) {
    gig.update((val) {
      val!.gigType = gigType;
    });
  }
}
