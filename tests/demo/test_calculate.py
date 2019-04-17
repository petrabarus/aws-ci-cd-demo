from demo.calculate import calculate


def test_calculate():
    a = 1
    b = 2
    result = calculate(a, b)
    assert result == 3
