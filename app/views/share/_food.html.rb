<tr>
<td> <%= food.name %> </td>
<td> <%= food.measurement_unit %> </td>
<td> <%= food.quantity %> </td>
<td> $ <%=  food.price %> </td>
<td> <%= link_to "Delete", food , data: {turbo_method: :delete, 
     turbo_confirm: "Are you sure you want to delete?"}%>   </td>
</tr>