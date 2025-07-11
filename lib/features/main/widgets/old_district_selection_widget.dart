import 'package:diacritic/diacritic.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../index.dart';
import '../cubit/main_cubit.dart';

class OldDistrictSelectionWidget extends StatelessWidget {
  const OldDistrictSelectionWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final mainCubit = getIt<MainCubit>();
    return BlocSelector<MainCubit, MainState, List<String>>(
      bloc: mainCubit,
      selector: (state) => state.oldDistricts,
      builder: (context, oldDistricts) => TypeAheadField<String>(
        controller: controller,
        suggestionsCallback: (pattern) => oldDistricts
            .where(
              (district) => removeDiacritics(
                district.toLowerCase(),
              ).contains(removeDiacritics(pattern.toLowerCase())),
            )
            .toList(),
        itemBuilder: (context, suggestion) => ListTile(title: Text(suggestion)),
        onSelected: (value) {
          controller.text = value;
          mainCubit.selectOldDistrict(value);
          context.unfocus();
        },
        builder: (context, controller, focusNode) => TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Quận/Huyện',
            hintText: 'Nhập tên quận/huyện',
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      controller.clear();
                      mainCubit.selectOldDistrict('');
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
