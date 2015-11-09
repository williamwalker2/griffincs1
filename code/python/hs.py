def hs(n):
    count = 0
    while n != 1:
        print (int(n))
        if n % 2 == 0:
            n = n / 2
        else:
            n = 3*n + 1
        count += 1
    print (int(n))
    print (count)
    return None

