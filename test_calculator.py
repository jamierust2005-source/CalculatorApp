from calculator import add, subtract, divide, power

def test_add():
    assert add(3, 5) == 8

def test_subtract():
    assert subtract(10, 7) == 3

def test_divide():
    assert divide(10, 2) == 5

def test_power():
    assert power(2, 3) == 8
