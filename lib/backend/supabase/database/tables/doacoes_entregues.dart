import '../database.dart';

class DoacoesEntreguesTable extends SupabaseTable<DoacoesEntreguesRow> {
  @override
  String get tableName => 'doacoes_entregues';

  @override
  DoacoesEntreguesRow createRow(Map<String, dynamic> data) =>
      DoacoesEntreguesRow(data);
}

class DoacoesEntreguesRow extends SupabaseDataRow {
  DoacoesEntreguesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DoacoesEntreguesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get produto => getField<String>('produto');
  set produto(String? value) => setField<String>('produto', value);

  String? get funcproex => getField<String>('funcproex');
  set funcproex(String? value) => setField<String>('funcproex', value);

  String? get quantidade => getField<String>('quantidade');
  set quantidade(String? value) => setField<String>('quantidade', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  String? get idDoacao => getField<String>('id_doacao');
  set idDoacao(String? value) => setField<String>('id_doacao', value);

  int? get idCli => getField<int>('id_cli');
  set idCli(int? value) => setField<int>('id_cli', value);
}
