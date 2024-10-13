(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var736-ES5 var736)
(declare-const var61 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var61 null-String)))
(define-const var1887 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1159 Int (hashCode/-467973558 var61)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2143155323: goto $z16 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_unstable");     case -1469784621: goto $z15 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2015");     case -1469784620: goto $z14 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2016");     case -1469784619: goto $z13 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2017");     case -1469784618: goto $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2018");     case -1469784617: goto $z11 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2019");     case -1469784595: goto $z10 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2020");     case -1469784594: goto $z9 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2021");     case -1467943964: goto $z8 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_next");     case 96673: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 100677: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es3");     case 100679: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es5");     case 100680: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es6");     case 100681: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es7");     case 100682: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es8");     case 100683: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es9");     case 523171876: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_unsupported");     default: goto tableswitch(b1) {     case 0: goto $r13 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES3>;     case 1: goto $r12 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES5>;     case 2: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 3: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 4: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 5: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 6: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 7: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 8: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 9: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 10: goto $r7 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2019>;     case 11: goto $r6 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2020>;     case 12: goto $r5 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2021>;     case 13: goto $r4 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_NEXT>;     case 14: goto $r3 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSTABLE>;     case 15: goto $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSUPPORTED>;     case 16: goto $r1 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ALL>;     default: goto $r14 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1159 523171876)) (and (not (= var1159 100683)) (and (not (= var1159 100682)) (and (not (= var1159 100681)) (and (not (= var1159 100680)) (and (not (= var1159 100679)) (and (not (= var1159 100677)) (and (not (= var1159 96673)) (and (not (= var1159 (- 1467943964))) (and (not (= var1159 (- 1469784594))) (and (not (= var1159 (- 1469784595))) (and (not (= var1159 (- 1469784617))) (and (not (= var1159 (- 1469784618))) (and (not (= var1159 (- 1469784619))) (and (not (= var1159 (- 1469784620))) (and (not (= var1159 (- 1469784621))) (and (not (= var1159 (- 2143155323))) true)))))))))))))))))) ; Intersect: Negate: Cond: $i0 == 523171876   and Intersect: Negate: Cond: $i0 == 100683   and Intersect: Negate: Cond: $i0 == 100682   and Intersect: Negate: Cond: $i0 == 100681   and Intersect: Negate: Cond: $i0 == 100680   and Intersect: Negate: Cond: $i0 == 100679   and Intersect: Negate: Cond: $i0 == 100677   and Intersect: Negate: Cond: $i0 == 96673   and Intersect: Negate: Cond: $i0 == -1467943964   and Intersect: Negate: Cond: $i0 == -1469784594   and Intersect: Negate: Cond: $i0 == -1469784595   and Intersect: Negate: Cond: $i0 == -1469784617   and Intersect: Negate: Cond: $i0 == -1469784618   and Intersect: Negate: Cond: $i0 == -1469784619   and Intersect: Negate: Cond: $i0 == -1469784620   and Intersect: Negate: Cond: $i0 == -1469784621   and Intersect: Negate: Cond: $i0 == -2143155323   and Non Conditional                 
 ; Statement: tableswitch(b1) {     case 0: goto $r13 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES3>;     case 1: goto $r12 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES5>;     case 2: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 3: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 4: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 5: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 6: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 7: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 8: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 9: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 10: goto $r7 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2019>;     case 11: goto $r6 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2020>;     case 12: goto $r5 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2021>;     case 13: goto $r4 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_NEXT>;     case 14: goto $r3 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSTABLE>;     case 15: goto $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSUPPORTED>;     case 16: goto $r1 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ALL>;     default: goto $r14 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1887 1) (and (not (= var1887 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var239 var736 var736-ES5) ; Statement: $r12 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES5> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var61=r0, var3600=null_type, var1887=b1, var1159=$i0, var736=com.google.javascript.jscomp.parsing.parser.FeatureSet, var239=$r12}
; {r0=var61, null_type=var3600, b1=var1887, $i0=var1159, com.google.javascript.jscomp.parsing.parser.FeatureSet=var736, $r12=var239}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2143155323: goto $z16 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_unstable");     case -1469784621: goto $z15 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2015");     case -1469784620: goto $z14 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2016");     case -1469784619: goto $z13 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2017");     case -1469784618: goto $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2018");     case -1469784617: goto $z11 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2019");     case -1469784595: goto $z10 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2020");     case -1469784594: goto $z9 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_2021");     case -1467943964: goto $z8 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_next");     case 96673: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 100677: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es3");     case 100679: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es5");     case 100680: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es6");     case 100681: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es7");     case 100682: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es8");     case 100683: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es9");     case 523171876: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("es_unsupported");     default: goto tableswitch(b1) {     case 0: goto $r13 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES3>;     case 1: goto $r12 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES5>;     case 2: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 3: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 4: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 5: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 6: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 7: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 8: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 9: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 10: goto $r7 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2019>;     case 11: goto $r6 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2020>;     case 12: goto $r5 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2021>;     case 13: goto $r4 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_NEXT>;     case 14: goto $r3 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSTABLE>;     case 15: goto $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSUPPORTED>;     case 16: goto $r1 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ALL>;     default: goto $r14 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r13 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES3>;     case 1: goto $r12 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES5>;     case 2: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 3: goto $r11 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2015>;     case 4: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 5: goto $r10 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2016>;     case 6: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 7: goto $r9 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2017>;     case 8: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 9: goto $r8 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2018>;     case 10: goto $r7 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2019>;     case 11: goto $r6 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2020>;     case 12: goto $r5 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES2021>;     case 13: goto $r4 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_NEXT>;     case 14: goto $r3 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSTABLE>;     case 15: goto $r2 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES_UNSUPPORTED>;     case 16: goto $r1 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ALL>;     default: goto $r14 = new java.lang.IllegalArgumentException; };	$r12 = <com.google.javascript.jscomp.parsing.parser.FeatureSet: com.google.javascript.jscomp.parsing.parser.FeatureSet ES5>;	return $r12
;block_num 3