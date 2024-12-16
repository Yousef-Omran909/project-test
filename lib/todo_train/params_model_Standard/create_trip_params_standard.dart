//
//
// import 'package:train/constant.dart';
// import 'package:train/todo_train/params_model_Standard/params_model_standard.dart';
//
// class CreateTripParams extends ParamsModelStan<CreateTripParamsBody> {
//   CreateTripParams({super.body}) : super(baseUrl: kUrl);
//
//   @override
//   RequestType? get requestType => RequestType.post;
//
//   @override
//   String? get url => 'trips';
//
//   @override
//   Map<String, String> get urlParams => {};
//
//   @override
//   List<Object?> get props => [url, urlParams, requestType, body];
// }
//
// class CreateTripParamsBody extends BaseBodyModel {
//   CreateTripParamsBody({
//     this.fromPointLat,
//     this.fromPointLong,
//     this.toPointLat,
//     this.toPointLong,
//     this.toPointName,
//     this.fromPointName,
//     this.fromPointDetails,
//     this.toPointDetails,
//     this.date,
//     this.time,
//     this.tripKilo,
//     this.countryId,
//     this.phoneNumber,
//     this.email,
//     this.flightNumber,
//     this.cityId,
//     this.luggage,
//     this.childSeat,
//     this.passengers,
//     this.carrier,
//     this.booster,
//     this.notes,
//     this.invitationFromUserId,
//     this.relationWithPassengerId,
//     this.fullName,
//     this.handLuggage,
//     this.waitingTime,
//     this.pickupTime,
//     this.meetingPointPlaceId
//   });
//   final double? fromPointLat,fromPointLong,toPointLat,toPointLong;
//   final String? toPointName, fromPointName, date, time;
//   final String? toPointDetails, fromPointDetails;
//   final int? tripKilo, countryId, cityId;
//   final String? phoneNumber, flightNumber, email, notes;
//   final int? childSeat,passengers, luggage,handLuggage, carrier, booster;
//   final int? invitationFromUserId, relationWithPassengerId;
//   final String? fullName;
//   final int?  waitingTime;
//   final String? pickupTime;
//   final String? meetingPointPlaceId;
//
//   @override
//   Map<String, dynamic> toJson() => {
//     'from_point_lat':fromPointLat.toString(),
//     'from_point_long':fromPointLong.toString(),
//     'to_point_lat':toPointLat.toString(),
//     'to_point_long':toPointLong.toString(),
//     'from_point_name':fromPointName,
//     'to_point_name':toPointName,
//     'to_point_details':toPointDetails,
//     'from_point_details':fromPointDetails,
//     'date':date,
//     'full_name':fullName,
//     'time':time?.substring(0,5),
//     'trip_kilo':tripKilo,
//     'country_id':countryId,
//     'phone_number':phoneNumber,
//     'email':email,
//     'flight_number':flightNumber,
//     'checked_luggage':luggage,
//     'hand_luggage':handLuggage,
//     'passengers':passengers,
//     'child_seat':childSeat,
//     'carrier':carrier,
//     'booster':booster,
//     'city_id':cityId,
//     'note':notes,
//     if (invitationFromUserId != null && invitationFromUserId != 0)
//       'invitation_from_user_id':invitationFromUserId,
//     if (relationWithPassengerId != null && relationWithPassengerId != -1)
//       'relation_with_passenger_id':relationWithPassengerId,
//     'waiting_time':waitingTime,
//     'pickup_time':pickupTime,
//     if (meetingPointPlaceId != null)
//       'meeting_point_place_id':meetingPointPlaceId,
//   };
//
//   CreateTripParamsBody copyWith({
//     double? fromPointLat,
//     double? fromPointLong,
//     double? toPointLat,
//     double? toPointLong,
//     String? toPointName,
//     String? fromPointName,
//     String? toPointDetails,
//     String? fromPointDetails,
//     String? date,
//     String? time,
//     String? phoneNumber,
//     String? flightNumber,
//     String? email,
//     String? notes,
//     String? fullName,
//     int? childSeat,
//     int? passengers,
//     int? luggage,
//     int? handLuggage,
//     int? carrier,
//     int? booster,
//     int? invitationFromUserId,
//     int? relationWithPassengerId,
//     int? cityId,
//     int? countryId,
//     int? waitingTime,
//     String? pickupTime,
//     String? meetingPointPlaceId,
// }) =>
// CreateTripParamsBody(
//     fromPointLat:fromPointLat??this.fromPointLat,
//     fromPointLong:fromPointLong??this.fromPointLong,
//     toPointLat: toPointLat ?? this.toPointLat,
//     toPointLong: toPointLong ?? this.toPointLong,
//     toPointName: toPointName ?? this.toPointName,
//     fromPointName:fromPointName??this.fromPointName,
//     toPointDetails: toPointDetails ?? this.toPointDetails,
//     fromPointDetails: fromPointDetails ?? this.fromPointDetails,
//     date: date ?? this.date,
//     time: time ?? this.time,
//     phoneNumber: phoneNumber ?? this.phoneNumber,
//     flightNumber: flightNumber ?? this.flightNumber,
//     email: email ?? this.email,
//     notes: notes??this.notes,
//     fullName: fullName ?? this.fullName,
//     childSeat : childSeat ?? this.childSeat,
//     passengers: passengers?? this.passengers,
//     luggage: luggage ?? this.luggage,
//   handLuggage:handLuggage??this.handLuggage,
//     carrier : carrier ?? this.carrier,
//     booster: booster?? this.booster,
//     invitationFromUserId: invitationFromUserId ?? this.invitationFromUserId,
//     relationWithPassengerId: relationWithPassengerId ?? this.relationWithPassengerId,
//     cityId: cityId??this.cityId,
//   countryId: countryId??this.countryId,
//   pickupTime: pickupTime ?? this.pickupTime,
//   waitingTime:  waitingTime ?? this.waitingTime,
//   meetingPointPlaceId: meetingPointPlaceId ?? this.meetingPointPlaceId,
//
// );
// }