object FormGuide: TFormGuide
  Left = 219
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1080#1089#1086#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1084#1072#1090#1080#1095#1077#1089#1082#1080#1093' '#1092#1086#1088#1084#1091#1083
  ClientHeight = 483
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    739
    483)
  PixelsPerInch = 120
  TextHeight = 16
  object ListBox: TListBox
    Left = 8
    Top = 8
    Width = 241
    Height = 465
    ItemHeight = 16
    Sorted = True
    TabOrder = 0
    OnClick = ListBoxClick
  end
  object Memo: TMemo
    Left = 256
    Top = 8
    Width = 473
    Height = 193
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object ScrollBox1: TScrollBox
    Left = 256
    Top = 208
    Width = 473
    Height = 265
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Color = clInfoBk
    ParentColor = False
    TabOrder = 2
    object Image: TImage
      Left = 0
      Top = 0
      Width = 129
      Height = 129
      Transparent = True
    end
  end
  object BtnPrint: TBitBtn
    Left = 15
    Top = 562
    Width = 99
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 3
    OnClick = BtnPrintClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00030888888888888880088888888888888000000000000000000F8F8F8F8F8F
      8F8008F8F8F8F8F8F9F00F8F8F8F8F8F8F8000000000000000003330FFFFFFFF
      03333330F0000F0F03333330FFFFFFFF03333330F00F000003333330FFFF0FF0
      33333330F08F0F0333333330FFFF003333333330000003333333}
  end
end
