unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    M1: TMenuItem;
    LOGOUT1: TMenuItem;
    DOSEN1: TMenuItem;
    KELAS1: TMenuItem;
    KHS1: TMenuItem;
    MAHASISWA1: TMenuItem;
    MATAKULIAH1: TMenuItem;
    PENILAIAN1: TMenuItem;
    procedure DOSEN1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm2.DOSEN1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm2.KELAS1Click(Sender: TObject);
begin
Form4.show;
end;

end.
 