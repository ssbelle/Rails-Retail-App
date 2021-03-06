
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <h1>Thank you for your purchase, <%= @order.id %></h1>
     <% @total = 0 %>
      <% @order.line_items.each do |item| %>
        <%= render 'item', product_id: item.product.id, description: item.product.description, quantity: item.product.quantity%>
      <% end %>
    <p>
      To login to the site, just follow this link: <%= @url %>.
    </p>
    <p>Thanks for joining and have a great day!</p>
  </body>
