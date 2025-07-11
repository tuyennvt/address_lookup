import 'package:diacritic/diacritic.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../index.dart';
import '../cubit/main_cubit.dart';

class OldWardSelectionWidget extends StatelessWidget {
  const OldWardSelectionWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final mainCubit = getIt<MainCubit>();
    return BlocSelector<MainCubit, MainState, List<String>>(
      bloc: mainCubit,
      selector: (state) => state.oldWards,
      builder: (context, oldWards) => TypeAheadField<String>(
        controller: controller,
        suggestionsCallback: (pattern) => oldWards
            .where(
              (ward) => removeDiacritics(
                ward.toLowerCase(),
              ).contains(removeDiacritics(pattern.toLowerCase())),
            )
            .toList(),
        itemBuilder: (context, suggestion) => ListTile(title: Text(suggestion)),
        onSelected: (value) {
          controller.text = value;
          mainCubit.selectOldWard(value);
          context.unfocus();
        },
        builder: (context, controller, focusNode) => TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Phường/Xã',
            hintText: 'Nhập tên phường/xã',
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      controller.clear();
                      mainCubit.selectOldWard('');
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
