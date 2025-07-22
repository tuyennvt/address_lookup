import '../../../index.dart';
import '../cubit/main_cubit.dart';

class NewAddressesWidget extends StatelessWidget {
  const NewAddressesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mainCubit = getIt<MainCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Sau sáp nhập', style: AppTextStyles.titleLarge()),
        const SizedBox(height: 16),
        // Expanded(
        //   child: BlocSelector<MainCubit, MainState, List<Address>>(
        //     bloc: mainCubit,
        //     selector: (state) {
        //       return state.newAddresses;
        //     },
        //     builder: (context, newAddresses) {
        //       return ListView.builder(
        //         itemCount: newAddresses.length,
        //         itemBuilder: (context, index) {
        //           final address = newAddresses[index];
        //           return ListTile(
        //             title: Text(address.newProvince),
        //             subtitle: Text(address.newWard),
        //           );
        //         },
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
