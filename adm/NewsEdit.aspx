﻿<%@ page language="C#" autoeventwireup="true" inherits="adm_NewsEdit, App_Web_ynx5q1ww" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="NOINDEX, NOFOLLOW" />
    <title></title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/css/jquery-ui.min.css" rel="stylesheet" />
    <link href="/css/bootstrap-select.min.css" rel="stylesheet" />
    <link href="/css/admin-style.css" rel="stylesheet" />
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.ui.datepicker-vi-VN.js"></script>
    <script src="/ckfinder/ckfinder.js"></script>
    <script src="/ckeditor/ckeditor.js"></script>
    <script src="/js/bootstrap-select.min.js"></script>
</head>
<body style="background: none;">
<form id="form1" runat="server">
        <div id="news-edit">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-sm-9">
                                <div class="form-group form-group-sm">
                                    <label for="Ad_txtTitle">Tiêu đề</label>
                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Tiêu đề"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group form-group-sm">
                                    <label for="Ad_txtAvatar">Avatar</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtAvatar" runat="server" class="form-control" placeholder="Avatar"></asp:TextBox>
                                        <span class="input-group-btn">
                                            <button onclick="BrowseServer('Images:/images/', 'txtAvatar');" class="btn btn-sm btn-default" type="button"><i class="fa fa-folder-open text-primary"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-9">
                                <div class="form-group form-group-sm">
                                    <label for="Ad_txtDescription">Mô tả ngắn</label>
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Mô tả"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group form-group-sm">
                                    <label for="Ad_chkDiscontinued">Trạng thái</label>
                                    <div class="checkbox">
                                        <label>
                                            <asp:CheckBox ID="chkDiscontinued" runat="server" />Tin ẩn</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group form-group-sm">
                                    <label for="Ad_txtKeyword">Từ khóa</label>
                                    <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="Từ khóa"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group form-group-sm">
                                    <label for="Ad_txtUrl">Url</label>
                                    <asp:TextBox ID="txtUrl" runat="server" CssClass="form-control" placeholder="Url"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group form-group-sm">
                                    <label style="color: transparent;"></label>
                                    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:Button ID="Button1" runat="server" Text="Lưu tin" CssClass="btn btn-sm btn-success btn-save" OnClick="btnSave_Click" />
                                            <button class="btn btn-sm btn-default btn-cancel" onclick="close_me()">Bỏ qua</button>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <CKEditor:CKEditorControl ID="txtDetail" Skin="moonocolor" Height="430" runat="server"></CKEditor:CKEditorControl>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="/js/ad_js.js"></script>
<script>
    function close_me() {
        parent.close_edit_news();
    }

    function reload_news() {
        parent.reload_news();
    }
</script>
</html>
