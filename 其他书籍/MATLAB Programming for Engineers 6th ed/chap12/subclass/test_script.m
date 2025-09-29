x = Subclass1(3)
y = Subclass2(4)

z = Superclass
z(1) = x
z(2) = y

isa(x,'Subclass1')

isa(x,'Subclass2')

isa(x,'Superclass')