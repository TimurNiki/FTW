import 'package:flutter/material.dart';
import 'package:fluttertestview/model.dart';

class RCard extends StatelessWidget {
  const RCard({super.key, required this.model});
  final RentModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            model.imageUrl,
            fit: BoxFit.fill,
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Spacer(),
              Text(model.subTitle),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.attach_money),
                  Text(model.price.toString()),
                  const Spacer(),
                  const Text('Category')
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
