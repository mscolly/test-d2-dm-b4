<%args>
$.form
</%args>
 
<h1>Second sample Data::MuForm form</h1>
<%doc>
% my $fields = $.form->fields();
<% ref($fields) %>
</%doc>
% foreach my $field ( @{$.form->fields()} ) {
    <hr/>
    <% $field->render_label %>
    <% $field->render_element %>
    <hr/>
% }
