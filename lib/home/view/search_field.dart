import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String initialValue;
  final Function(String) onTap;
  final Function(String) onUnTap;
  final List<String> suggestions;

  const SearchField({
    super.key,
    required this.onTap,
    this.initialValue = "",
    required this.suggestions,
    required this.onUnTap,
  });

  @override
  Widget build(BuildContext context) => Autocomplete<String>(
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) =>
                TextField(
          controller: textEditingController,
          focusNode: focusNode,
          onSubmitted: (value) => onTap(value),
        ),
        initialValue: TextEditingValue(
          text: initialValue,
        ),
        optionsBuilder: (textEditingValue) => suggestions.where(
          (element) => element.contains(textEditingValue.text),
        ),
        onSelected: (option) => onTap(option),
        optionsViewBuilder: (context, onSelected, options) {
          var list = options.toList();
          return Container(
            color: Colors.white,
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: InkWell(
                  child: Text(list[index]),
                  onTap: () => onSelected(list[index]),
                ),
                trailing: InkWell(
                  child: const Icon(Icons.delete_forever),
                  onTap: () => onUnTap(list[index]),
                ),
              ),
              itemCount: list.length,
            ),
          );
        },
      );
}
