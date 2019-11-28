class Counter():
    def __init__(self, left, right):
        self.right = right
        self.current = left - 1
        if left >= right:
            raise ValueError("Meow")
    def __iter__(self):
        return self

    def __next__(self):
        self.current += 1
        if self.current < self.right:
            return self.current
        raise StopIteration()
