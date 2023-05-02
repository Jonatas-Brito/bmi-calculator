// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';

// @injectable
// class QuantityController extends ChangeNotifier {
//   int _quantity = 0;
//   late Timer _timer;
//   final _quantityController = TextEditingController(text: '0');

//   late BuildContext _context;

//   set context(BuildContext context) {
//     _context = context;
//   }

//   get quantity => _quantity;
//   get quantityController => _quantityController;
//   get timer => _timer;

//   incrementQuantity({required int value}) {
//     _quantity++;
//     _updateControllerValue();
//       updateWorkforce(workforceEntity.copy(amount: _quantity));
//   }

//   decrementQuantity({required int value}) {
//     if (_quantity > 0) {
//       _quantity--;
//       _updateControllerValue();
//       if (workforceEntity != null) {
//         updateWorkforce(workforceEntity.copy(amount: _quantity));
//       }
//     }
//   }

//   continuousIncrement({required int value}) =>
//       _timer = Timer.periodic(
//         const Duration(milliseconds: 100),
//         (timer) => incrementQuantity(workforceEntity),
//       );

//   continuousDecrement({required int value}) =>
//       _timer = Timer.periodic(
//         const Duration(milliseconds: 100),
//         (timer) => decrementQuantity(workforceEntity),
//       );

//   timerCancel() {
//     _timer.cancel();
//     notifyListeners();
//   }

//   onChange(
//     String value,
//     {required int value},
//   ) {
//     if (value.isEmpty) {
//       _quantity = 0;
//       _quantityController.text = _quantity.toString();
//     }

//     if (value.contains('.') || value.contains(',')) {
//       _quantityController.text = value.replaceAll(".", "").replaceAll(",", "");
//       FocusScope.of(_context).unfocus();
//       return;
//     }

//     _quantity = num.parse(_quantityController.text.replaceAll(",", "")).toInt();
//     _updateControllerValue();
//   }

//   _updateControllerValue() {
//     _quantityController.text = _quantity.toString();
//     //move the cursor to the end of the text
//     _quantityController.selection = TextSelection.fromPosition(
//       TextPosition(offset: _quantityController.text.length),
//     );
//     notifyListeners();
//   }

//   resetValues() {
//     _quantity = 0;
//     _quantityController.text = _quantity.toString();
//     notifyListeners();
//   }

//   updateWorkforce({required int value}) {
//     final editWorkforceBloc = BlocProvider.of<EditWorkforceBloc>(_context);
//     if (workforceEntity != null) {
//       Future.delayed(
//         const Duration(milliseconds: 500),
//         () {
//           if (_quantity == workforceEntity.amount) {
//             editWorkforceBloc.add(
//               EditEvent(workforceEntity: workforceEntity),
//             );
//           }
//         },
//       );
//     }
//   }
// }
