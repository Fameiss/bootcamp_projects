# create menu_df

menu_df <- data.frame(menu = c("Hawaiian Pizza", "Pepperoni Pizza", 
                               "Gilled Chicken Caesar salad", 
                               "Smoked salmon salad", "Garlic Bread",
                               "Chicken Strick", "Drinking water", "Coke"),
                     S_price = c(150, 180, NA , NA , NA, NA, NA, NA),
                     M_price = c(250, 280, 120, 160, 80, 85, 35, 45),
                     L_price = c(290, 320,  NA , NA , NA, NA, NA, NA)
)

print("Welcome to Domidoo Pizza!!")
print("what is your name?")
user_name <- readLines("stdin", n = 1)
print(paste("Hello", user_name))
print("What is your phone number?")
phone <- readLines("stdin", n = 1)
head(menu_df, 9)

ctr_p <- 1
c_confirm_pizza_sh <- 0
c_confirm_pizza_sp <- 0
c_confirm_pizza_mh <- 0
c_confirm_pizza_mp <- 0
c_confirm_pizza_lh <- 0
c_confirm_pizza_lp <- 0
c_confirm_c_salad <- 0
c_confirm_s_salad <- 0
c_confirm_g_app <- 0
c_confirm_c_app <- 0
c_confirm_d_drinks <- 0
c_confirm_c_drinks <- 0

