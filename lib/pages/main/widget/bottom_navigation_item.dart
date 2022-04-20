import 'package:chusan_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chusan_app/blocs/platform/platform_cubit.dart';

class ChusanBottomNavigationItem extends StatelessWidget {
  const ChusanBottomNavigationItem({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PlatformCubit>().setPage(index);
      },
      child: BlocBuilder<PlatformCubit, int>(builder: (context, currentIndex) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Image.asset(
              imageUrl,
              width: 24,
              height: 24,
              color: context.read<PlatformCubit>().state == index
                  ? ColorConst.primaryBrand
                  : ColorConst.neutral40,
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                color: context.read<PlatformCubit>().state == index
                    ? ColorConst.primaryBrand
                    : ColorConst.neutral40,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ],
        );
      }),
    );
  }
}
