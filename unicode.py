
import random
#
# filename = "a_random_icon.png"
# text = str(((pytesseract.image_to_string(Image.open(filename), lang="eng"))))
# print(text)


names = [u'\U0001F332', u'\U0001F38B', u'\U0001F384', u'\U0001F333', u'\u2F4A']
temp = []
for i, k in enumerate(names):
    temp = []
    icons = []
    for idx, t in enumerate(names):
        randomNum = random.randint(0, 4);
        if idx == 0:
            temp.append(randomNum)
            icons.append(names[randomNum])
        else:
            while randomNum in temp:
                randomNum = random.randint(0, 4);
            temp.append(randomNum)
            icons.append(names[randomNum])
    print(*icons, sep = ", ")

