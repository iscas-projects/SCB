(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2176 0)
(declare-sort var1423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueType/1287024874 (var2176) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1423-init () var1423)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1423 String) void)
(declare-const null-var2176 var2176)
(declare-const var953 var2176) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var953 null-var2176)))
(define-const var2492 Int (valueType/1287024874 var953)) ; Statement: $b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType> 
(define-const var1024 Int (cast-from-Int-to-Int var2492)) ; Statement: $i28 = (int) $b0 
 ; Statement: tableswitch($i28) {     case 1: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r28 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var1024 13)) (and (not (= var1024 12)) (and (not (= var1024 11)) (and (not (= var1024 10)) (and (not (= var1024 9)) (and (not (= var1024 8)) (and (not (= var1024 7)) (and (not (= var1024 6)) (and (not (= var1024 5)) (and (not (= var1024 4)) (and (not (= var1024 3)) (and (not (= var1024 2)) (and (not (= var1024 1)) true)))))))))))))) ; Intersect: Negate: Cond: $i28 == 13   and Intersect: Negate: Cond: $i28 == 12   and Intersect: Negate: Cond: $i28 == 11   and Intersect: Negate: Cond: $i28 == 10   and Intersect: Negate: Cond: $i28 == 9   and Intersect: Negate: Cond: $i28 == 8   and Intersect: Negate: Cond: $i28 == 7   and Intersect: Negate: Cond: $i28 == 6   and Intersect: Negate: Cond: $i28 == 5   and Intersect: Negate: Cond: $i28 == 4   and Intersect: Negate: Cond: $i28 == 3   and Intersect: Negate: Cond: $i28 == 2   and Intersect: Negate: Cond: $i28 == 1   and Non Conditional             
(define-const var2752 var1423 var1423-init) ; Statement: $r28 = new com.alibaba.fastjson2.JSONException 
(define-const var1715 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1715)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1715!1 String)
(assert (= var1715!1 ""))
(assert true)
(define-const var1932 String (append/672562846 var1715!1 "TODO : ")) ; Statement: $r17 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ") 
(declare-const var1715!2 String)
(assert (= var1715!2 (str.++ var1715!1 "TODO : ")))
(define-const var3169 Int (valueType/1287024874 var953)) ; Statement: $b25 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType> 
(define-const var1523 Int (cast-from-Int-to-Int var3169)) ; Statement: $i29 = (int) $b25 
(assert true)
(define-const var2623 String (append/-1001720160 var1932 var1523)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i29) 
(declare-const var1932!1 String)
(assert (str.prefixof var1932 var1932!1))
(assert true)
(define-const var3741 String (toString/-2075883882 var2623)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2752 var3741)) ; Statement: specialinvoke $r28.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r19) 

(declare-const var2752!1 var1423)
(declare-const var3741!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {valueType/1287024874=([com.alibaba.fastjson2.JSONReader], byte), cast-from-Int-to-Int=([byte], int), var1423-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2176=com.alibaba.fastjson2.JSONReader, var953=r0, var2492=$b0, var1024=$i28, var1423=com.alibaba.fastjson2.JSONException, var2752=$r28, var1715=$r27, var1932=$r17, var3169=$b25, var1523=$i29, var2623=$r18, var3741=$r19}
; {com.alibaba.fastjson2.JSONReader=var2176, r0=var953, $b0=var2492, $i28=var1024, com.alibaba.fastjson2.JSONException=var1423, $r28=var2752, $r27=var1715, $r17=var1932, $b25=var3169, $i29=var1523, $r18=var2623, $r19=var3741}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$b0 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType>;	$i28 = (int) $b0;	tableswitch($i28) {     case 1: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 2: goto $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 3: goto $r11 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.String stringValue>;     case 4: goto $z0 = r0.<com.alibaba.fastjson2.JSONReader: boolean boolValue>;     case 5: goto $r7 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;     case 6: goto $r5 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 7: goto $r3 = r0.<com.alibaba.fastjson2.JSONReader: java.lang.Object complex>;     case 8: goto $r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigDecimal getBigDecimal()>();     case 9: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 10: goto $i12 = r0.<com.alibaba.fastjson2.JSONReader: int mag1>;     case 11: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 12: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     case 13: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Number getNumber()>();     default: goto $r28 = new com.alibaba.fastjson2.JSONException; };	$r28 = new com.alibaba.fastjson2.JSONException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ");	$b25 = r0.<com.alibaba.fastjson2.JSONReader: byte valueType>;	$i29 = (int) $b25;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i29);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r19);	throw $r28
;block_num 2