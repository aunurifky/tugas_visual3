unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm7 = class(TForm)
    l2: TLabel;
    l1: TLabel;
    l4: TLabel;
    dbgrd1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    e_1: TEdit;
    e_2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    I_1: TLabel;
    e_3: TEdit;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
     procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure b6Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  kode_mk:string;

implementation

{$R *.dfm}

procedure TForm7.b1Click(Sender: TObject);
begin
b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
end;

procedure TForm7.b2Click(Sender: TObject);
begin
if e_1.Text='' then
  begin
    ShowMessage('KODE MK BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('NAMA MK BELUM DIISI DENGAN BENAR');
    end else
     if e_3.Text=''then
    begin
     ShowMessage('SKS BELUM DIISI DENGAN BENAR');
    end else
    
  if Form7.zqry1.Locate('kode_mk',e_1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into mata_kuliah values("'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from mata_kuliah');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
end;
end;

procedure TForm7.b3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or (e_3.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update mata_kuliah set kode_mk= "'+e_1.Text+'",nama_mk="'+e_2.Text+'",sks="'+e_3.Text+'"where kode_mk="'+kode_mk+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from dmata_kuliah');
zqry1.Open;
end;

end;

procedure TForm7.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from mata_kuliah where kode_mk="'+kode_mk+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from mata_kuliah');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
end;

end;




procedure TForm7.posisiawal;
begin
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b5.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
kode_mk:= zqry1.Fields[0].AsString;
e_2.Text:= zqry1.Fields[1].AsString;
e_3.Text:= zqry1.Fields[2].AsString;


e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;


b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
end;



procedure TForm7.b5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm7.b6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;


procedure TForm7.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
bersih;
b1.Enabled:=true;
b2.Enabled:=false;
b3.Enabled:=false;
b4.Enabled:=false;
b5.Enabled:=false;
b6.Enabled:=false;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
end;



end.