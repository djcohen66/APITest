import 'dart:convert';

class Supplier {
  final int patient_cnt;
  int output_file_size;
  String input_file_name;
  int supplier_id;
  int process_id;
  String output_file_name;
  String  output_file_location;
  int variant_cnt;
  int process_start;
  int input_file_size;
  String input_file_location;
  int process_end;



  Supplier(this.patient_cnt,this.output_file_size,this.input_file_name,this.supplier_id,this.process_id,this.output_file_name,this.output_file_location,this.variant_cnt,this.process_start,
      this.input_file_size,this.input_file_location,this.process_end);

  /*String toJson() {
    Map<String, dynamic> fields = {
      "id": (id == null) ? -1 : id,
      "name": name,
      "zookeeperServers": zookeeperServers,
      "createdAt":  createdAt,
      "modifiedAt": modifiedAt
    };

    return JSON.encode(fields);
  }*/

  factory Supplier.fromJson(Map<String, dynamic> supplier) =>
      new Supplier(supplier['patient_cnt'],
          supplier['output_file_size'],
          supplier['input_file_name'],
          supplier['supplier_id'],
          supplier['process_id'],
          supplier['output_file_name'],
          supplier['output_file_location'],
          supplier['variant_cnt'],
          supplier['process_start'],
         supplier['input_file_size'],
         supplier['input_file_location'],
         supplier['process_end']
      );

  //factory Supplier.fromExisting(Supplier sl) =>
   //   new Supplier(s1.);
}