<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="GeneDiseaseDatabase.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <link href="Buttondatabase.css" rel="stylesheet" type="text/css" />
     <link href="Button.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>

    <img src="baylor logo.png" alt="Smiley face" height="200" style="width: 774px"/>

    <div>  
        <br />
    </div>

    <form id="form1" runat="server">
         <div>
           <asp:Button ID="ViewButton" runat="server" class="buttondatabase" Text="Views" OnClick="ViewButton_Click" />
            <asp:Button ID="AddButton" runat="server" class="buttondatabase" Text="Add" OnClick="AddButton_Click" />
            <asp:Button ID="UpdateButton" runat="server" class="buttondatabase" Text="Update" OnClick="UpdateButton_Click" />
            <asp:Button ID="DeleteButton" runat="server" class="buttondatabase" Text="Delete" OnClick="DeleteButton_Click" />
            <asp:Button ID="LoginBotton" runat="server" class="button"  Text="Log Out" OnClick="LoginBotton_Click" Width="80px" />
             <br />
            
        </div>
        <br />
        &nbsp;&nbsp;
        <asp:Panel ID="ViewPanel" runat="server" Height="1000px" BackColor="white" Visible="False">
        <br />
        <asp:Button ID="Button_ViewRecord" runat="server" class="button" Text="ViewRecord" Height="54px" Width="225px" BackColor="LightGreen" OnClick="Button_ViewRecord_Click"/>
       <asp:Button ID="ViewDiseaseInfromation" runat="server" BackColor="LightGreen" class="button" Height="54px" OnClick="Epidemiology_Click" Text="Epidemiology" Width="225px" />
       <asp:Button ID="PatientCost" runat="server" class="button" Height="54px" Text="Patient Cost" Width="225px" BackColor="LightGreen" OnClick="PatientCost_Click" />
      
        <asp:Button ID="PatientDiagnosis" runat="server" class="button" Height="54px" OnClick="PatientDiagnosis_Click" Text="Patient Diagnosis" BackColor="LightGreen" Width="225px" />
        
        <asp:Button ID="GenomicAnalysis" runat="server" class="button" Height="54px" Text="Genomic Analysis" Width="225px" BackColor="LightGreen" OnClick="GenomicAnalysis_Click" />
        <br />
        <br />
            <asp:Panel ID="Panel_ViewRecordInside" runat="server" Visible="false" Width="607px">
                <asp:Label ID="Label_ViewRecordTable" runat="server" Text="Select Record" ></asp:Label>
                
                <asp:DropDownList ID="DropDownList_ViewRecord" runat="server" AutoPostBack="True" Width="157px">
                    <asp:ListItem Selected="True">Select Table</asp:ListItem>
                    <asp:ListItem>Patient</asp:ListItem>
                    <asp:ListItem>Disease</asp:ListItem>
                    <asp:ListItem>Gene</asp:ListItem>
                    <asp:ListItem>Pathway</asp:ListItem>
                    <asp:ListItem>DNA</asp:ListItem>
                    <asp:ListItem>RNA</asp:ListItem>
                    <asp:ListItem>Protein</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label_ViewRecordforAllMessage" runat="server" Text="Enter '1' to view all records." BackColor="lightgreen"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label_ViewRecordTextBox" Text="Enter ID  " runat="server" ></asp:Label>
               <asp:TextBox ID="TextBox_ViewRecordInside" runat="server" BorderStyle="Solid"></asp:TextBox>
                <asp:Button ID="Button_ViewRecordInside" runat="server"  Text="Submit" OnClick="Button_ViewRecordInside_Click" />
                <br />
                <br />
                <br />
                </asp:Panel>

                <asp:Panel ID="Panel_Epidemiology" runat="server" Visible="false" Width="607px">
                    
                    <asp:Label ID="Label__Epidemiology"  Text="Enter Disease Name  " runat ="server" ></asp:Label>
                    <asp:TextBox ID="TextBox__Epidemiology" runat="server" BorderStyle="Solid"></asp:TextBox>
                    <asp:Button ID="Button_ViewRecord_Epidemiology" runat="server"  Text="Submit" OnClick="Button_ViewRecord_Epidemiology_Click" />
                    <br />
                    <br />
                    &nbsp;</asp:Panel>


                <asp:Panel ID="Panel_PatientCost" runat="server" Visible="false" Width="607px">
                    
                    <asp:Label ID="Label_PatientCost" Text="Enter Patient ID  " runat="server" ></asp:Label>
                    <asp:TextBox ID="TextBox_PatientCost" runat="server" BorderStyle="Solid"></asp:TextBox>
                    <asp:Button ID="Button_ViewRecordPatientCost" runat="server" Text="Submit" OnClick="Button_ViewRecordPatientCost_Click" />
                    <br />
                    <br />
                </asp:Panel>

                <asp:Panel ID="Panel_PatientDiagnosis" runat="server" Visible="false" Width="607px">
                    
                    <asp:Label ID="Label_PatientDiagnosis" Text="Enter Symptom  " runat="server" ></asp:Label>
                    <asp:TextBox ID="TextBox_PatientDiagnosis" runat="server" BorderStyle="Solid"></asp:TextBox>
                    <asp:Button ID="Button_ViewRecordPatientDiagnosis" runat="server"  Text="Submit" OnClick="Button_ViewRecordPatientDiagnosis_Click" />
                    <br />
                    &nbsp;</asp:Panel>


                <asp:Panel ID="Panel_GenomicAnalysis" runat="server" Visible="false" Width="607px">
                    
                    <asp:Label ID="Label_GenomicAnalysis" Text="Enter Gene ID  " runat="server" ></asp:Label>
                    <asp:TextBox ID="TextBox__GenomicAnalysis" runat="server" BorderStyle="Solid"></asp:TextBox>
                    <asp:Button ID="Button_GenomicAnalysis" runat="server"  Text="Submit" OnClick="Button_GenomicAnalysis_Click" />
                    <br />
                    <br />
                </asp:Panel>




            
            <asp:GridView ID="GridView_Record" runat="server" CellPadding="4" Visible="False" Width="705px" Height="246px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" ForeColor="Black">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
             </asp:GridView>
            


            <br />
            <asp:Label ID="Label_RecordNotFound" runat="server" Text="" BackColor="Yellow"></asp:Label>
            


            </asp:Panel>



        <asp:Panel ID="AddPanel" runat="server" Height="500px" BackColor="#99ff99" Visible ="False">
            <br />
            Please provide Gene Information:
            <asp:Label ID="Label_AddGeneSuccess" runat="server" Text="" Visible="false" BackColor="Yellow"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Gene ID&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1_geneid" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Symbol &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2_genesymbol" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox3_genename" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type &nbsp;&nbsp;
            <asp:TextBox ID="TextBox4_genetype" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp; Organism&nbsp; &nbsp;
            <asp:TextBox ID="TextBox5_organism" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alias &nbsp;&nbsp;
            <asp:TextBox ID="TextBox6_genealias" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;Comment&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7_genecomment" runat="server" Width="868px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_AddGene" runat="server" class="button" Height="40px" Text="Submit" Width="150px" OnClick="Button_AddGene_Click"  />
        </asp:Panel>
        <asp:Panel ID="UpdatePanel" runat="server" Height="500px" BackColor="#ff9966" Visible ="False">
            <br />
            Please provide Gene ID and press Submit :
            <asp:Label ID="Label_UpdateGeneSuccess" runat="server" BackColor="Yellow" Text="" Visible="false"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Gene ID&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1_geneid0" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;<asp:Button ID="Button_getGeneIDforUpdate" runat="server"  Text="Submit" OnClick="Button_getGeneIDforUpdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Symbol &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2_genesymbol0" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox3_genename0" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type &nbsp;&nbsp;
            <asp:TextBox ID="TextBox4_genetype0" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp; Organism&nbsp; &nbsp;
            <asp:TextBox ID="TextBox5_organism0" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alias &nbsp;&nbsp;
            <asp:TextBox ID="TextBox6_genealias0" runat="server" Width="300px" BorderStyle="Solid"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;Comment&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7_genecomment0" runat="server" Width="872px" BorderStyle="Solid"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button_GeneUpdate" runat="server" class="button" Height="40px" Text="Update" Width="150px" OnClick="Button_GeneUpdate_Click" />
        </asp:Panel>
        <asp:Panel ID="DeletePanel" runat="server" Height="500px" BackColor="#ffcccc" Visible ="False">
            <br />
            Please provide information for deletion :<br />
            <br />
            <asp:Panel ID="Panel_DeleteRecordInside" runat="server" Visible="true" Width="607px">
                <asp:Label ID="Label_DeleteRecord" runat="server" Text="Select Record"></asp:Label>
                <asp:DropDownList ID="DropDownList_DeleteRecord" runat="server" AutoPostBack="True" Width="157px">
                    <asp:ListItem Selected="True">Select Table</asp:ListItem>
                    <asp:ListItem>Patient</asp:ListItem>
                    <asp:ListItem>Disease</asp:ListItem>
                    <asp:ListItem>Gene</asp:ListItem>
                    <asp:ListItem>Pathway</asp:ListItem>
                    <asp:ListItem>DNA</asp:ListItem>
                    <asp:ListItem>RNA</asp:ListItem>
                    <asp:ListItem>Protein</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label_DeleteRecordTextBox" runat="server" Text="Enter ID  "></asp:Label>
                <asp:TextBox ID="TextBox_DeleteRecord" runat="server" BorderStyle="Solid"></asp:TextBox>
                <asp:Button ID="Button_DeleteRecord" runat="server"  Text="Submit" OnClick="Button_DeleteRecord_Click" />
                <br />
                <br />
                <br />
                <asp:Label ID="Label_DeleteMessage" runat="server" Text="" BackColor="Yellow"></asp:Label>
            </asp:Panel>
        </asp:Panel>

  
    </form>
</body>
</html>
