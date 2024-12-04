import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TransactionController extends GetxController {
  //TODO: Implement OrderHistoryController

  var orderList = [].obs; // Reactive list to store orders
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchOrderHistory(); // Fetch data when the controller is initialized
  }

  Future<void> fetchOrderHistory() async {
    try {} catch (e) {
      print(e.toString());
    } finally {
      isLoading(false); // Set loading to false
    }
  }

  String formatDate(String dateString) {
    // Parse the date string into a DateTime object
    DateTime parsedDate = DateTime.parse(dateString);

    // Format the date to "yyyy-MM-dd" format or any other format you want
    String formattedDate = DateFormat('yyyy-MM-dd').format(parsedDate);

    return formattedDate;
  }
}
