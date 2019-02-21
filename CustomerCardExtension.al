pageextension 50110 CustomerListExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(MyField; 'FieldSource')
            {
                ApplicationArea = Advanced;
                Caption = 'Sample Field';
            }
        }
    }
}
