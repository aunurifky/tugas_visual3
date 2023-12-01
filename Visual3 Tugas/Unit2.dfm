object Form2: TForm2
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 16
    Top = 16
    object M1: TMenuItem
      Caption = 'MENU'
      object DOSEN1: TMenuItem
        Caption = 'DOSEN'
        OnClick = DOSEN1Click
      end
      object KELAS1: TMenuItem
        Caption = 'KELAS'
        OnClick = KELAS1Click
      end
      object KHS1: TMenuItem
        Caption = 'KHS'
      end
      object MAHASISWA1: TMenuItem
        Caption = 'MAHASISWA'
      end
      object MATAKULIAH1: TMenuItem
        Caption = 'MATA KULIAH'
      end
      object PENILAIAN1: TMenuItem
        Caption = 'PENILAIAN'
      end
    end
    object LOGOUT1: TMenuItem
      Caption = 'LOGOUT'
    end
  end
end
