import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:new_app/app/home_screen/domain/usecases/news_use_case.dart';
import 'package:new_app/app/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:new_app/app/home_screen/presentation/widgets/app_bar_title.dart';
import 'package:new_app/core/di/di.dart';
import 'package:new_app/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (context) => HomeScreenCubit(
        newsUseCase: di<NewsUseCase>(),
      )..getNews(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const AppBarTitle(),
        ),
        body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            if (state is HomeScreenLoading) {
              return Center(
                child: Lottie.asset(MyAssets.lottie.loading.path),
              );
            } else if (state is HomeScreenLoaded) {
              final cubit = state.newsEntity.articles!;
              return ListView.builder(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: cubit.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          // if (cubit[index].urlToImage == null)
                          //   SizedBox(
                          //     height: 200.h,
                          //     width: double.infinity,
                          //     child: const CircularProgressIndicator.adaptive(),
                          //   ),
                          if (cubit[index].urlToImage != null)
                            Image.network(
                              cubit[index].urlToImage!,
                            ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            cubit[index].title!,
                            style: TextStyle(fontSize: 20.sp),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            cubit[index].description!,
                            style:
                                TextStyle(color: Colors.red, fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text(
                'Data Cannot loaded please check  your connection',
              );
            }
          },
        ),
      ),
    );
  }
}
