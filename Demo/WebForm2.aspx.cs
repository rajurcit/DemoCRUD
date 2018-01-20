using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            //base.OnInit(e);
            base.OnLoadComplete(e);

            int ListNo = Convert.ToInt32(Request.Params["ctl00$ContentPlaceHolder1$ddldelegates"]);
            //int Paymentoption = Convert.ToInt32(Request.Params["ctl00$ContentPlaceHolder1$rdoPaymentoption"]); // Convert.ToInt32(Request.Form["ctl00$ContentPlaceHolder1$rdoPaymentoption"]);
            GenerateRandomDelegateList(ListNo);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // GenerateRandomDelegateList(1);
        }


        protected void GenerateRandomDelegateList(int ListNo)
        {
            for (int i = 0; i < ListNo; i++)
            {
                TextBox Name = new TextBox();
                Name.Attributes["class"] = "form-control inpt1";
                Name.Attributes["placeholder"] = "Name";
                Name.ID = "txtName" + i;
                PHDelegate.Controls.Add(Name);

            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string PayeeName = ((TextBox)PHDelegate.FindControl("txtName0")).Text;
        }
        protected void ddldelegates_SelectedIndexChanged(object sender, EventArgs e)
        {
           // GenerateRandomDelegateList(1);

        }


    }
}