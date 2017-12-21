using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeneDiseaseDatabase
{
    public partial class MainMenu : System.Web.UI.Page
    {
        DatabaseDataContext datacon = new DatabaseDataContext();

        

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        // VIEW

        protected void ViewButton_Click(object sender, EventArgs e)
        {
            ViewPanel.Visible = true;
            Label_RecordNotFound.Text = "";

            AddPanel.Visible = false;
            UpdatePanel.Visible = false;
            DeletePanel.Visible = false;


        }

        protected void Button_ViewRecord_Click(object sender, EventArgs e)
        {

            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            Panel_ViewRecordInside.Visible = true;

            Panel_Epidemiology.Visible = false;
            Panel_PatientCost.Visible = false;
            Panel_PatientDiagnosis.Visible = false;
            Panel_GenomicAnalysis.Visible = false;


        }

        protected void Button_ViewRecordInside_Click(object sender, EventArgs e)
        {


            string tableName = DropDownList_ViewRecord.SelectedItem.Text.ToString();
            int rowCount = 0;
            if (tableName.Equals("Patient"))
            {

                var result = datacon.UDSP_ViewRecord_Patient(tableName, Int32.Parse(TextBox_ViewRecordInside.Text));
                GridView_Record.DataSource = result;

                GridView_Record.DataBind();

                rowCount = GridView_Record.Rows.Count;

                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            else if (tableName.Equals("Disease"))
            {

                var result = datacon.UDSP_ViewRecord_Disease(tableName, Int32.Parse(TextBox_ViewRecordInside.Text));
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();
                rowCount = GridView_Record.Rows.Count;
                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }

            else if (tableName.Equals("Gene"))
            {
                var result = datacon.UDSP_ViewRecord_Gene(tableName, TextBox_ViewRecordInside.Text);
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();

                rowCount = GridView_Record.Rows.Count;
                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }

            else if (tableName.Equals("Pathway"))
            {
                var result = datacon.UDSP_ViewRecord_Pathway(tableName, TextBox_ViewRecordInside.Text);
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();

                rowCount = GridView_Record.Rows.Count;
                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }

            else if (tableName.Equals("DNA"))
            {
                var result = datacon.UDSP_ViewRecord_DNA(tableName, TextBox_ViewRecordInside.Text);
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();

                rowCount = GridView_Record.Rows.Count;
                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";
                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            else if (tableName.Equals("RNA"))
            {
                var result = datacon.UDSP_ViewRecord_RNA(tableName, TextBox_ViewRecordInside.Text);
                GridView_Record.DataSource = result; rowCount = GridView_Record.Rows.Count;
                GridView_Record.DataBind();

                rowCount = GridView_Record.Rows.Count;
                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            else if (tableName.Equals("Protein"))
            {
                var result = datacon.UDSP_ViewRecord_Protein(tableName, TextBox_ViewRecordInside.Text);
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();

                rowCount = GridView_Record.Rows.Count;
                GridView_Record.Visible = true;
                TextBox_ViewRecordInside.Text = "";
                DropDownList_ViewRecord.SelectedIndex = 0;
                Label_RecordNotFound.Text = "";

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }



        }

        protected void Epidemiology_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            Panel_ViewRecordInside.Visible = false;
            Panel_Epidemiology.Visible = true;
            Panel_PatientCost.Visible = false;
            Panel_PatientDiagnosis.Visible = false;
            Panel_GenomicAnalysis.Visible = false;
        }

        protected void Button_ViewRecord_Epidemiology_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            try
            {

                var result = datacon.UDSP_Epidemiology(TextBox__Epidemiology.Text);
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();
                GridView_Record.Visible = true;
                TextBox__Epidemiology.Text = "";
                Label_RecordNotFound.Text = " ";

                int rowCount = GridView_Record.Rows.Count;

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            catch (Exception ex)
            {
                Label_RecordNotFound.Text = " Record was not found.";
            }

        }

        protected void PatientCost_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            Panel_ViewRecordInside.Visible = false;
            Panel_Epidemiology.Visible = false;
            Panel_PatientCost.Visible = true;
            Panel_PatientDiagnosis.Visible = false;
            Panel_GenomicAnalysis.Visible = false;
        }

        protected void Button_ViewRecordPatientCost_Click(object sender, EventArgs e)
        {
            GridView_Record.Visible = false;
            Label_RecordNotFound.Text = " ";
            try
            {
                var result = datacon.UDSP_PatientCost(Int32.Parse(TextBox_PatientCost.Text));
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();
                GridView_Record.Visible = true;
                TextBox_PatientCost.Text = "";
                Label_RecordNotFound.Text = " ";

                int rowCount = GridView_Record.Rows.Count;

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            catch (Exception ex)
            {
                Label_RecordNotFound.Text = " Record was not found.";
            }

        }

        protected void PatientDiagnosis_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            Panel_ViewRecordInside.Visible = false;
            Panel_Epidemiology.Visible = false;
            Panel_PatientCost.Visible = false;
            Panel_PatientDiagnosis.Visible = true;
            Panel_GenomicAnalysis.Visible = false;
        }

        protected void Button_ViewRecordPatientDiagnosis_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            try
            {

                var result = datacon.UDSP_PatientDiagnosis((TextBox_PatientDiagnosis.Text));
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();
                GridView_Record.Visible = true;
                TextBox_PatientDiagnosis.Text = "";
                Label_RecordNotFound.Text = " ";


                int rowCount = GridView_Record.Rows.Count;

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            catch (Exception ex)
            {
                Label_RecordNotFound.Text = " Record was not found.";
            }
        }

        protected void GenomicAnalysis_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;

            Panel_ViewRecordInside.Visible = false;
            Panel_Epidemiology.Visible = false;
            Panel_PatientCost.Visible = false;
            Panel_PatientDiagnosis.Visible = false;
            Panel_GenomicAnalysis.Visible = true;
        }

        protected void Button_GenomicAnalysis_Click(object sender, EventArgs e)
        {
            Label_RecordNotFound.Text = " ";
            GridView_Record.Visible = false;
            try
            {
                var result = datacon.UDSP_GenomicAnalysis((TextBox__GenomicAnalysis.Text));
                GridView_Record.DataSource = result;
                GridView_Record.DataBind();
                GridView_Record.Visible = true;
                TextBox__GenomicAnalysis.Text = "";
                Label_RecordNotFound.Text = " ";

                int rowCount = GridView_Record.Rows.Count;

                if (rowCount == 0)
                {

                    Label_RecordNotFound.Text = " Record Not Found. ";
                }
            }
            catch (Exception ex)
            {
                Label_RecordNotFound.Text = " Record was not found.";
            }

        }


        // ADD


        protected void AddButton_Click(object sender, EventArgs e)
        {

            AddPanel.Visible = true;
            Label_AddGeneSuccess.Text = "";

            ViewPanel.Visible = false;
            UpdatePanel.Visible = false;
            DeletePanel.Visible = false;



        }


        protected void Button_AddGene_Click(object sender, EventArgs e)
        {
            Label_AddGeneSuccess.Text = "";
            try
            {

                var result = datacon.UDSP_AddGene(
                    TextBox1_geneid.Text,
                    TextBox2_genesymbol.Text,
                    TextBox3_genename.Text,
                    TextBox4_genetype.Text,
                    TextBox5_organism.Text,
                    TextBox6_genealias.Text,
                    TextBox7_genecomment.Text

                    );

                Label_AddGeneSuccess.Visible = true;
                Label_AddGeneSuccess.Text = " Record has been Added.";


            }
            catch (Exception ex)
            {
                Label_AddGeneSuccess.Text = " Record could not be Added.";
            }



            foreach (var btn in AddPanel.Controls)
            {
                TextBox tbx = btn as TextBox;
                if (tbx != null)
                {

                    tbx.Text = "";

                }
            }


        }


        // UPDATE

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            UpdatePanel.Visible = true;
            Label_UpdateGeneSuccess.Text = "";

            ViewPanel.Visible = false;
            AddPanel.Visible = false;
            DeletePanel.Visible = false;
        }

        protected void Button_getGeneIDforUpdate_Click(object sender, EventArgs e)
        {

            Label_UpdateGeneSuccess.Text = "";

            try
            {

                var query = from s in datacon.Genes
                            where (s.EntrezGeneID.Equals(TextBox1_geneid0.Text))
                            select s;


                if (query.Any())
                {


                    Gene g1 = datacon.Genes.Single(p => p.EntrezGeneID.Equals(TextBox1_geneid0.Text));

                    TextBox1_geneid0.Enabled = false;

                    TextBox2_genesymbol0.Text = g1.GeneSymbol;
                    TextBox3_genename0.Text = g1.GeneName;
                    TextBox4_genetype0.Text = g1.GeneType;
                    TextBox5_organism0.Text = g1.Organism;
                    TextBox6_genealias0.Text = g1.GeneAlias;
                    TextBox7_genecomment0.Text = g1.Comment;

                }
                else
                {

                    string display = "Record Not Found. Please Try Again !";
                    ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
                }
            }
            catch
            {
                string display = "Database ERROR. Please Try Again !";
                ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert('" + display + "');", true);
            }
        }

        protected void Button_GeneUpdate_Click(object sender, EventArgs e)
        {
            Label_UpdateGeneSuccess.Text = " ";
            try
            {

                var result = datacon.UDSP_UpdateGene(
                    TextBox1_geneid0.Text,
                    TextBox2_genesymbol0.Text,
                    TextBox3_genename0.Text,
                    TextBox4_genetype0.Text,
                    TextBox5_organism0.Text,
                    TextBox6_genealias0.Text,
                    TextBox7_genecomment0.Text

                    );

                Label_UpdateGeneSuccess.Visible = true;
                Label_UpdateGeneSuccess.Text = " Record has been Updated .";


            }
            catch (Exception ex)
            {
                Label_UpdateGeneSuccess.Text = " Record could not be Updated .";
            }



            foreach (var btn in UpdatePanel.Controls)
            {
                TextBox tbx = btn as TextBox;
                if (tbx != null)
                {

                    tbx.Text = "";

                }
            }
            TextBox1_geneid0.Enabled = true;




        }



       // DELETE

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

            DeletePanel.Visible = true;
            Label_DeleteMessage.Text = "";



            ViewPanel.Visible = false;
            AddPanel.Visible = false;
            UpdatePanel.Visible = false;





        }


        protected void Button_DeleteRecord_Click(object sender, EventArgs e)
        {
            Label_DeleteMessage.Text = "";
            string tableName = DropDownList_DeleteRecord.SelectedItem.Text.ToString();

            if (tableName.Equals("Patient"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_Patient(tableName, Int32.Parse(TextBox_DeleteRecord.Text));

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;



                    Label_DeleteMessage.Text = " Record has been deleted.";
                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }
            else if (tableName.Equals("Disease"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_Disease(tableName, Int32.Parse(TextBox_DeleteRecord.Text));

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;
                    Label_DeleteMessage.Text = " Record has been deleted.";

                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }

            else if (tableName.Equals("Gene"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_Gene(tableName, TextBox_DeleteRecord.Text);

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;
                    Label_DeleteMessage.Text = " Record has been deleted.";

                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }

            else if (tableName.Equals("Pathway"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_Pathway(tableName, TextBox_DeleteRecord.Text);

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;
                    Label_DeleteMessage.Text = " Record has been deleted.";
                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }

            else if (tableName.Equals("DNA"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_DNA(tableName, TextBox_DeleteRecord.Text);

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;
                    Label_DeleteMessage.Text = " Record has been deleted.";

                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }
            else if (tableName.Equals("RNA"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_RNA(tableName, TextBox_DeleteRecord.Text);

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;
                    Label_DeleteMessage.Text = " Record has been deleted.";
                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }
            else if (tableName.Equals("Protein"))
            {
                try
                {
                    var result = datacon.UDSP_DeleteRecord_Protein(tableName, TextBox_DeleteRecord.Text);

                    TextBox_DeleteRecord.Text = "";
                    DropDownList_DeleteRecord.SelectedIndex = 0;
                    Label_DeleteMessage.Text = " Record has been deleted.";
                }
                catch (Exception ex)
                {
                    Label_DeleteMessage.Text = " Record was not deleted.";
                }
            }
        }

        protected void LoginBotton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}