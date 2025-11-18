import '../database.dart';

class VwEmpresasDoacoesTable extends SupabaseTable<VwEmpresasDoacoesRow> {
  @override
  String get tableName => 'vw_empresas_doacoes';

  @override
  VwEmpresasDoacoesRow createRow(Map<String, dynamic> data) =>
      VwEmpresasDoacoesRow(data);
}

class VwEmpresasDoacoesRow extends SupabaseDataRow {
  VwEmpresasDoacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwEmpresasDoacoesTable();

  int? get idEmpresa => getField<int>('id_empresa');
  set idEmpresa(int? value) => setField<int>('id_empresa', value);

  String? get empresaNome => getField<String>('empresa_nome');
  set empresaNome(String? value) => setField<String>('empresa_nome', value);

  int? get idCli => getField<int>('id_cli');
  set idCli(int? value) => setField<int>('id_cli', value);
}
