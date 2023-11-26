

class Calculator {

  Calculator(this._number1, this._number2);

  final double _number1;
  final double _number2;

  String getSum(){
    return "Sum: ${(_number1 + _number2).toString()}";
  }
  String getSubtraction(){
    return "Subtraction: ${(_number1 - _number2).toString()}";
  }
  String getMultiplication(){
    return " Multiplication: ${(_number1 * _number2).toString()}";
  }
  String getDivision(){
    return "Division: ${(_number1 / _number2).toStringAsFixed(1)}";
  }



}