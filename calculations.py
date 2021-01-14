def getStarted():
    """
    Documentation:
    To get started choose either
    print(circumfrance())
    or
    print(sq_feet())
    #######################################
    for circumfrance you will be prompted 
    to a fill in box simply enter the radius
    of your cirlcle and hit the enter/return key
    on your keyboared 
    #######################################
    for sq_feet you will be promted to two
    fill in boxes you will be asked 
    for the length enter the length must be a NUMBER
    hit the enter/return key on your keyboared
    then you will be asked for the width 
    insert a NUMBER for width then hit enter on 
    your keyboard and you will be given the 
    square footage    

"""



def circumfrance():
    r = int(input("Enter The Radius:"))
    circle = 2*3.14*r
    print("circumfrance: {}".format(circle))
    
def sq_feet():
    l = int(input("Enter Length:"))
    w = int(input("Enter Width:"))
    area = l * w
    print("Square Footage: {}".format(area))
    