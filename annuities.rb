#annuity, solving by decimals and formulas

# puts "What is the amount of payment? (A)"
# A = gets.chomp.to_f

# puts "What is the number of terms in the series? (n)"
# n = gets.chomp.to_f

# puts "What is period interest rate? (r)"
# r = gets.chomp.to_f


# PV = A/(1+r)*(1-(1/(1+r))**n)/(1-(1/(1+r)))

# puts PV

# # solve by decimals

# def annuity_PV(a, n, r)
#   list = []
#   for i in 1..n do
#     list << a/(1+r)**i
#   end
#   list.sum
# end

# puts "What is the amount of payment? (A)"
# a = gets.chomp.to_f

# puts "What is the number of terms in the series? (n)"
# n = gets.chomp.to_f

# puts "What is period interest rate? (r)"
# r = gets.chomp.to_f

# puts annuity_PV(a, n, r)

# growing annuities PV

def Growing_annuity_PV_start(a, r, g, n)
  list = [a]
  for i in 1..n-1 do
    list << (a*(1+g)**i)/(1+r)**i
  end
  list.sum
end

puts "What is the amount of payment? (A)"
a = gets.chomp.to_f

puts "What is the growth per term? (g)"
g = gets.chomp.to_f

puts "What is period interest rate? (r)"
r = gets.chomp.to_f

puts "What is the number of terms in the series? (n)"
n = gets.chomp.to_f

puts "The PV of growing annuity calculated from the start is
#{Growing_annuity_PV_start(a, r, g, n).ceil(2)}"

# PV of annuinity that started at the end of the period. use the second method
# when you need to manipulate A (the payment you get in the end of the period
# that included growth rate)

def Growing_annuity_PV_end(a, r, g, n)
  list = []
  for i in 1..n do
    list << (a*(1+g)**i)/(1+r)**i
  end
  list.sum
end

puts "The PV for growing annuity calculated from the end period of
payment is #{Growing_annuity_PV_end(a, r, g, n).ceil(2)}"

def Growing_annuity_PV_end_sum(a, r, g, n)
  a * (1-((1+g)/(1+r))**n)/(r-g)
end

puts "The PV for growing annuity calculated from the end period of
payment is #{Growing_annuity_PV_end_sum(a, r, g, n).ceil(2)}"




