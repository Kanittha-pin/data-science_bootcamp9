 df <- data.frame(
    Pizza_Name = c("Hawaiian", "BBQ", "Seafood", "Cheese", "Pepperoni"),
    Pizza_Price = c(150, 150, 250, 250, 230)
  )


order_pizza <- function() {

  ready <- tolower(readline("Do you want to order pizza🍕? [y/n]: "))

  if (ready == "y") {
    order_table <- data.frame(
      Pizza_ID = integer(),
      Pizza_Name = character(),
      Pizza_Price = double(),
      Pizza_Amount = integer(),
      Pizza_Value = double()
    )

    while (TRUE) {

      user_menuid <- as.integer(readline("Enter the pizza number you want to order😃: "))
      user_amount <- as.integer(readline("Enter the quantity you want to order😃: "))

      if (user_menuid >= 1 && user_menuid <= nrow(df) && user_amount > 0) {
        pizza_order <- data.frame(
          Pizza_ID = user_menuid,
          Pizza_Name = df$Pizza_Name[user_menuid],
          Pizza_Price = df$Pizza_Price[user_menuid],
          Pizza_Amount = user_amount,
          Pizza_Value = df$Pizza_Price[user_menuid] * user_amount
        )

        order_table <- rbind(order_table, pizza_order)

        cat("🍕Your order🍕:\n")
        print(order_table )

        user_continue <- tolower(readline("Do you want to order more? [y/n]: "))
        if (user_continue != "y") {
          break
        }
      } else {
        print("Invalid input. Please enter a valid pizza number and quantity.")
      }
    }

    print("---------------------------------------------------------")
    cat("Thank you for your order!🙏\n")
    print("---------------------------------------------------------")
    cat("Order Summary: 🍕🍕\n")
    print("---------------------------------------------------------")
    print(order_table)
    cat("Total Price: ", sum(order_table$Pizza_Value), "\n")
    print("---------------------------------------------------------")
    print("Thank you! 🙏")
    print(paste("Hope to see you again👋, ", username))
    print("---------------------------------------------------------")
  } else {
    print(paste("Hope to see you again👋, ", username))
  }
}



# Call the function to start ordering


print("Welcome to PP Pizza")
username <- readline("What is your name: ")
print(paste("Hello 👋", username))
 cat("Menu:\n")
  print(df)

order_pizza()
