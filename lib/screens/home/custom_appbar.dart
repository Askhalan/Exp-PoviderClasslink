import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/utils/constants/colors.dart';
import 'package:provider_student_management/utils/helpers/helper_functions.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: JColor.primary,
      width: JHelperFunctions.screenWidth(context),
      height: JHelperFunctions.screenHeight(context) * 0.1,
      child: Consumer<DataProvider>(builder: (context, dataProvider, _) {
        return Stack(
          children: [
            const Positioned(
                bottom: 15,
                left: 20,
                child: Text(
                  "CLASSLINK",
                  style: TextStyle(fontSize: 20),
                )),
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              padding: EdgeInsets.only(
                  top: 38,
                  left: dataProvider.paddingValue,
                  right: 10,
                  bottom: 12),
              curve: Curves.easeInOut,
              child: SearchBar(
                controller: context.read<DataProvider>().searchController,
                  backgroundColor: dataProvider.paddingValue > 15
                      ? const MaterialStatePropertyAll(JColor.primary)
                      : const MaterialStatePropertyAll(JColor.lightGrey),
                  elevation: dataProvider.paddingValue > 15
                      ? const MaterialStatePropertyAll(0)
                      : const MaterialStatePropertyAll(3),
                  onChanged: (value) {
                    dataProvider.search();
                  },
                  hintText: "Search",
                  trailing: [
                    IconButton(
                        onPressed: () {
                          dataProvider.togglePadVal();
                        },
                        icon: const Icon(Icons.search)),
                  ]),
            ),
          ],
        );
      }),
    );
  }
}
