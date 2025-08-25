```
ori_str = "Mayyouliveallthedaysofyourlife."

  

def encrypt(chg_str, key = "RELIANT"):

    word_dict = {}

    key_len = len(key)

    to_append = 0

    for letter in key:

        word_dict[letter] = []

        to_add = to_append

        while to_add < len(chg_str):

            word_dict[letter].append(chg_str[to_add])

            to_add += key_len

        if (len(chg_str) % key_len != 0) and (len(word_dict[letter]) < int(len(chg_str) / key_len) + 1):

            word_dict[letter].append(-1)

        to_append += 1

  

    print(word_dict)

  

    key_list = list(key)

    key_list.sort()

  

    encrypted = ""

  

    for i in range (len(word_dict['R'])):

        for letter in key_list:

            if (word_dict[letter][i] != -1):

                encrypted += word_dict[letter][i]

  
  

    return encrypted

  
  

print(encrypt(ori_str))
```