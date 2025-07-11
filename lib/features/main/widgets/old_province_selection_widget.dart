import 'package:diacritic/diacritic.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../index.dart';
import '../cubit/main_cubit.dart';

class OldProvinceSelectionWidget extends StatelessWidget {
  const OldProvinceSelectionWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final mainCubit = getIt<MainCubit>();
    return BlocSelector<MainCubit, MainState, List<String>>(
      bloc: mainCubit,
      selector: (state) => state.oldProvinces,
      builder: (context, oldProvinces) => TypeAheadField<String>(
        controller: controller,
        suggestionsCallback: (pattern) => oldProvinces
            .where(
              (province) => removeDiacritics(
                province.toLowerCase(),
              ).contains(removeDiacritics(pattern.toLowerCase())),
            )
            .toList(),
        itemBuilder: (context, suggestion) => ListTile(title: Text(suggestion)),
        onSelected: (value) {
          controller.text = value;
          mainCubit.selectOldProvince(value);
          context.unfocus();
        },
        builder: (context, controller, focusNode) => TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Tỉnh/Thành phố',
            hintText: 'Nhập tên tỉnh/thành phố',
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      controller.clear();
                      mainCubit.selectOldProvince('');
                    },
                  )
                : null,
          ),
          onChanged: (_) {
            (context as Element).markNeedsBuild();
          },
        ),
      ),
    );
  }
}
