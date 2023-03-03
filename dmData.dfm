object dmDatos: TdmDatos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 336
  Width = 431
  object Connection: TFDConnection
    Params.Strings = (
      
        'Database=D:\Users\pjpeg\Source\Repos\Delphi\SQLLiteDemo\AppDirec' +
        'torio\Data\dbdirectorio.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 72
    Top = 14
  end
  object RolesTable: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM roles')
    Left = 72
    Top = 63
    object RolesTablerol_nid: TIntegerField
      FieldName = 'rol_nid'
      Origin = 'rol_nid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RolesTablerol_cnombre: TWideStringField
      FieldName = 'rol_cnombre'
      Origin = 'rol_cnombre'
      Required = True
      Size = 100
    end
  end
  object UsuariosTable: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 72
    Top = 161
    object UsuariosTableusu_nid: TFDAutoIncField
      FieldName = 'usu_nid'
      Origin = 'usu_nid'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object UsuariosTableusu_cnombre: TWideStringField
      FieldName = 'usu_cnombre'
      Origin = 'usu_cnombre'
      Required = True
      Size = 100
    end
    object UsuariosTableusu_ccargo: TWideStringField
      FieldName = 'usu_ccargo'
      Origin = 'usu_ccargo'
      Required = True
      Size = 100
    end
    object UsuariosTableusu_cnum_celular: TWideStringField
      FieldName = 'usu_cnum_celular'
      Origin = 'usu_cnum_celular'
      Size = 50
    end
    object UsuariosTableusu_cnum_tele_fijo: TWideStringField
      FieldName = 'usu_cnum_tele_fijo'
      Origin = 'usu_cnum_tele_fijo'
      Size = 50
    end
    object UsuariosTableusu_cnum_extension: TWideStringField
      FieldName = 'usu_cnum_extension'
      Origin = 'usu_cnum_extension'
      Size = 10
    end
    object UsuariosTableusu_nperfil: TIntegerField
      FieldName = 'usu_nperfil'
      Origin = 'usu_nperfil'
    end
    object UsuariosTableusu_cestado: TWideStringField
      FieldName = 'usu_cestado'
      Origin = 'usu_cestado'
      Size = 10
    end
    object UsuariosTableusu_cusuario: TWideStringField
      FieldName = 'usu_cusuario'
      Origin = 'usu_cusuario'
      Size = 100
    end
    object UsuariosTableusu_cpassword: TWideStringField
      FieldName = 'usu_cpassword'
      Origin = 'usu_cpassword'
      Size = 100
    end
  end
  object DriverLink: TFDPhysSQLiteDriverLink
    Left = 72
    Top = 112
  end
  object EstadosTable: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM estados')
    Left = 72
    Top = 214
    object EstadosTableest_nid: TIntegerField
      FieldName = 'est_nid'
      Origin = 'est_nid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object EstadosTableest_cestado: TWideStringField
      FieldName = 'est_cestado'
      Origin = 'est_cestado'
      Required = True
      Size = 10
    end
  end
  object CargosTable: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT car_nid, CAST(car_cnombre AS TEXT(100)) AS car_cnombre'
      'FROM cargos;')
    Left = 72
    Top = 259
    object CargosTablecar_nid: TFDAutoIncField
      FieldName = 'car_nid'
      Origin = 'car_nid'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CargosTablecar_cnombre: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'car_cnombre'
      Origin = 'car_cnombre'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object qUsuarios: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 168
    Top = 152
  end
end