# menu
while(ctr_p == 1) {
print("What would you like to order please?")
print("1.Pizza, 2.Salad, 3.Appeitzer, 4.Drinks")
food_type <- as.numeric(readLines("stdin", n = 1))

# Pizza
if(food_type == 1) {
  print("What size please?")
  print("1.Small, 2.Meduim, 3.Large")
  pizza_size <- as.numeric(readLines("stdin", n = 1))
  if(pizza_size == 1) {
    print("What pizza would you like?")
    print("1.Hawaiian, 2.Pepperoni")
    pizza_topp <- as.numeric(readLines("stdin", n = 1))
    if(pizza_topp == 1) {
      print("Would you like to order a Small Hawaiian Pizza?")
      print("please press 1 for add Pizza to your cart, press 2 for cancel Pizza")
      confirm_pizza_sh <- as.numeric(readLines("stdin", n = 1))
      if(confirm_pizza_sh == 1) {
        print("Confirmed your Pizza!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_pizza_sh <- c_confirm_pizza_sh+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }   
  } 
  # Small pepperoni pizza
    else if(pizza_topp == 2) {
    print("Would you like to order a Small Pepperoni Pizza?")
    print("please press 1 for add Pizza to your cart, press 2 for cancel Pizza")
    confirm_pizza_sp <- as.numeric(readLines("stdin", n = 1))
    if(confirm_pizza_sp == 1) {
        print("Confirmed your Pizza!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_pizza_sp <- c_confirm_pizza_sp+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
    }
  } 
# Medium Hawaiian Pizza
  if(pizza_size == 2) {
  print("What pizza would you like?")
  print("1.Hawaiian, 2.Pepperoni")
  pizza_topp <- as.numeric(readLines("stdin", n = 1))
    if(pizza_topp == 1) {
      print("Would you like to order a Medium Hawaiian Pizza?")
      print("please press 1 for add Pizza to your cart, press 2 for cancel Pizza")
      confirm_pizza_mh <- as.numeric(readLines("stdin", n = 1))
      if(confirm_pizza_mh == 1) {
        print("Confirmed your Pizza!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_pizza_mh <- c_confirm_pizza_mh+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
    } 
  
    # Medium Pepperoni Pizza
  else if(pizza_topp == 2) {
    print("Would you like to order a Medium Pepperoni Pizza?")
    print("please press 1 for add Pizza to your cart, press 2 for cancel Pizza")
    confirm_pizza_mp <- as.numeric(readLines("stdin", n = 1))
    if(confirm_pizza_mp == 1) {
        print("Confirmed your Pizza!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_pizza_mp <- c_confirm_pizza_mp+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  }
} 

# Large Hawaiian Pizza
  if(pizza_size == 3) {
    print("What pizza would you like?")
    print("1.Hawaiian, 2.Pepperoni")
    pizza_topp <- as.numeric(readLines("stdin", n = 1))
    if(pizza_topp == 1) {
      print("Would you like to order a Large Hawaiian Pizza?")
      print("please press 1 for add Pizza to your cart, press 2 for cancel Pizza")
      confirm_pizza_lh <- as.numeric(readLines("stdin", n = 1))
      if(confirm_pizza_lh == 1) {
        print("Confirmed your Pizza!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_pizza_lh <- c_confirm_pizza_lh+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
    } 
  # Large Pepperoni Pizza
  else if(pizza_topp == 2) {
    print("Would you like to order a Large Pepperoni Pizza?")
    print("please press 1 for add Pizza to your cart, press 2 for cancel Pizza")
    confirm_pizza_lp <- as.numeric(readLines("stdin", n = 1))
    if(confirm_pizza_lp == 1) {
        print("Confirmed your Pizza!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_pizza_lp <- c_confirm_pizza_lp+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
 } 
}
  #Salad 
} else if(food_type == 2) {
  print("What salad would you like?")
  print("1.Gilled Chicken Caesar salad, 2.Smoked salmon salad")
  salad <- readLines("stdin", n = 1)
  if(salad == 1) {
    print("Would you like to order a Gilled Chicken Caesar salad?")
    print("please press 1 for add Gilled Chicken Caesar salad to your cart, press 2 for cancel Gilled Chicken Caesar salad")
    confirm_c_salad <- as.numeric(readLines("stdin", n = 1))
    if(confirm_c_salad == 1) {
        print("Confirmed your Salad!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_c_salad <- c_confirm_c_salad+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  } else if(salad == 2) {
    print("Would you like to order a Smoked salmon salad?")
    print("please press 1 for add Smoked salmon salad to your cart, press 2 for cancel Smoked salmon salad")
    confirm_s_salad <- as.numeric(readLines("stdin", n = 1))
    if(confirm_s_salad == 1) {
        print("Confirmed your Salad!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_s_salad <- c_confirm_s_salad+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  }
} else if(food_type == 3) {
  print("What appetizer would you like?")
  print("1.Garlic Bread, 2.Chicken Strick")
  app <- readLines("stdin", n = 1)
  if(app == 1) {
    print("Would you like to order a Garlic Bread?")
    print("please press 1 for add Garlic Bread to your cart, press 2 for cancel Garlic Bread")
    confirm_g_app <- as.numeric(readLines("stdin", n = 1))
    if(confirm_g_app == 1) {
        print("Confirmed your Appetizer!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_g_app <- c_confirm_g_app+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  } else if(app == 2) {
    print("Would you like to order a Chicken Strick?")
    print("please press 1 for add Chicken Strick to your cart, press 2 for cancel Chicken Strick")
    confirm_c_app <- as.numeric(readLines("stdin", n = 1))
    if(confirm_c_app == 1) {
        print("Confirmed your Appetizer!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_c_app <- c_confirm_c_app+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  }
} else if(food_type == 4) {
  print("What drinks would you like?")
  print("1.Drinking water, 2.Coke")
  drinks <- readLines("stdin", n = 1)
  if(drinks == 1) {
    print("Would you like to order a Drinking water?")
    print("please press 1 for add Drinking water to your cart, press 2 for cancel Drinking water")
    confirm_d_drinks <- as.numeric(readLines("stdin", n = 1))
    c_confirm_d_drinks <- c_confirm_d_drinks+1
    if(confirm_d_drinks == 1) {
        print("Confirmed your Drinks!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  } else if(drinks == 2) {
    print("Would you like to order a Coke?")
    print("please press 1 for add Coke to your cart, press 2 for cancel Coke")
    confirm_c_drinks <- as.numeric(readLines("stdin", n = 1))
    if(confirm_c_drinks == 1) {
        print("Confirmed your Drinks!!")
        print("Would you like anything else?")
        print("1.Yes, 2.No")
        c_confirm_c_drinks <- c_confirm_c_drinks+1
        ctr_p <- as.numeric(readLines("stdin", n = 1))
        if(ctr_p == 2 | ctr_p != 1) {
          print("----------- Order Summary -----------")
        break}
      }
  }
} else {
  print("No menu available, please select a number 1-4.")
  }
}

Total <- sum((c_confirm_pizza_sh*150) + (c_confirm_pizza_sp*180) +
   (c_confirm_pizza_mh*250) + (c_confirm_pizza_mp*280) + 
   (c_confirm_pizza_lh*290) + (c_confirm_pizza_lp*320) +
   (c_confirm_c_salad*120) + (c_confirm_s_salad*160) +
   (c_confirm_g_app*80) + (c_confirm_c_app*85) +
   (c_confirm_d_drinks*35) + (c_confirm_c_drinks*45))

print(paste("Total :", Total, "Baht"))
print("------ Thank you for your order!! ------")
