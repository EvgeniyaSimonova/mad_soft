import 'package:flutter/material.dart';
import 'package:mad_soft/home/presentation/bloc/home_bloc.dart';

class SearchLine extends StatelessWidget {
  const SearchLine({
    super.key,
    required TextEditingController textController,
    required HomeBloc bloc,
  })  : _textController = textController,
        _bloc = bloc;

  final TextEditingController _textController;
  final HomeBloc _bloc;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textController,
      onChanged: (value) {
        _bloc.add(SearchEvent(query: value));
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: Image.asset('images/trailing-icon1.png'),
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
