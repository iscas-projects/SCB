(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var1807 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1807 null-String)))
(define-const var259 Int (- 1)) ; Statement: b9 = -1 
(assert true)
(define-const var3280 Int (hashCode/-467973558 var1807)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2043530993: goto $z41 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Enum;)V");     case -1854475207: goto $z40 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case -1714881093: goto $z39 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;");     case -1603304977: goto $z38 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;JLjava/lang/Object;)V");     case -1428966913: goto $z37 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/String;)V");     case -1149691069: goto $z36 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;");     case -1010649456: goto $z35 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;");     case -585659236: goto $z34 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;");     case -470836938: goto $z33 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V");     case -365204099: goto $z32 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V");     case -263498853: goto $z31 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;");     case -221520171: goto $z30 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/util/List;Ljava/lang/reflect/Type;)V");     case -176321095: goto $z29 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V");     case -126180830: goto $z28 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()Ljava/lang/Class;");     case -39224379: goto $z27 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/util/List;ILjava/lang/String;)V");     case 39784: goto $z26 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()I");     case 39785: goto $z25 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()J");     case 39797: goto $z24 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()V");     case 39801: goto $z23 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()Z");     case 1257388: goto $z22 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(C)Z");     case 1263150: goto $z21 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(I)V");     case 1264111: goto $z20 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)V");     case 1264115: goto $z19 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Z");     case 149404307: goto $z18 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;");     case 162211716: goto $z17 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z");     case 204540071: goto $z16 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;)V");     case 204540075: goto $z15 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;)Z");     case 390338868: goto $z14 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Ljava/lang/Object;");     case 438407678: goto $z13 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V");     case 470778755: goto $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Lcom/alibaba/fastjson2/reader/FieldReader;");     case 835331803: goto $z11 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case 1014040867: goto $z10 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Ljava/lang/Object;");     case 1192622657: goto $z9 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V");     case 1422865092: goto $z8 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(I)Ljava/lang/Object;");     case 1546574451: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V");     case 1565685777: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;)V");     case 1565685781: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;)Z");     case 1638725077: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(I)Ljava/lang/Integer;");     case 1655445243: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;");     case 1942950347: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()Ljava/lang/String;");     case 2045804348: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;I)V");     case 2045805309: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;J)V");     default: goto tableswitch(b9) {     case 0: goto return 4;     case 1: goto return 5;     case 2: goto return 5;     case 3: goto return 5;     case 4: goto return 5;     case 5: goto return 6;     case 6: goto return 8;     case 7: goto return 8;     case 8: goto return 8;     case 9: goto return 8;     case 10: goto return 8;     case 11: goto return 9;     case 12: goto return 9;     case 13: goto return 9;     case 14: goto return 9;     case 15: goto return 9;     case 16: goto return 9;     case 17: goto return 9;     case 18: goto return 12;     case 19: goto return 12;     case 20: goto return 12;     case 21: goto return 12;     case 22: goto return 12;     case 23: goto return 13;     case 24: goto return 13;     case 25: goto return 13;     case 26: goto return 13;     case 27: goto return 13;     case 28: goto return 13;     case 29: goto return 13;     case 30: goto return 16;     case 31: goto return 16;     case 32: goto return 16;     case 33: goto return 16;     case 34: goto return 20;     case 35: goto return 20;     case 36: goto return 21;     case 37: goto return 21;     case 38: goto return 25;     case 39: goto return 28;     case 40: goto return 28;     case 41: goto return 40;     default: goto i10 = 1; }; } 
(assert (and (not (= var3280 2045805309)) (and (not (= var3280 2045804348)) (and (not (= var3280 1942950347)) (and (not (= var3280 1655445243)) (and (not (= var3280 1638725077)) (and (not (= var3280 1565685781)) (and (not (= var3280 1565685777)) (and (not (= var3280 1546574451)) (and (not (= var3280 1422865092)) (and (not (= var3280 1192622657)) (and (not (= var3280 1014040867)) (and (not (= var3280 835331803)) (and (not (= var3280 470778755)) (and (not (= var3280 438407678)) (and (not (= var3280 390338868)) (and (not (= var3280 204540075)) (and (not (= var3280 204540071)) (and (not (= var3280 162211716)) (and (not (= var3280 149404307)) (and (not (= var3280 1264115)) (and (not (= var3280 1264111)) (and (not (= var3280 1263150)) (and (not (= var3280 1257388)) (and (not (= var3280 39801)) (and (not (= var3280 39797)) (and (not (= var3280 39785)) (and (not (= var3280 39784)) (and (not (= var3280 (- 39224379))) (and (not (= var3280 (- 126180830))) (and (not (= var3280 (- 176321095))) (and (not (= var3280 (- 221520171))) (and (not (= var3280 (- 263498853))) (and (not (= var3280 (- 365204099))) (and (not (= var3280 (- 470836938))) (and (not (= var3280 (- 585659236))) (and (not (= var3280 (- 1010649456))) (and (not (= var3280 (- 1149691069))) (and (not (= var3280 (- 1428966913))) (and (not (= var3280 (- 1603304977))) (and (not (= var3280 (- 1714881093))) (and (not (= var3280 (- 1854475207))) (and (not (= var3280 (- 2043530993))) true))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Negate: Cond: $i0 == 2045805309   and Intersect: Negate: Cond: $i0 == 2045804348   and Intersect: Negate: Cond: $i0 == 1942950347   and Intersect: Negate: Cond: $i0 == 1655445243   and Intersect: Negate: Cond: $i0 == 1638725077   and Intersect: Negate: Cond: $i0 == 1565685781   and Intersect: Negate: Cond: $i0 == 1565685777   and Intersect: Negate: Cond: $i0 == 1546574451   and Intersect: Negate: Cond: $i0 == 1422865092   and Intersect: Negate: Cond: $i0 == 1192622657   and Intersect: Negate: Cond: $i0 == 1014040867   and Intersect: Negate: Cond: $i0 == 835331803   and Intersect: Negate: Cond: $i0 == 470778755   and Intersect: Negate: Cond: $i0 == 438407678   and Intersect: Negate: Cond: $i0 == 390338868   and Intersect: Negate: Cond: $i0 == 204540075   and Intersect: Negate: Cond: $i0 == 204540071   and Intersect: Negate: Cond: $i0 == 162211716   and Intersect: Negate: Cond: $i0 == 149404307   and Intersect: Negate: Cond: $i0 == 1264115   and Intersect: Negate: Cond: $i0 == 1264111   and Intersect: Negate: Cond: $i0 == 1263150   and Intersect: Negate: Cond: $i0 == 1257388   and Intersect: Negate: Cond: $i0 == 39801   and Intersect: Negate: Cond: $i0 == 39797   and Intersect: Negate: Cond: $i0 == 39785   and Intersect: Negate: Cond: $i0 == 39784   and Intersect: Negate: Cond: $i0 == -39224379   and Intersect: Negate: Cond: $i0 == -126180830   and Intersect: Negate: Cond: $i0 == -176321095   and Intersect: Negate: Cond: $i0 == -221520171   and Intersect: Negate: Cond: $i0 == -263498853   and Intersect: Negate: Cond: $i0 == -365204099   and Intersect: Negate: Cond: $i0 == -470836938   and Intersect: Negate: Cond: $i0 == -585659236   and Intersect: Negate: Cond: $i0 == -1010649456   and Intersect: Negate: Cond: $i0 == -1149691069   and Intersect: Negate: Cond: $i0 == -1428966913   and Intersect: Negate: Cond: $i0 == -1603304977   and Intersect: Negate: Cond: $i0 == -1714881093   and Intersect: Negate: Cond: $i0 == -1854475207   and Intersect: Negate: Cond: $i0 == -2043530993   and Non Conditional                                          
 ; Statement: tableswitch(b9) {     case 0: goto return 4;     case 1: goto return 5;     case 2: goto return 5;     case 3: goto return 5;     case 4: goto return 5;     case 5: goto return 6;     case 6: goto return 8;     case 7: goto return 8;     case 8: goto return 8;     case 9: goto return 8;     case 10: goto return 8;     case 11: goto return 9;     case 12: goto return 9;     case 13: goto return 9;     case 14: goto return 9;     case 15: goto return 9;     case 16: goto return 9;     case 17: goto return 9;     case 18: goto return 12;     case 19: goto return 12;     case 20: goto return 12;     case 21: goto return 12;     case 22: goto return 12;     case 23: goto return 13;     case 24: goto return 13;     case 25: goto return 13;     case 26: goto return 13;     case 27: goto return 13;     case 28: goto return 13;     case 29: goto return 13;     case 30: goto return 16;     case 31: goto return 16;     case 32: goto return 16;     case 33: goto return 16;     case 34: goto return 20;     case 35: goto return 20;     case 36: goto return 21;     case 37: goto return 21;     case 38: goto return 25;     case 39: goto return 28;     case 40: goto return 28;     case 41: goto return 40;     default: goto i10 = 1; } 
(assert (and (= var259 0) true)) ; Intersect: Cond: b9 == 0  and Non Conditional 
 ; Statement: return 4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1807=r0, var3396=null_type, var259=b9, var3280=$i0}
; {r0=var1807, null_type=var3396, b9=var259, $i0=var3280}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b9 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2043530993: goto $z41 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Enum;)V");     case -1854475207: goto $z40 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case -1714881093: goto $z39 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;");     case -1603304977: goto $z38 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;JLjava/lang/Object;)V");     case -1428966913: goto $z37 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/String;)V");     case -1149691069: goto $z36 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;");     case -1010649456: goto $z35 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;");     case -585659236: goto $z34 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;");     case -470836938: goto $z33 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V");     case -365204099: goto $z32 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V");     case -263498853: goto $z31 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;");     case -221520171: goto $z30 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/util/List;Ljava/lang/reflect/Type;)V");     case -176321095: goto $z29 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V");     case -126180830: goto $z28 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()Ljava/lang/Class;");     case -39224379: goto $z27 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/util/List;ILjava/lang/String;)V");     case 39784: goto $z26 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()I");     case 39785: goto $z25 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()J");     case 39797: goto $z24 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()V");     case 39801: goto $z23 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()Z");     case 1257388: goto $z22 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(C)Z");     case 1263150: goto $z21 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(I)V");     case 1264111: goto $z20 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)V");     case 1264115: goto $z19 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Z");     case 149404307: goto $z18 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;");     case 162211716: goto $z17 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z");     case 204540071: goto $z16 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;)V");     case 204540075: goto $z15 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;)Z");     case 390338868: goto $z14 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Ljava/lang/Object;");     case 438407678: goto $z13 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V");     case 470778755: goto $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Lcom/alibaba/fastjson2/reader/FieldReader;");     case 835331803: goto $z11 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Class;Ljava/util/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V");     case 1014040867: goto $z10 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(J)Ljava/lang/Object;");     case 1192622657: goto $z9 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V");     case 1422865092: goto $z8 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(I)Ljava/lang/Object;");     case 1546574451: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V");     case 1565685777: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;)V");     case 1565685781: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Ljava/lang/Object;)Z");     case 1638725077: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(I)Ljava/lang/Integer;");     case 1655445243: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;");     case 1942950347: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("()Ljava/lang/String;");     case 2045804348: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;I)V");     case 2045805309: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("(Lcom/alibaba/fastjson2/JSONWriter;J)V");     default: goto tableswitch(b9) {     case 0: goto return 4;     case 1: goto return 5;     case 2: goto return 5;     case 3: goto return 5;     case 4: goto return 5;     case 5: goto return 6;     case 6: goto return 8;     case 7: goto return 8;     case 8: goto return 8;     case 9: goto return 8;     case 10: goto return 8;     case 11: goto return 9;     case 12: goto return 9;     case 13: goto return 9;     case 14: goto return 9;     case 15: goto return 9;     case 16: goto return 9;     case 17: goto return 9;     case 18: goto return 12;     case 19: goto return 12;     case 20: goto return 12;     case 21: goto return 12;     case 22: goto return 12;     case 23: goto return 13;     case 24: goto return 13;     case 25: goto return 13;     case 26: goto return 13;     case 27: goto return 13;     case 28: goto return 13;     case 29: goto return 13;     case 30: goto return 16;     case 31: goto return 16;     case 32: goto return 16;     case 33: goto return 16;     case 34: goto return 20;     case 35: goto return 20;     case 36: goto return 21;     case 37: goto return 21;     case 38: goto return 25;     case 39: goto return 28;     case 40: goto return 28;     case 41: goto return 40;     default: goto i10 = 1; }; };	tableswitch(b9) {     case 0: goto return 4;     case 1: goto return 5;     case 2: goto return 5;     case 3: goto return 5;     case 4: goto return 5;     case 5: goto return 6;     case 6: goto return 8;     case 7: goto return 8;     case 8: goto return 8;     case 9: goto return 8;     case 10: goto return 8;     case 11: goto return 9;     case 12: goto return 9;     case 13: goto return 9;     case 14: goto return 9;     case 15: goto return 9;     case 16: goto return 9;     case 17: goto return 9;     case 18: goto return 12;     case 19: goto return 12;     case 20: goto return 12;     case 21: goto return 12;     case 22: goto return 12;     case 23: goto return 13;     case 24: goto return 13;     case 25: goto return 13;     case 26: goto return 13;     case 27: goto return 13;     case 28: goto return 13;     case 29: goto return 13;     case 30: goto return 16;     case 31: goto return 16;     case 32: goto return 16;     case 33: goto return 16;     case 34: goto return 20;     case 35: goto return 20;     case 36: goto return 21;     case 37: goto return 21;     case 38: goto return 25;     case 39: goto return 28;     case 40: goto return 28;     case 41: goto return 40;     default: goto i10 = 1; };	return 4
;block_num 3