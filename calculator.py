def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def divide(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b

def power(a, b):
    return a ** b

if __name__ == "__main__":
    print("--- Calculator App ---")
    print(add(2, 2))
    print(subtract(5, 3))
    print(divide(5, 5))