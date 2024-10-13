(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1619 0)
(declare-sort var3058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueType/1287024874 (var1619) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3058-init () var3058)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3058 String) void)
(declare-const null-var1619 var1619)
(declare-const var2051 var1619) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2051 null-var1619)))
(define-const var3691 Int (valueType/1287024874 var2051)) ; Statement: $b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType> 
(define-const var572 Int (cast-from-Int-to-Int var3691)) ; Statement: $i29 = (int) $b0 
 ; Statement: tableswitch($i29) {     case 1: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r37 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var572 13)) (and (not (= var572 12)) (and (not (= var572 11)) (and (not (= var572 10)) (and (not (= var572 9)) (and (not (= var572 8)) (and (not (= var572 7)) (and (not (= var572 6)) (and (not (= var572 5)) (and (not (= var572 4)) (and (not (= var572 3)) (and (not (= var572 2)) (and (not (= var572 1)) true)))))))))))))) ; Intersect: Negate: Cond: $i29 == 13   and Intersect: Negate: Cond: $i29 == 12   and Intersect: Negate: Cond: $i29 == 11   and Intersect: Negate: Cond: $i29 == 10   and Intersect: Negate: Cond: $i29 == 9   and Intersect: Negate: Cond: $i29 == 8   and Intersect: Negate: Cond: $i29 == 7   and Intersect: Negate: Cond: $i29 == 6   and Intersect: Negate: Cond: $i29 == 5   and Intersect: Negate: Cond: $i29 == 4   and Intersect: Negate: Cond: $i29 == 3   and Intersect: Negate: Cond: $i29 == 2   and Intersect: Negate: Cond: $i29 == 1   and Non Conditional             
(define-const var1760 var3058 var3058-init) ; Statement: $r37 = new com.alibaba.fastjson2.JSONException 
(define-const var3285 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3285)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3285!1 String)
(assert (= var3285!1 ""))
(assert true)
(define-const var1114 String (append/672562846 var3285!1 "TODO : ")) ; Statement: $r23 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ") 
(declare-const var3285!2 String)
(assert (= var3285!2 (str.++ var3285!1 "TODO : ")))
(define-const var1714 Int (valueType/1287024874 var2051)) ; Statement: $b25 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType> 
(define-const var1392 Int (cast-from-Int-to-Int var1714)) ; Statement: $i32 = (int) $b25 
(assert true)
(define-const var1167 String (append/-1001720160 var1114 var1392)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i32) 
(declare-const var1114!1 String)
(assert (str.prefixof var1114 var1114!1))
(assert true)
(define-const var409 String (toString/-2075883882 var1167)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1760 var409)) ; Statement: specialinvoke $r37.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r25) 

(declare-const var1760!1 var3058)
(declare-const var409!1 String)
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {valueType/1287024874=([com.alibaba.fastjson2.JSONReader], byte), cast-from-Int-to-Int=([byte], int), var3058-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1619=com.alibaba.fastjson2.JSONReader, var2051=r0, var3691=$b0, var572=$i29, var3058=com.alibaba.fastjson2.JSONException, var1760=$r37, var3285=$r36, var1114=$r23, var1714=$b25, var1392=$i32, var1167=$r24, var409=$r25}
; {com.alibaba.fastjson2.JSONReader=var1619, r0=var2051, $b0=var3691, $i29=var572, com.alibaba.fastjson2.JSONException=var3058, $r37=var1760, $r36=var3285, $r23=var1114, $b25=var1714, $i32=var1392, $r24=var1167, $r25=var409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType>;	$i29 = (int) $b0;	tableswitch($i29) {     case 1: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i11 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r37 = new com.alibaba.fastjson2.JSONException; };	$r37 = new com.alibaba.fastjson2.JSONException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ");	$b25 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType>;	$i32 = (int) $b25;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i32);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r25);	throw $r37
;block_num 2