<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment_1._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Making a row for the heading to live.--%>
    <div class="row">
        <section class="col-sm-12 col-md-12 col-lg-12">
            <h1>Game Calculator</h1>
            <h6 class="badge">All fields are required. No ties or draws are allowed.</h6>
        </section>
    </div>
    <%-- End of row --%>
    <div class="row">
        <section class="col-sm-3 col-md-3">
            <div class="well">
                <h2>Game 1</h2>
                <%-- Result1 - Win or Lose --%>
                <asp:Label Text="Result:" ID="lblResult1" runat="server" CssClass="col-sm-4" />
                <asp:RadioButtonList ID="rblResult1" runat="server" CssClass="col-sm-8">
                    <asp:ListItem Text="Win" Value="Win" />
                    <asp:ListItem Text="Lose" Value="Lose" />
                </asp:RadioButtonList>
                <%-- End of Result --%>
                <%--Scored1 TextBox--%>
                <asp:Label Text="Scored:" runat="server" ID="lblScored1" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtScored1" CssClass="col-sm-8" />
                <%-- End of Scored1 --%>
                <%--Allowed TextBox--%>
                <asp:Label Text="Allowed:" runat="server" ID="lblAllowed1" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtAllowed1" CssClass="col-sm-8" />
                <%--End of Allowed1--%>
                <%--Spectators1 TextBox--%>
                <asp:Label Text="Spectators:" runat="server" ID="lblSpectators1" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtSpectators1" CssClass="col-sm-8" />
                <%--End of Spectators1--%>
                <%--Validaing Game 1--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Result must be selected." ControlToValidate="rblResult1" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="You have to use a number 0 or higher for Scored" ControlToValidate="txtScored1" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Allowed must be selected." ControlToValidate="txtAllowed1" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="You have to use a number 0 or higher for Allowed" ControlToValidate="txtAllowed1" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The game can not be tied, one must win." ControlToValidate="txtScored1" ControlToCompare="txtAllowed1" Operator="NotEqual" CssClass="label label-danger"></asp:CompareValidator>
                <asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="You have to use a number 0 or higher for Spectators" ControlToValidate="txtSpectators1" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <%--End of Validating--%>
            </div>
        </section>
        <section class="col-sm-3 col-md-3">
            <div class="well">
                <h2>Game 2</h2>
                <%-- Result2 - Win or Lose --%>
                <asp:Label Text="Result:" ID="lblResult2" runat="server" CssClass="col-sm-4" />
                <asp:RadioButtonList ID="rblResult2" runat="server" CssClass="col-sm-8">
                    <asp:ListItem Text="Win" />
                    <asp:ListItem Text="Lose" />
                </asp:RadioButtonList>
                <%-- End of Result2 --%>
                <%--Scored2 TextBox--%>
                <asp:Label Text="Scored:" runat="server" ID="lblScored2" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtScored2" CssClass="col-sm-8" />
                <%-- End of Scored2 --%>
                <%--Allowed2 TextBox--%>
                <asp:Label Text="Allowed:" runat="server" ID="lblAllowed2" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtAllowed2" CssClass="col-sm-8" />
                <%--End of Allow2 --%>
                <%--Spectators2 TextBox--%>
                <asp:Label Text="Spectators:" runat="server" ID="lblSpectators2" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtSpectators2" CssClass="col-sm-8" />
                <%--End of Spectators2--%>
                <%--Validaing Game 2--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Result must be selected." ControlToValidate="rblResult2" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="You have to use a number 0 or higher for Scored" ControlToValidate="txtScored2" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Allowed must be selected." ControlToValidate="txtAllowed2" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="You have to use a number 0 or higher for Allowed" ControlToValidate="txtAllowed2" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="The game can not be tied, one must win." ControlToValidate="txtScored2" ControlToCompare="txtAllowed2" Operator="NotEqual" CssClass="label label-danger"></asp:CompareValidator>
                <asp:RangeValidator ID="RangeValidator10" runat="server" ErrorMessage="You have to use a number 0 or higher for Spectators" ControlToValidate="txtSpectators2" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <%--End of Validating--%>
            </div>

        </section>
        <section class="col-sm-3 col-md-3">
            <div class="well">
                <h2>Game 3</h2>
                <%-- Result3 - Win or Lose --%>
                <asp:Label Text="Result:" ID="lblResult3" runat="server" CssClass="col-sm-4" />
                <asp:RadioButtonList ID="rblResult3" runat="server" CssClass="col-sm-8">
                    <asp:ListItem Text="Win" />
                    <asp:ListItem Text="Lose" />
                </asp:RadioButtonList>
                <%-- End of Result3 --%>
                <%--Scored3 TextBox--%>
                <asp:Label Text="Scored:" runat="server" ID="lblScored3" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtScored3" CssClass="col-sm-8" />
                <%-- End of Scored3 --%>
                <%--Allowed3 TextBox--%>
                <asp:Label Text="Allowed:" runat="server" ID="lblAllowed3" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtAllowed3" CssClass="col-sm-8" />
                <%--End of Allow3 --%>
                <%--Spectators3 TextBox--%>
                <asp:Label Text="Spectators:" runat="server" ID="lblSpectators3" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtSpectators3" CssClass="col-sm-8" />
                <%--End of Spectators3--%>
                <%--Validaing Game 3--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Result must be selected." ControlToValidate="rblResult3" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="You have to use a number 0 or higher for Scored" ControlToValidate="txtScored3" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Allowed must be selected." ControlToValidate="txtAllowed3" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="You have to use a number 0 or higher for Allowed" ControlToValidate="txtAllowed3" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="The game can not be tied, one must win." ControlToValidate="txtScored3" ControlToCompare="txtAllowed3" Operator="NotEqual" CssClass="label label-danger"></asp:CompareValidator>
               <asp:RangeValidator ID="RangeValidator11" runat="server" ErrorMessage="You have to use a number 0 or higher for Spectators" ControlToValidate="txtSpectators3" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                 <%--End of Validating--%>
            </div>
        </section>
        <section class="col-sm-3 col-md-3">
            <div class="well">
                <h2>Game 4</h2>
                <%-- Result4 - Win or Lose --%>
                <asp:Label Text="Result:" ID="lblResult4" runat="server" CssClass="col-sm-4" />
                <asp:RadioButtonList ID="rblResult4" runat="server" CssClass="col-sm-8">
                    <asp:ListItem Text="Win" />
                    <asp:ListItem Text="Lose" />
                </asp:RadioButtonList>
                <%-- End of Result4 --%>
                <%--Scored4 TextBox--%>
                <asp:Label Text="Scored:" runat="server" ID="lblScored4" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtScored4" CssClass="col-sm-8" />
                <%-- End of Scored4 --%>
                <%--Allowed4 TextBox--%>
                <asp:Label Text="Allowed:" runat="server" ID="lblAllowed4" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtAllowed4" CssClass="col-sm-8" />
                <%--End of Allow4 --%>
                <%--Spectators4 TextBox--%>
                <asp:Label Text="Spectators:" runat="server" ID="lblSpectators4" CssClass="col-sm-4" />
                <asp:TextBox runat="server" ID="txtSpectators4" CssClass="col-sm-8" />
                <%--End of Spectators4--%>
                <%--Validaing Game 4--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Result must be selected." ControlToValidate="rblResult4" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="You have to use a number 0 or higher for Scored" ControlToValidate="txtScored4" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Allowed must be selected." ControlToValidate="txtAllowed4" CssClass="label label-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="You have to use a number 0 or higher for Allowed" ControlToValidate="txtAllowed4" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="The game can not be tied, one must win." ControlToValidate="txtScored4" ControlToCompare="txtAllowed4" Operator="NotEqual" CssClass="label label-danger"></asp:CompareValidator>
                <asp:RangeValidator ID="RangeValidator12" runat="server" ErrorMessage="You have to use a number 0 or higher for Spectators" ControlToValidate="txtSpectators4" MinimumValue="0" MaximumValue="99999999" CssClass="label label-danger"></asp:RangeValidator>
                <%--End of Validating--%>
            </div>
        </section>
    </div>
    <%-- End of row --%>
    <div class="row">
        <section class="col-sm-12 col-md-12 col-lg-12">
            <div class="text-center">
                <asp:Button Text="Calculate Totals" runat="server" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
            </div>
        </section>
    </div>
    <div class="well">
        <div>
            <h2>Results</h2>
        </div>
        <div class="row">
            <asp:Label Text="Wins:" ID="lblWins" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Losses:" ID="lblLosses" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Winning %:" ID="lblWinningPercent" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Points Scored:" ID="lblPointsScored" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Points Allowed:" ID="lblPointsAllowed" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Point Differential:" ID="lblPointDifferential" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Total Attendance:" ID="lblTotalAttendance" runat="server" />
        </div>
        <div class="row">
            <asp:Label Text="Average Attendance:" ID="lblAverageAttendance" runat="server" />
        </div>
    </div>
</asp:Content>
