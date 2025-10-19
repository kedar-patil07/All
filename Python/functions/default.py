#use when some arguments are optional and should have pre-set values

def greet(name = 'raju',country = 'India'):
    print(f'Welcome {name} to the {country}')
greet( )            #if i pass arguments in this step then it will take that arguments instead of 1st line