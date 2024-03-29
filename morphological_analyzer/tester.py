# -*- coding: utf-8 -*-


from pyswip import Prolog
from pyswip import Functor
import pandas as pd
import gspread
import os

"""
def format_value(value):
    output = ""
    if isinstance(value, list):
        output = "[ " + ", ".join([format_value(val) for val in value]) + " ]"
    elif isinstance(value, Functor) and value.arity == 2:
        output = "{0}{1}{2}".format(value.args[0], value.name, value.args[1])
    else:
        output = "{}".format(value)

    return output


def format_result(result):
    result = list(result)

    if len(result) == 0:
        return "false."

    if len(result) == 1 and len(result[0]) == 0:
        return "true."

    output = ""
    for res in result:
        tmpOutput = []
        for var in res:
            tmpOutput.append(var + " = " + format_value(res[var]))
        output += ", ".join(tmpOutput) + " ;\n"
    output = output[:-3] + " ."

    return output


GS_CREDENTIAL_FILENAME = "a.json"  # İndirilen json dosyası yolu
GS_FILENAME = "morphological_analyzer_tests"  # Google Sheet dosyası adı
GS_SHEET_INDEX = 0  # Sheet1'e erişim için

gc = gspread.service_account(GS_CREDENTIAL_FILENAME)

worksheet = gc.open_by_key('1CkDf_6qLkdiWyEuVZij0Fp1nLNjDVH_AWZcmtKIVB-s').get_worksheet(GS_SHEET_INDEX)

dataframe = pd.DataFrame(worksheet.get_all_records())  # hata verilen yer

word_list = dataframe.iloc[:, 0]

morpheme_list = dataframe.iloc[:, 1]

analysis = []
allomorphs = []

prolog = Prolog()

prolog.consult("morphological_analyzer.pl")

for index, word in enumerate(word_list):

    if not word or not morpheme_list[index]:
        analysis.append(" ")
        allomorphs.append(" ")

    else:
        print(f"analyze('{word.lower()}',_,[{morpheme_list[index]}])")

        answer = list(prolog.query(f"analyze('{word.lower()}',X,[{morpheme_list[index]}])"))

        result = format_result(answer)

        answer2 = list(prolog.query(f"analyze('{word.lower()}',X,_)"))

        result2 = format_result(answer2)

        if result == 'false.':
            analysis.append('false')

            if "X =" in result2:
                allomorph = result2.replace(" ;\nX = ", "-").split('=')[1].split('.')[0].replace("[", "").replace("]",
                                                                                                                  "").strip()
                allomorphs.append(allomorph)
            else:
                allomorphs.append(" ")

        elif "X =" in result:
            allomorph = result.replace(" ;\nX = ", "-").split('=')[1].split('.')[0].replace("[", "").replace("]",
                                                                                                             "").strip()
            allomorphs.append(allomorph)
            analysis.append('true')
        else:
            analysis.append(" ")
            allomorphs.append(" ")

analyze = ''

while analyze != 1 and analyze != 2:
    analyze = input('\nMorfolojik Analiz: 1\nHarmonizer + Morfolojik Analiz: 2\nSeçiminiz: ')
    analyze = int(analyze)

    if analyze != 1 and analyze != 2:
        print('Lütfen sadece 1 ve 2 arasında seçim yapınız!!')

if analyze == 1:
    cell_list = worksheet.range(f'D2:E{index + 2}')
else:
    cell_list = worksheet.range(f'D2:D{index + 2}')

for index_1, cell in enumerate(cell_list):
    cell.value = "'" + analysis[index_1]

worksheet.update_cells(cell_list, value_input_option='USER_ENTERED')

print('İşlem Tamamlandı!')
print("Test edilen kelime sayısı:", len(word_list))

"""