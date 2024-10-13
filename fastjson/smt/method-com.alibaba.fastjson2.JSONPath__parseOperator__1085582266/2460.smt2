(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3883 0)
(declare-sort var480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ch/1287024874 (var3883) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readFieldNameHashCodeUnquote/-768543060 (var3883) Int)
(declare-fun var480-init () var480)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFieldName/1061133343 (var3883) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var480 String) void)
(declare-const null-var3883 var3883)
(declare-const var261 var3883) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var261 null-var3883)))
(define-const var729 Int (ch/1287024874 var261)) ; Statement: $c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(define-const var1628 Int (cast-from-Int-to-Int var729)) ; Statement: $i8 = (int) $c0 
 ; Statement: lookupswitch($i8) {     case 33: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 60: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 61: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 62: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 66: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 69: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 73: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 76: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 78: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 82: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 83: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 98: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 101: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 105: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 108: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 110: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 114: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 115: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     default: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>(); } 
(assert (and (not (= var1628 115)) (and (not (= var1628 114)) (and (not (= var1628 110)) (and (not (= var1628 108)) (and (not (= var1628 105)) (and (not (= var1628 101)) (and (not (= var1628 98)) (and (not (= var1628 83)) (and (not (= var1628 82)) (and (not (= var1628 78)) (and (not (= var1628 76)) (and (not (= var1628 73)) (and (not (= var1628 69)) (and (not (= var1628 66)) (and (not (= var1628 62)) (and (not (= var1628 61)) (and (not (= var1628 60)) (and (not (= var1628 33)) true))))))))))))))))))) ; Intersect: Negate: Cond: $i8 == 115   and Intersect: Negate: Cond: $i8 == 114   and Intersect: Negate: Cond: $i8 == 110   and Intersect: Negate: Cond: $i8 == 108   and Intersect: Negate: Cond: $i8 == 105   and Intersect: Negate: Cond: $i8 == 101   and Intersect: Negate: Cond: $i8 == 98   and Intersect: Negate: Cond: $i8 == 83   and Intersect: Negate: Cond: $i8 == 82   and Intersect: Negate: Cond: $i8 == 78   and Intersect: Negate: Cond: $i8 == 76   and Intersect: Negate: Cond: $i8 == 73   and Intersect: Negate: Cond: $i8 == 69   and Intersect: Negate: Cond: $i8 == 66   and Intersect: Negate: Cond: $i8 == 62   and Intersect: Negate: Cond: $i8 == 61   and Intersect: Negate: Cond: $i8 == 60   and Intersect: Negate: Cond: $i8 == 33   and Non Conditional                  
(assert true)
;(assert (readFieldNameHashCodeUnquote/-768543060 var261)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>() 

(declare-const var261!1 var3883)
(define-const var2427 var480 var480-init) ; Statement: $r113 = new com.alibaba.fastjson2.JSONException 
(define-const var2964 String String-init) ; Statement: $r112 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2964)) ; Statement: specialinvoke $r112.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2964!1 String)
(assert (= var2964!1 ""))
(assert true)
(define-const var3693 String (append/672562846 var2964!1 "not support operator : ")) ; Statement: $r76 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support operator : ") 
(declare-const var2964!2 String)
(assert (= var2964!2 (str.++ var2964!1 "not support operator : ")))
(assert true)
(define-const var2364 String (getFieldName/1061133343 var261!1)) ; Statement: $r75 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getFieldName()>() 
(assert true)
(define-const var382 String (append/672562846 var3693 var2364)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r75) 
(declare-const var3693!1 String)
(assert (= var3693!1 (str.++ var3693 var2364)))
(assert true)
(define-const var553 String (toString/-2075883882 var382)) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2427 var553)) ; Statement: specialinvoke $r113.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r78) 

(declare-const var2427!1 var480)
(declare-const var553!1 String)
 ; Statement: throw $r113 
(check-sat)
(get-model)
(get-unsat-core)
; {ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), cast-from-Int-to-Int=([char], int), readFieldNameHashCodeUnquote/-768543060=([com.alibaba.fastjson2.JSONReader], long), var480-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFieldName/1061133343=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3883=com.alibaba.fastjson2.JSONReader, var261=r0, var729=$c0, var1628=$i8, var480=com.alibaba.fastjson2.JSONException, var2427=$r113, var2964=$r112, var3693=$r76, var2364=$r75, var382=$r77, var553=$r78}
; {com.alibaba.fastjson2.JSONReader=var3883, r0=var261, $c0=var729, $i8=var1628, com.alibaba.fastjson2.JSONException=var480, $r113=var2427, $r112=var2964, $r76=var3693, $r75=var2364, $r77=var382, $r78=var553}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	$c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$i8 = (int) $c0;	lookupswitch($i8) {     case 33: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 60: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 61: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 62: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();     case 66: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 69: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 73: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 76: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 78: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 82: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 83: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 98: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 101: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 105: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 108: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 110: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 114: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     case 115: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();     default: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>(); };	virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readFieldNameHashCodeUnquote()>();	$r113 = new com.alibaba.fastjson2.JSONException;	$r112 = new java.lang.StringBuilder;	specialinvoke $r112.<java.lang.StringBuilder: void <init>()>();	$r76 = virtualinvoke $r112.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support operator : ");	$r75 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getFieldName()>();	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r75);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r113.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r78);	throw $r113
;block_num 2