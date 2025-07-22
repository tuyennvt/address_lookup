import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../index.dart';
import '../../address/models/address.dart';
import '../cubit/search_cubit.dart';
import 'addresses_widget.dart';
import 'search_field.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final _cubit = getIt<SearchCubit>();
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: const AppBarWidget(height: 0),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SearchField(controller: _searchController),
              Expanded(
                child: BlocSelector<SearchCubit, SearchState, List<Address>>(
                  bloc: _cubit,
                  selector: (state) => state.addresses,
                  builder: (context, addresses) {
                    if (addresses.isEmpty) {
                      return const _EmptyWidget();
                    }
                    return AddressesWidget(scrollController: _scrollController);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyWidget extends StatelessWidget {
  const _EmptyWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.imagesSearchEmpty, width: 164),
          const SizedBox(height: 8),
          BlocBuilder<SearchCubit, SearchState>(
            bloc: getIt<SearchCubit>(),
            buildWhen: (previous, current) =>
                previous.addresses != current.addresses ||
                previous.searchQuery != current.searchQuery,
            builder: (context, state) {
              var message = '';
              if (state.searchQuery.isNotEmpty && state.addresses.isEmpty) {
                message = 'Không tìm thấy kết quả';
              } else if (state.searchQuery.isEmpty) {
                message = 'Nhập địa chỉ để tìm kiếm';
              }
              return Text(message, style: AppTextStyles.bodyLarge());
            },
          ),
        ],
      ),
    );
  }
}
