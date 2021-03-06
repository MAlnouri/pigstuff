
A = LOAD 'Seattle_Pet_Licenses.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS 
(License_Issue_Date: chararray, License_Number: chararray, Name: chararray, Species: chararray, Primary_Breed: chararray);

B = FOREACH A GENERATE License_Issue_Date, License_Number,
	(CASE Species
	WHEN 'Cat' THEN 1
	WHEN 'Dog' THEN 2
	ELSE 3 END),
	(CASE Primary_Breed
WHEN 'Mix' THEN 1
WHEN 'Pug' THEN 2
WHEN 'Ainu' THEN 3
WHEN 'Lacy' THEN 4
WHEN 'Manx' THEN 5
WHEN 'Mudi' THEN 6
WHEN 'Puli' THEN 7
WHEN 'Akita' THEN 8
WHEN 'Boxer' THEN 9
WHEN 'Feist' THEN 10
WHEN 'Hound' THEN 11
WHEN 'Korat' THEN 12
WHEN 'Akbash' THEN 13
WHEN 'Angora' THEN 14
WHEN 'Barbet' THEN 15
WHEN 'Beagle' THEN 16
WHEN 'Bengal' THEN 17
WHEN 'Birman' THEN 18
WHEN 'Bombay' THEN 19
WHEN 'Borzoi' THEN 20
WHEN 'Briard' THEN 21
WHEN 'Canaan' THEN 22
WHEN 'Cymric' THEN 23
WHEN 'Kangal' THEN 24
WHEN 'Kuvasz' THEN 25
WHEN 'LaPerm' THEN 26
WHEN 'Ocicat' THEN 27
WHEN 'Saluki' THEN 28
WHEN 'Somali' THEN 29
WHEN 'Sphynx' THEN 30
WHEN 'Toyger' THEN 31
WHEN 'Basenji' THEN 32
WHEN 'Bulldog' THEN 33
WHEN 'Burmese' THEN 34
WHEN 'Chausie' THEN 35
WHEN 'Chinook' THEN 36
WHEN 'Harrier' THEN 37
WHEN 'Kai Ken' THEN 38
WHEN 'Lowchen' THEN 39
WHEN 'Maltese' THEN 40
WHEN 'Mastiff' THEN 41
WHEN 'Persian' THEN 42
WHEN 'Pointer' THEN 43
WHEN 'Ragdoll' THEN 44
WHEN 'Samoyed' THEN 45
WHEN 'Siamese' THEN 46
WHEN 'Spaniel' THEN 47
WHEN 'Terrier' THEN 48
WHEN 'Tiffany' THEN 49
WHEN 'Whippet' THEN 50
WHEN 'Balinese' THEN 51
WHEN 'Boerboel' THEN 52
WHEN 'Brittany' THEN 53
WHEN 'Eurasier' THEN 54
WHEN 'Havanese' THEN 55
WHEN 'Keeshond' THEN 56
WHEN 'Komondor' THEN 57
WHEN 'Landseer' THEN 58
WHEN 'Munchkin' THEN 59
WHEN 'Papillon' THEN 60
WHEN 'Savannah' THEN 61
WHEN 'Shepherd' THEN 62
WHEN 'Shih Tzu' THEN 63
WHEN 'Siberian' THEN 64
WHEN 'Snowshoe' THEN 65
WHEN 'Beauceron' THEN 66
WHEN 'Bolognese' THEN 67
WHEN 'Chartreux' THEN 68
WHEN 'Chow Chow' THEN 69
WHEN 'Coonhound' THEN 70
WHEN 'Dalmatian' THEN 71
WHEN 'Devon Rex' THEN 72
WHEN 'Greyhound' THEN 73
WHEN 'Himalayan' THEN 74
WHEN 'Miniature' THEN 75
WHEN 'Pekingese' THEN 76
WHEN 'Pixie-Bob' THEN 77
WHEN 'Retriever' THEN 78
WHEN 'Shiba Inu' THEN 79
WHEN 'Singapura' THEN 80
WHEN 'Stabyhoun' THEN 81
WHEN 'Tonkinese' THEN 82
WHEN 'Abyssinian' THEN 83
WHEN 'Bergamasco' THEN 84
WHEN 'Bloodhound' THEN 85
WHEN 'Cane Corso' THEN 86
WHEN 'Great Dane' THEN 87
WHEN 'Leonberger' THEN 88
WHEN 'Lhasa Apso' THEN 89
WHEN 'Maine Coon' THEN 90
WHEN 'Otterhound' THEN 91
WHEN 'Pomeranian' THEN 92
WHEN 'RagaMuffin' THEN 93
WHEN 'Rottweiler' THEN 94
WHEN 'Schipperke' THEN 95
WHEN 'Weimaraner' THEN 96
WHEN 'Bullmastiff' THEN 97
WHEN 'Cornish Rex' THEN 98
WHEN 'Desert Lynx' THEN 99
WHEN 'Plott Hound' THEN 100
WHEN 'Poodle, Toy' THEN 101
WHEN 'Pot-Bellied' THEN 102
WHEN 'Turkish Van' THEN 103
WHEN 'Afghan Hound' THEN 104
WHEN 'Basset Hound' THEN 105
WHEN 'Bichon Frise' THEN 106
WHEN 'British Blue' THEN 107
WHEN 'Carolina Dog' THEN 108
WHEN 'Egyptian Mau' THEN 109
WHEN 'German Spitz' THEN 110
WHEN 'Ibizan Hound' THEN 111
WHEN 'Korean Jindo' THEN 112
WHEN 'Newfoundland' THEN 113
WHEN 'Pudelpointer' THEN 114
WHEN 'Russian Blue' THEN 115
WHEN 'Terrier, Rat' THEN 116
WHEN 'Affenpinscher' THEN 117
WHEN 'Alaskan Husky' THEN 118
WHEN 'American Curl' THEN 119
WHEN 'Border Collie' THEN 120
WHEN 'Collie, Rough' THEN 121
WHEN 'Cur, Mountain' THEN 122
WHEN 'Finnish Spitz' THEN 123
WHEN 'Greenland Dog' THEN 124
WHEN 'Japanese Chin' THEN 125
WHEN 'Kooikerhondje' THEN 126
WHEN 'Pharaoh Hound' THEN 127
WHEN 'Primary Breed' THEN 128
WHEN 'Saint Bernard' THEN 129
WHEN 'Scottish Fold' THEN 130
WHEN 'Setter, Irish' THEN 131
WHEN 'Terrier, Bull' THEN 132
WHEN 'Terrier, Skye' THEN 133
WHEN 'Argentine Dogo' THEN 134
WHEN 'Bearded Collie' THEN 135
WHEN 'Collie, Smooth' THEN 136
WHEN 'Dutch Shepherd' THEN 137
WHEN 'Great Pyrenees' THEN 138
WHEN 'Japanese Spitz' THEN 139
WHEN 'Setter, Gordon' THEN 140
WHEN 'Siberian Husky' THEN 141
WHEN 'Spaniel, Field' THEN 142
WHEN 'Terrier, Cairn' THEN 143
WHEN 'Terrier, Irish' THEN 144
WHEN 'Terrier, Silky' THEN 145
WHEN 'Terrier, Welsh' THEN 146
WHEN 'Thai Ridgeback' THEN 147
WHEN 'Turkish Angora' THEN 148
WHEN 'Xoloitzcuintli' THEN 149
WHEN 'American Eskimo' THEN 150
WHEN 'Asian Shorthair' THEN 151
WHEN 'Bracco Italiano' THEN 152
WHEN 'Bulldog, French' THEN 153
WHEN 'Canadian Eskimo' THEN 154
WHEN 'Chinese Crested' THEN 155
WHEN 'Coton de Tulear' THEN 156
WHEN 'Dutch Smoushond' THEN 157
WHEN 'English Mastiff' THEN 158
WHEN 'German Pinscher' THEN 159
WHEN 'German Shepherd' THEN 160
WHEN 'Irish Wolfhound' THEN 161
WHEN 'Podenco Canario' THEN 162
WHEN 'Podenco Gallego' THEN 163
WHEN 'Setter, English' THEN 164
WHEN 'Shiloh Shepherd' THEN 165
WHEN 'Spaniel, Boykin' THEN 166
WHEN 'Spaniel, French' THEN 167
WHEN 'Terrier, Border' THEN 168
WHEN 'Terrier, Boston' THEN 169
WHEN 'Tibetan Mastiff' THEN 170
WHEN 'Alaskan Klee Kai' THEN 171
WHEN 'Alaskan Malamute' THEN 172
WHEN 'American Bobtail' THEN 173
WHEN 'Belgian Malinois' THEN 174
WHEN 'Belgian Sheepdog' THEN 175
WHEN 'Belgian Tervuren' THEN 176
WHEN 'Brittany, French' THEN 177
WHEN 'Bulldog, English' THEN 178
WHEN 'Chinese Domestic' THEN 179
WHEN 'Chinese Shar-Pei' THEN 180
WHEN 'Cur, Black-Mouth' THEN 181
WHEN 'English Shepherd' THEN 182
WHEN 'Exotic Shorthair' THEN 183
WHEN 'Finnish Lapphund' THEN 184
WHEN 'Japanese Bobtail' THEN 185
WHEN 'Maremma Sheepdog' THEN 186
WHEN 'Mexican Hairless' THEN 187
WHEN 'Norwegian Buhund' THEN 188
WHEN 'Norwegian Forest' THEN 189
WHEN 'Picardy Sheepdog' THEN 190
WHEN 'Poodle, Standard' THEN 191
WHEN 'Saarloos Wolfdog' THEN 192
WHEN 'Schnauzer, Giant' THEN 193
WHEN 'Silken Windhound' THEN 194
WHEN 'Spaniel, Clumber' THEN 195
WHEN 'Spaniel, Tibetan' THEN 196
WHEN 'Spinone Italiano' THEN 197
WHEN 'Swedish Elkhound' THEN 198
WHEN 'Swedish Vallhund' THEN 199
WHEN 'Terrier, Norfolk' THEN 200
WHEN 'Terrier, Norwich' THEN 201
WHEN 'Terrier, Russell' THEN 202
WHEN 'Terrier, Tibetan' THEN 203
WHEN 'American Wirehair' THEN 204
WHEN 'Australian Kelpie' THEN 205
WHEN 'Azores Cattle Dog' THEN 206
WHEN 'British Shorthair' THEN 207
WHEN 'Bulldog, American' THEN 208
WHEN 'Cirneco dell Etna' THEN 209
WHEN 'Doberman Pinscher' THEN 210
WHEN 'Dogue de Bordeaux' THEN 211
WHEN 'Domestic Longhair' THEN 212
WHEN 'Foxhound, English' THEN 213
WHEN 'Griffon, Brussels' THEN 214
WHEN 'Italian Greyhound' THEN 215
WHEN 'Karelian Bear Dog' THEN 216
WHEN 'Lagotto Romagnolo' THEN 217
WHEN 'McNab Herding Dog' THEN 218
WHEN 'Poodle, Miniature' THEN 219
WHEN 'Pyrenean Shepherd' THEN 220
WHEN 'Retriever, Golden' THEN 221
WHEN 'Shetland Sheepdog' THEN 222
WHEN 'Spanish Water Dog' THEN 223
WHEN 'Terrier, Airedale' THEN 224
WHEN 'Terrier, Fox, Toy' THEN 225
WHEN 'Terrier, Lakeland' THEN 226
WHEN 'Terrier, Pit Bull' THEN 227
WHEN 'Terrier, Scottish' THEN 228
WHEN 'Terrier, Sealyham' THEN 229
WHEN 'American Shorthair' THEN 230
WHEN 'Anatolian Shepherd' THEN 231
WHEN 'Coonhound, Redbone' THEN 232
WHEN 'Domestic Shorthair' THEN 233
WHEN 'European Shorthair' THEN 234
WHEN 'Foxhound, American' THEN 235
WHEN 'Icelandic Sheepdog' THEN 236
WHEN 'Miniature Pinscher' THEN 237
WHEN 'Neapolitan Mastiff' THEN 238
WHEN 'Norwegian Elkhound' THEN 239
WHEN 'Oriental Long Hair' THEN 240
WHEN 'Oriental Shorthair' THEN 241
WHEN 'Portuguese Podengo' THEN 242
WHEN 'Terrier, Brazilian' THEN 243
WHEN 'Terrier, Fox, Wire' THEN 244
WHEN 'Terrier, Yorkshire' THEN 245
WHEN 'Australian Shepherd' THEN 246
WHEN 'California Spangled' THEN 247
WHEN 'Coonhound, Bluetick' THEN 248
WHEN 'Deerhound, Scottish' THEN 249
WHEN 'Munsterlander,Small' THEN 250
WHEN 'Norwegian Lundehund' THEN 251
WHEN 'Retriever, Labrador' THEN 252
WHEN 'Rhodesian Ridgeback' THEN 253
WHEN 'Schnauzer, Standard' THEN 254
WHEN 'Terrier, Australian' THEN 255
WHEN 'Terrier, Bedlington' THEN 256
WHEN 'Terrier, Kerry Blue' THEN 257
WHEN 'Terrier, Manchester' THEN 258
WHEN 'Terrier, Patterdale' THEN 259
WHEN 'Vizsla, Wire Haired' THEN 260
WHEN 'American Blue Heeler' THEN 261
WHEN 'Bernese Mountain Dog' THEN 262
WHEN 'Bouvier des Flandres' THEN 263
WHEN 'Chihuahua, Long Coat' THEN 264
WHEN 'Domestic Medium Hair' THEN 265
WHEN 'Munsterlander, Large' THEN 266
WHEN 'Old English Sheepdog' THEN 267
WHEN 'Peruvian Inca Orchid' THEN 268
WHEN 'Portuguese Water Dog' THEN 269
WHEN 'Schnauzer, Miniature' THEN 270
WHEN 'Spaniel, English Toy' THEN 271
WHEN 'Spaniel, Irish Water' THEN 272
WHEN 'Terrier, Fox, Smooth' THEN 273
WHEN 'Australian Cattle Dog' THEN 274
WHEN 'Catahoula Leopard dog' THEN 275
WHEN 'Chihuahua, Short Coat' THEN 276
WHEN 'Colourpoint Shorthair' THEN 277
WHEN 'German Shepherd, King' THEN 278
WHEN 'Terrier, Jack Russell' THEN 279
WHEN 'Vizsla, Smooth Haired' THEN 280
WHEN 'Welsh Corgi, Cardigan' THEN 281
WHEN 'Welsh Corgi, Pembroke' THEN 282
WHEN 'Caucasian Mountain Dog' THEN 283
WHEN 'Olde English Bulldogge' THEN 284
WHEN 'Retriever, Flat-Coated' THEN 285
WHEN 'Terrier, Black Russian' THEN 286
WHEN 'Terrier, Glen of Imaal' THEN 287
WHEN 'American White Shepherd' THEN 288
WHEN 'Appenzeller Sennenhunde' THEN 289
WHEN 'Polish Lowland Sheepdog' THEN 290
WHEN 'Retriever, Curly Coated' THEN 291
WHEN 'Spaniel, American Water' THEN 292
WHEN 'Spaniel, English Cocker' THEN 293
WHEN 'Spaniel, Welsh Springer' THEN 294
WHEN 'Terrier, Dandie Dinmont' THEN 295
WHEN 'Terrier, Miniature Bull' THEN 296
WHEN 'Terrier, Parson Russell' THEN 297
WHEN 'Braque Francais Pyrenees' THEN 298
WHEN 'Coonhound, Black and Tan' THEN 299
WHEN 'Entlebucher Mountain Dog' THEN 300
WHEN 'Spaniel, American Cocker' THEN 301
WHEN 'Coonhound, Treeing Walker' THEN 302
WHEN 'Retriever, Chesapeake Bay' THEN 303
WHEN 'Spaniel, English Springer' THEN 304
WHEN 'Treeing Tennessee Brindle' THEN 305
WHEN 'Alapaha Blue Blood Bulldog' THEN 306
WHEN 'Central Asian Shepherd Dog' THEN 307
WHEN 'Greater Swiss Mountain Dog' THEN 308
WHEN 'Pointer, German Wirehaired' THEN 309
WHEN 'Terrier, American Hairless' THEN 310
WHEN 'Terrier, American Pit Bull' THEN 311
WHEN 'Coonhound, American English' THEN 312
WHEN 'Pointer, German Shorthaired' THEN 313
WHEN 'Terrier, Staffordshire Bull' THEN 314
WHEN 'Griffon, Wirehaired Pointing' THEN 315
WHEN 'Terrier, Soft Coated Wheaten' THEN 316
WHEN 'Terrier, West Highland White' THEN 317
WHEN 'Griffon Vendeen, Grand Basset' THEN 318
WHEN 'Griffon Vendeen, Petit Basset' THEN 319
WHEN 'Australian Shepherd, Miniature' THEN 320
WHEN 'Spaniel, Cavalier King Charles' THEN 321
WHEN 'Terrier, American Crested Sand' THEN 322
WHEN 'Terrier, English Staffordshire' THEN 323
WHEN 'Dachshund, Standard Long Haired' THEN 324
WHEN 'Dachshund, Standard Wire Haired' THEN 325
WHEN 'Terrier, American Staffordshire' THEN 326
WHEN 'Dachshund, Miniature Long Haired' THEN 327
WHEN 'Dachshund, Miniature Wire Haired' THEN 328
WHEN 'Dachshund, Standard Smooth Haired' THEN 329
WHEN 'Dachshund, Miniature Smooth Haired' THEN 330
WHEN 'Retriever, Nova Scotia Duck Tolling' THEN 331
WHEN 'White Swiss Shepherd (Berger Blanc Suisse)' THEN 332
WHEN 'Mixed Breed, Large (over 44 lbs fully grown)' THEN 333
WHEN 'Mixed Breed, Small (under 24 lbs fully grown)' THEN 334
WHEN 'Mixed Breed, Medium (up to 44 lbs fully grown)' THEN 335
END);



--removes header names
C = FILTER B BY License_Number != 'License Number';

D = RANK C;

STORE D INTO 'outputPets';


DUMP D;
