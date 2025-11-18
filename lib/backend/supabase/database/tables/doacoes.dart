import '../database.dart';

class DoacoesTable extends SupabaseTable<DoacoesRow> {
  @override
  String get tableName => 'doacoes';

  @override
  DoacoesRow createRow(Map<String, dynamic> data) => DoacoesRow(data);
}

class DoacoesRow extends SupabaseDataRow {
  DoacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DoacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idEmpresa => getField<int>('id_empresa');
  set idEmpresa(int? value) => setField<int>('id_empresa', value);

  String? get produto => getField<String>('produto');
  set produto(String? value) => setField<String>('produto', value);

  String? get funcproex => getField<String>('funcproex');
  set funcproex(String? value) => setField<String>('funcproex', value);

  String? get funcempresa => getField<String>('funcempresa');
  set funcempresa(String? value) => setField<String>('funcempresa', value);

  String? get quantidade => getField<String>('quantidade');
  set quantidade(String? value) => setField<String>('quantidade', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  String? get idDoacao => getField<String>('id_doacao');
  set idDoacao(String? value) => setField<String>('id_doacao', value);

  String? get empresaNome => getField<String>('empresa_nome');
  set empresaNome(String? value) => setField<String>('empresa_nome', value);

  int? get idCli => getField<int>('id_cli');
  set idCli(int? value) => setField<int>('id_cli', value);

  bool? get excluida => getField<bool>('excluida');
  set excluida(bool? value) => setField<bool>('excluida', value);
}
