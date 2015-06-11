using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //Calclating the number of wins.
            Decimal numberOfWins = 0;

            if (rblResult1.SelectedItem.Value == "Win")
            {
                numberOfWins = numberOfWins +1;
            }

            if (rblResult2.SelectedItem.Value == "Win")
            {
                numberOfWins = numberOfWins + 1;
            }

            if (rblResult3.SelectedItem.Value == "Win")
            {
                numberOfWins = numberOfWins + 1;
            }

            if (rblResult4.SelectedItem.Value == "Win")
            {
                numberOfWins = numberOfWins + 1;
            }

            //Displaying the number of wins
            lblWins.Text = "Wins:" + " " + numberOfWins.ToString();

            //Calclating the number of losses.
            Decimal numberOfLosses = 4 - numberOfWins;

            //displaying the number of losses.
            lblLosses.Text = "Losses:" + " " + numberOfLosses.ToString();

            //Calclating the winning percent.
            Decimal winningPrecent = numberOfWins / 4;

            //displaying the winning percent.
            lblWinningPercent.Text = "Winning %:" + " " + winningPrecent.ToString();

            //Calclating the number of scored.
            Decimal numberOfScored = Convert.ToDecimal(txtScored1.Text) + Convert.ToDecimal(txtScored2.Text) + Convert.ToDecimal(txtScored3.Text) + Convert.ToDecimal(txtScored4.Text);

            //displaying the total number of scored.
            lblPointsScored.Text = "Points Scored:" + " " + numberOfScored.ToString();

            //Calcalating the total numner of Allowed.
            Decimal numberOfAllowed = Convert.ToDecimal(txtAllowed1.Text) + Convert.ToDecimal(txtAllowed2.Text) + Convert.ToDecimal(txtAllowed3.Text) + Convert.ToDecimal(txtAllowed4.Text);

            //Displaying the number of Allowed.
            lblPointsAllowed.Text = "Points Allowed:" + " " + numberOfAllowed.ToString();

            //Calcalating the Point Differential.
            Decimal differential = numberOfScored - numberOfAllowed;

            //displaying the Point Differential.
            lblPointDifferential.Text = "Point Differential:" + " " + differential.ToString();

            //Calclating the number of spectators.
            Decimal numberOfSpectators = Convert.ToDecimal(txtSpectators1.Text) + Convert.ToDecimal(txtSpectators2.Text) + Convert.ToDecimal(txtSpectators3.Text) + Convert.ToDecimal(txtSpectators4.Text);
            //calclating average number of Spectators.
            Decimal averageOfSpectators = numberOfSpectators / 4;

            //displaying the average number of Spectators.
            lblAverageAttendance.Text = "Average Spectators:" + " " + averageOfSpectators.ToString();

            //dispaying the number of spectators.
            lblTotalAttendance.Text = "Total Attendance:" + " " + numberOfSpectators.ToString();

            
        }
    }
}