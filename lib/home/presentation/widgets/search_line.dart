import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mad_soft/home/presentation/bloc/home_bloc.dart';
import 'package:mad_soft/utils/images.dart';

class SearchLine extends StatelessWidget {
  const SearchLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        context.read<HomeBloc>().add(SearchEvent(query: value));
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: Image.asset(AppImages.trailingIcon),
        hintText: 'Найти...',
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
