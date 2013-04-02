
Partial Class Admin_edit
    Inherits System.Web.UI.Page

    

    Protected Sub GridView1_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated
        Response.Write("The player record has been Updated ! <br/>")
    End Sub
End Class
