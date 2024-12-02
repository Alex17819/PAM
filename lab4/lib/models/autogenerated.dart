import 'banners.dart';
import 'categories.dart';
import 'doctors.dart';
import 'nearby_centers.dart';

class Autogenerated {
  List<Banners>? banners;
  List<Categories>? categories;
  List<NearbyCenters>? nearbyCenters;
  List<Doctors>? doctors;

  Autogenerated(
      {this.banners, this.categories, this.nearbyCenters, this.doctors});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(Banners.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    if (json['nearby_centers'] != null) {
      nearbyCenters = <NearbyCenters>[];
      json['nearby_centers'].forEach((v) {
        nearbyCenters!.add(NearbyCenters.fromJson(v));
      });
    }
    if (json['doctors'] != null) {
      doctors = <Doctors>[];
      json['doctors'].forEach((v) {
        doctors!.add(Doctors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (banners != null) {
      data['banners'] = banners!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (nearbyCenters != null) {
      data['nearby_centers'] =
          nearbyCenters!.map((v) => v.toJson()).toList();
    }
    if (doctors != null) {
      data['doctors'] = doctors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
