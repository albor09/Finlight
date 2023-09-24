import 'package:finance_manager/data/models/transaction.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryDetailed extends StatelessWidget {
  const CategoryDetailed(
      {required this.operations, required this.arrowBackPress, super.key});

  final List<TransactionEntity> operations;
  final void Function() arrowBackPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () => arrowBackPress(),
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'Food',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: operations.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              operations[index].description,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              operations[index].date.toString(),
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            )
                          ],
                        ),
                        Text(operations[index].value.toString())
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
