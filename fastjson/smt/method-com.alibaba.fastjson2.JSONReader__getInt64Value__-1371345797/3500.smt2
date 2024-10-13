(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2172 0)
(declare-sort var3801 0)
(declare-sort var2920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueType/1287024874 (var2172) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun numberError/-1164047646 (var2172) var2920)
(declare-const null-var2172 var2172)
(declare-const null-var3801 var3801)
(declare-const var3727 var2172) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3727 null-var2172)))
(define-const var2450 Int (valueType/1287024874 var3727)) ; Statement: $b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType> 
(define-const var2733 Int (cast-from-Int-to-Int var2450)) ; Statement: $i28 = (int) $b0 
 ; Statement: tableswitch($i28) {     case 1: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r28 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var2733 13)) (and (not (= var2733 12)) (and (not (= var2733 11)) (and (not (= var2733 10)) (and (not (= var2733 9)) (and (not (= var2733 8)) (and (not (= var2733 7)) (and (not (= var2733 6)) (and (not (= var2733 5)) (and (not (= var2733 4)) (and (not (= var2733 3)) (and (not (= var2733 2)) (and (not (= var2733 1)) true)))))))))))))) ; Intersect: Negate: Cond: $i28 == 13   and Intersect: Negate: Cond: $i28 == 12   and Intersect: Negate: Cond: $i28 == 11   and Intersect: Negate: Cond: $i28 == 10   and Intersect: Negate: Cond: $i28 == 9   and Intersect: Negate: Cond: $i28 == 8   and Intersect: Negate: Cond: $i28 == 7   and Intersect: Negate: Cond: $i28 == 6   and Intersect: Negate: Cond: $i28 == 5   and Intersect: Negate: Cond: $i28 == 4   and Intersect: Negate: Cond: $i28 == 3   and Intersect: Negate: Cond: $i28 == 2   and Intersect: Negate: Cond: $i28 == 1   and Non Conditional             
(declare-const var1467 var3801) ; Statement: $r20 := @caughtexception 
(assert (not (= var1467 null-var3801)))
(assert true)
(define-const var1741 var2920 (numberError/-1164047646 var3727)) ; Statement: $r21 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONException numberError()>() 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {valueType/1287024874=([com.alibaba.fastjson2.JSONReader], byte), cast-from-Int-to-Int=([byte], int), numberError/-1164047646=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONException)}
; {var2172=com.alibaba.fastjson2.JSONReader, var3727=r0, var2450=$b0, var2733=$i28, var3801=java.lang.ArithmeticException, var1467=$r20, var2920=com.alibaba.fastjson2.JSONException, var1741=$r21}
; {com.alibaba.fastjson2.JSONReader=var2172, r0=var3727, $b0=var2450, $i28=var2733, java.lang.ArithmeticException=var3801, $r20=var1467, com.alibaba.fastjson2.JSONException=var2920, $r21=var1741}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType>;	$i28 = (int) $b0;	tableswitch($i28) {     case 1: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r28 = new com.alibaba.fastjson2.JSONException; };	$r20 := @caughtexception;	$r21 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONException numberError()>();	throw $r21
;block_num 2