unit USistemaException;

interface

uses SysUtils;

type
  ESistemaException = class(Exception)
  end;

  EPersistentException = class(ESistemaException)
  end;

  EContaException = class(EPersistentException)
  end;

  ELimiteEnquadramentoException = class(ESistemaException)
  end;

  ESaldoContaException = class(ESistemaException)
  end;

  EInicializacaoPeriodoContabilException = class(ESistemaException)
  end;

  EFiltroException = class(ESistemaException)
  end;

  EExportException = class(ESistemaException)
  end;

  EImportException = class(ESistemaException)
  end;

  EAtualizaException = class(ESistemaException)
  end;  

  ELoadNfeException = class(EImportException)
  end;

  ELicenceException = class(ESistemaException)
  end;

  EInvalidImportSelection = class(EImportException)
  end;

implementation

end. 
