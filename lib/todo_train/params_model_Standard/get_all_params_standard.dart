//
// import 'package:train/constant.dart';
// import 'package:train/todo_train/params_model_Standard/params_model_standard.dart';
//
// class TripListParamsStan extends ParamsModelStan<TripListParamsBody> {
//   TripListParamsStan({super.body}) : super(baseUrl: kUrl);
//
//   @override
//   RequestType? get requestType => RequestType.get;
//
//   @override
//   String? get url => 'subsequentTripsUser';
//
//   @override
//   Map<String, String> get urlParams => body!.toJson();
//
//   @override
//   List<Object?> get props => [url, urlParams, requestType, body];
//
// }
//
// class TripListParamsBody extends BaseBodyModel {
//   TripListParamsBody({
//     required this.page,
//   });
//   final int page;
//
//
//   @override
//   Map<String, String> toJson() => {
//     'with_pagination' : 'yes',
//     'limit': '10',
//     'page': page.toString(),
//   };
// }