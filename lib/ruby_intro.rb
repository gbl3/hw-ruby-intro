# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  soma = 0
  arr.each{ |item| soma+= item}
  return soma

end

def max_2_sum arr
  # YOUR CODE HERE
  #Casos relacionados ao tamanho do array
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.first
  end
  max1 = arr.max
  pos1 = arr.index(max1)
  arr.delete_at(pos1)
  max2 = arr.max
  return max1+ max2
end

def sum_to_n? array_int, n
  # YOUR CODE HERE
  bool = false
  #Se o tamanho for menor que 1 (0 ou 1, simplesmente retorna false sem executar os laços)
  if array_int.length > 1
    for x in array_int
      for y in array_int
        next if x == y
        if x + y == n
          bool = true
        end
      end
    end
  end
  return bool
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.match(/^[[:alpha:]]/) #Checando se a string começa com um caractere alfabético, podendo ter outros tipos depois do primeiro
    return !s.downcase.start_with?("a","e","i","o", "u") #Depois de checar, faz a verificação em relação a vogal/consoante
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[01]+$/
    convert = s.to_i(2)
    return convert % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError, 'O número de ISBN está vazio, informe um número válido.' unless isbn != ""
    raise ArgumentError, 'O valor do preço é inválido, informe um valor maior que 0.' unless price > 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(numero)
    @isbn = numero
  end

  def price
    @price
  end

  def price=(valor)
    @price = valor
  end

  def price_as_string
    price = @price
    return "$%.2f" % (price)
  end
end
