program mestreDetalhe;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  dm in 'dm.pas' {dmodule: TDataModule},
  unPedido in 'unPedido.pas' {frmPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdmodule, dmodule);
  Application.Run;
end.
