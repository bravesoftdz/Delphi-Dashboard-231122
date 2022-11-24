unit CardInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFrame1 = class(TFrame)
    pnlContainer: TPanel;
    pnlImage: TPanel;
    Image1: TImage;
    pnlInformacoes: TPanel;
    lblTitulo: TLabel;
    lblDetalhes: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
