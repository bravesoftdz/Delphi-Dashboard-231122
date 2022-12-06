unit CardInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TCardInfoStatic = class(TFrame)
    pnlContainer: TPanel;
    pnlImage: TPanel;
    Image: TImage;
    pnlInformacoes: TPanel;
    lblTitulo: TLabel;
    lblDetalhes: TLabel;
  private
    FPathImage: String;
    FPicture: TPicture;
    FDetails: String;
    FTitle: String;
    FSizeTitle: Integer;
    FColorDetails: TColor;
    FBackground: TColor;
    FFontDetails: TFontName;
    FSizeDetails: Integer;
    FColorTitle: TColor;
    FFontTitle: TFontName;
    procedure SetPathImage(const Value: String);
    procedure SetPicture(const Value: TPicture);
    procedure SetDetails(const Value: String);
    procedure SetTitle(const Value: String);
    procedure SetBackground(const Value: TColor);
    procedure SetColorDetails(const Value: TColor);
    procedure SetColorTitle(const Value: TColor);
    procedure SetFontDetails(const Value: TFontName);
    procedure SetFontTitle(const Value: TFontName);
    procedure SetSizeDetails(const Value: Integer);
    procedure SetSizeTitle(const Value: Integer);
    { Private declarations }
  public
    Property Picture: TPicture read FPicture write SetPicture;
  published
    property Background: TColor read FBackground write SetBackground;
    property PathImage: String read FPathImage write SetPathImage;
    Property Title: String read FTitle write SetTitle;
    property ColorTitle: TColor read FColorTitle write SetColorTitle;
    property SizeTitle: Integer read FSizeTitle write SetSizeTitle;
    property FontTitle: TFontName read FFontTitle write SetFontTitle;
    property Details: String read FDetails write SetDetails;
    property ColorDetails: TColor read FColorDetails write SetColorDetails;
    property SizeDetails: Integer read FSizeDetails write SetSizeDetails;
    property FontDetails: TFontName read FFontDetails write SetFontDetails;
  end;

procedure Register;

implementation

{$R *.dfm}

Procedure Register;
begin
  RegisterComponents('Componentes Visuais',[TCardInfoStatic]);
end;

procedure TCardInfoStatic.SetBackground(const Value: TColor);
begin
  FBackground := Value;
  pnlContainer.Color := FBackground;
end;

procedure TCardInfoStatic.SetColorDetails(const Value: TColor);
begin
  FColorDetails := Value;
  lblDetalhes.Font.Color := FColorDetails;
end;

procedure TCardInfoStatic.SetColorTitle(const Value: TColor);
begin
  FColorTitle := Value;
  lblTitulo.Font.Color :=  FColorTitle
end;

procedure TCardInfoStatic.SetDetails(const Value: String);
begin
  FDetails := Value;
  lblDetalhes.Caption := FDetails;
end;

procedure TCardInfoStatic.SetFontDetails(const Value: TFontName);
begin
  FFontDetails := Value;
  lblDetalhes.Font.Name := FFontDetails;
end;

procedure TCardInfoStatic.SetFontTitle(const Value: TFontName);
begin
  FFontTitle := Value;
  lblTitulo.Font.Name := FFontTitle;
end;

procedure TCardInfoStatic.SetPathImage(const Value: String);
begin
  FPathImage := Value;
  Image.Picture.LoadFromFile(FPathImage);
end;

procedure TCardInfoStatic.SetPicture(const Value: TPicture);
begin
  FPicture := Value;
  Image.Picture := FPicture;
end;

procedure TCardInfoStatic.SetSizeDetails(const Value: Integer);
begin
  FSizeDetails := Value;
  lblDetalhes.Font.Size := FSizeDetails;
end;

procedure TCardInfoStatic.SetSizeTitle(const Value: Integer);
begin
  FSizeTitle := Value;
  lblTitulo.Font.Size := FSizeTitle;
end;

procedure TCardInfoStatic.SetTitle(const Value: String);
begin
  FTitle := Value;
  lblTitulo.Caption := FTitle;
end;
end.
