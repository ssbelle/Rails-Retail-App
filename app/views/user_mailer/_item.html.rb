<article class="item">
  <% @product=Product.find(product_id) %>
  <% item_total = @product.price * quantity %>
  <% @total += item_total %>
  <tr>
    <td>
      <h4><%= @product.name %></h4>
    </td>
    <td>
      <%= @product.price %>
    </td>
    <td>
      <%= quantity %>
    </td>
    <td>
      <%= item_total %>
    </td>

  </tr>
</article>