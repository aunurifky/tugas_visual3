unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, frxpngimage, ExtCtrls;

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
    PROFIL1: TMenuItem;
    Image1: TImage;
    NAMA1: TMenuItem;
    procedure DOSEN1Click(Sender: TObject);
    procedure KELAS1Click(Sender: TObject);
    procedure KHS1Click(Sender: TObject);
    procedure MAHASISWA1Click(Sender: TObject);
    procedure MATAKULIAH1Click(Sender: TObject);
    procedure PENILAIAN1Click(Sender: TObject);
    procedure NAMA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit6, Unit5, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm2.DOSEN1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm2.KELAS1Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm2.KHS1Click(Sender: TObject);
begin
Form6.show;
end;

procedure TForm2.MAHASISWA1Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm2.MATAKULIAH1Click(Sender: TObject);
begin
Form7.show;
end;

procedure TForm2.PENILAIAN1Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm2.NAMA1Click(Sender: TObject);
begin
  form9.show;
end;

end.
 