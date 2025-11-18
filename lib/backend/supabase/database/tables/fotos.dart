import '../database.dart';

class FotosTable extends SupabaseTable<FotosRow> {
  @override
  String get tableName => 'fotos';

  @override
  FotosRow createRow(Map<String, dynamic> data) => FotosRow(data);
}

class FotosRow extends SupabaseDataRow {
  FotosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  int? get idEmpresa => getField<int>('id_empresa');
  set idEmpresa(int? value) => setField<int>('id_empresa', value);

  String? get idDoacao => getField<String>('id_doacao');
  set idDoacao(String? value) => setField<String>('id_doacao', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);
}
