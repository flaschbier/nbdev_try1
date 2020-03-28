# AUTOGENERATED! DO NOT EDIT! File to edit: 00_core.ipynb (unless otherwise specified).

__all__ = ['say_hello', 'HelloSayer']

# Cell
def say_hello(to):
    "Say hello to somebody"
    return f'Hello {to}!'

# Cell
class HelloSayer:
    "Say hello to `to` using `say_hello`"

    def __init__(self, to):
        self.to = to
        print("HelloSayer initialized for", self.to)

    def say(self):
        print("Saying hello to", self.to)
        say_hello(self.to)