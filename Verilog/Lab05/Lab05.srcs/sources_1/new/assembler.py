converter = {}
label = dict()

def toBin(x, f):
    return '{0:b}'.format(x).zfill(f)

def regToBin(x):
    return toBin(int(x[2:]), 5)

def immReg(x):
    return x.split('(')[1][:-1]

def hexToBin(x):
    return int(x, 0)

def Immreg(x):
    return hexToBin(x.split('(')[0])

converter["ORI"] = lambda x: '_'.join(["010000", regToBin(x[2]), regToBin(x[1]), toBin(hexToBin(x[3][1:]), 16)])
converter["ORUI"] = lambda x: '_'.join(["010001", regToBin(x[2]), regToBin(x[1]), toBin(hexToBin(x[3][1:]), 16)])
converter["ADD"] = lambda x: '_'.join(["000001", regToBin(x[2]), regToBin(x[3]), regToBin(x[1]), x[4].zfill(11)])

converter["LW"] = lambda x: '_'.join(["011000", regToBin(immReg(x[2])), regToBin(x[1]), toBin(Immreg(x[2]), 16)])
converter["SW"] = lambda x: '_'.join(["011100", regToBin(immReg(x[2])), regToBin(x[1]), toBin(Immreg(x[2]), 16)])

converter["BEQ"] = lambda x: '_'.join(["100100", regToBin(x[1]), regToBin(x[2]), toBin((label[x[3]] - x[0]) // 4 - 1, 16)])
converter["JMP"] = lambda x: '_'.join(["110000", toBin(label[x[1]] // 4, 26)])

with open("prog.list", "w") as out, open("prog.list.asm", "r") as inp:

    data = inp.readlines()
    data = list(filter(lambda x: not( x.strip() == "" or x.startswith("//")), data))
    data = list(map(lambda x: x.strip(), data))

    line_num = 0
    displays = []
    data_line = []
    for i in range(len(data)):
        if data[i][-1] == ":":
            label[data[i][:-1]] = line_num
        else:
            data_line.append([line_num] + data[i].replace(",", " ").split())
            displays.append(data[i])
            line_num += 4

    result = []
    for line, display in zip(data_line, displays):
        lb = [l for l in label.keys() if label[l] == line[0]]
        display += "" if len(lb) == 0 else " # " + " ".join(lb)
        result.append(converter[line[1]](line[0:1] + line[2:]).ljust(40) + "// " + hex(line[0]).ljust(5) + " : " + display)

    out.write ("\n".join(result) + "\n")
