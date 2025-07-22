import 'package:flutter/services.dart';

import '../../../index.dart';
import '../../address/models/address.dart';
import '../cubit/search_cubit.dart';

class AddressesWidget extends StatelessWidget {
  const AddressesWidget({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    final cubit = getIt<SearchCubit>();
    return BlocSelector<SearchCubit, SearchState, List<Address>>(
      bloc: cubit,
      selector: (state) => state.addresses,
      builder: (context, addresses) => Scrollbar(
        controller: scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        radius: const Radius.circular(16),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 12),
          controller: scrollController,
          itemCount: addresses.length,
          itemBuilder: (context, index) {
            final address = addresses[index];
            return _AddressItemWidget(address: address);
          },
          separatorBuilder: (context, index) =>
              const Divider(indent: 16, endIndent: 16),
        ),
      ),
    );
  }
}

class _AddressItemWidget extends StatelessWidget {
  const _AddressItemWidget({required this.address});

  final Address address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trước sáp nhập',
            style: AppTextStyles.bodyMedium(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${address.oldProvince}, ${address.oldDistrict}, ${address.oldWard}',
                  style: AppTextStyles.bodyLarge(),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(
                      text:
                          '${address.oldProvince}, ${address.oldDistrict}, ${address.oldWard}',
                    ),
                  );
                  context.showSnackbar('Đã sao chép');
                },
                icon: const Icon(Icons.copy_rounded),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Sau sáp nhập',
            style: AppTextStyles.bodyMedium(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${address.newProvince}, ${address.newWard}',
                  style: AppTextStyles.titleMedium(
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(
                      text: '${address.newProvince}, ${address.newWard}',
                    ),
                  );
                  context.showSnackbar('Đã sao chép');
                },
                icon: const Icon(Icons.copy_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
