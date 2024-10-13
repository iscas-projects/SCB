(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3968 0)
(declare-sort var3384 0)
(declare-sort var2478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueType/1287024874 (var3968) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numberError/-1164047646 (var3968) var2478)
(declare-const null-var3968 var3968)
(declare-const null-var3384 var3384)
(declare-const var2917 var3968) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2917 null-var3968)))
(define-const var1099 Int (valueType/1287024874 var2917)) ; Statement: $b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType> 
(define-const var2948 Int (cast-from-Int-to-Int var1099)) ; Statement: $i29 = (int) $b0 
 ; Statement: tableswitch($i29) {     case 1: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r37 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var2948 13)) (and (not (= var2948 12)) (and (not (= var2948 11)) (and (not (= var2948 10)) (and (not (= var2948 9)) (and (not (= var2948 8)) (and (not (= var2948 7)) (and (not (= var2948 6)) (and (not (= var2948 5)) (and (not (= var2948 4)) (and (not (= var2948 3)) (and (not (= var2948 2)) (and (not (= var2948 1)) true)))))))))))))) ; Intersect: Negate: Cond: $i29 == 13   and Intersect: Negate: Cond: $i29 == 12   and Intersect: Negate: Cond: $i29 == 11   and Intersect: Negate: Cond: $i29 == 10   and Intersect: Negate: Cond: $i29 == 9   and Intersect: Negate: Cond: $i29 == 8   and Intersect: Negate: Cond: $i29 == 7   and Intersect: Negate: Cond: $i29 == 6   and Intersect: Negate: Cond: $i29 == 5   and Intersect: Negate: Cond: $i29 == 4   and Intersect: Negate: Cond: $i29 == 3   and Intersect: Negate: Cond: $i29 == 2   and Intersect: Negate: Cond: $i29 == 1   and Non Conditional             
(declare-const var3740 var3384) ; Statement: $r26 := @caughtexception 
(assert (not (= var3740 null-var3384)))
(assert true)
(define-const var420 var2478 (numberError/-1164047646 var2917)) ; Statement: $r27 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONException numberError()>() 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {valueType/1287024874=([com.alibaba.fastjson2.JSONReader], byte), cast-from-Int-to-Int=([byte], int), numberError/-1164047646=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONException)}
; {var3968=com.alibaba.fastjson2.JSONReader, var2917=r0, var1099=$b0, var2948=$i29, var3384=java.lang.ArithmeticException, var3740=$r26, var2478=com.alibaba.fastjson2.JSONException, var420=$r27}
; {com.alibaba.fastjson2.JSONReader=var3968, r0=var2917, $b0=var1099, $i29=var2948, java.lang.ArithmeticException=var3384, $r26=var3740, com.alibaba.fastjson2.JSONException=var2478, $r27=var420}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType>;	$i29 = (int) $b0;	tableswitch($i29) {     case 1: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r37 = new com.alibaba.fastjson2.JSONException; };	$r26 := @caughtexception;	$r27 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONException numberError()>();	throw $r27
;block_num 2