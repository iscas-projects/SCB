(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2102 0)
(declare-sort var3104 0)
(declare-sort var1748 0)
(declare-sort var3906 0)
(declare-sort var3183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/2124218233 (var3104) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isObject/-931506320 (var3104) Bool)
(declare-fun var3906-init () var3906)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3183_typeName/1994747818 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3104 String) String)
(declare-fun <init>/-2099196170 (var3906 String) void)
(declare-const null-var2102 var2102)
(declare-const null-var3104 var3104)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1748 var1748)
(declare-const null-Int Int)
(declare-const var846 var2102) ; Statement: r8 := @this: com.alibaba.fastjson2.util.JodaSupport$LocalDateReader 
(assert (not (= var846 null-var2102)))
(declare-const var2746 var3104) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2746 null-var3104)))
(declare-const var3561 ClassObject) ; Statement: r32 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3561 null-ClassObject)))
(declare-const var3129 var1748) ; Statement: r33 := @parameter2: java.lang.Object 
(assert (not (= var3129 null-var1748)))
(declare-const var3280 Int) ; Statement: l15 := @parameter3: long 
(assert (not (= var3280 null-Int)))
(assert true)
(define-const var497 Int (getType/2124218233 var2746)) ; Statement: b0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: byte getType()>() 
(define-const var333 Int (cast-from-Int-to-Int var497)) ; Statement: $i17 = (int) b0 
(define-const var3328 Int (cast-from-Int-to-Int (- 87))) ; Statement: $i19 = (int) -87 
 ; Statement: if $i17 != $i19 goto $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isObject()>() 
(assert (not (= var333 var3328))) ; Cond: $i17 != $i19 
(assert true)
(define-const var2453 Bool (isObject/-931506320 var2746)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isObject()>() 
 ; Statement: if $z0 == 0 goto $r44 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var2453 1 0) 0)) ; Cond: $z0 == 0 
(define-const var494 var3906 var3906-init) ; Statement: $r44 = new com.alibaba.fastjson2.JSONException 
(define-const var984 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var984)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var984!1 String)
(assert (= var984!1 ""))
(assert true)
(define-const var2452 String (append/672562846 var984!1 "not support ")) ; Statement: $r4 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support ") 
(declare-const var984!2 String)
(assert (= var984!2 (str.++ var984!1 "not support ")))
(define-const var2871 String (var3183_typeName/1994747818 var497)) ; Statement: $r3 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0) 
(assert true)
(define-const var1649 String (append/672562846 var2452 var2871)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2452!1 String)
(assert (= var2452!1 (str.++ var2452 var2871)))
(assert true)
(define-const var1354 String (toString/-2075883882 var1649)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var793 String (info/-1659839707 var2746 var1354)) ; Statement: $r7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r6) 
(assert true)
;(assert (<init>/-2099196170 var494 var793)) ; Statement: specialinvoke $r44.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var494!1 var3906)
(declare-const var793!1 String)
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/2124218233=([com.alibaba.fastjson2.JSONReader], byte), cast-from-Int-to-Int=([byte], int), isObject/-931506320=([com.alibaba.fastjson2.JSONReader], boolean), var3906-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3183_typeName/1994747818=([byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2102=com.alibaba.fastjson2.util.JodaSupport$LocalDateReader, var846=r8, var3104=com.alibaba.fastjson2.JSONReader, var2746=r0, var3561=r32, var1748=java.lang.Object, var3129=r33, var3280=l15, var497=b0, var333=$i17, var3328=$i19, var2453=$z0, var3906=com.alibaba.fastjson2.JSONException, var494=$r44, var984=$r43, var2452=$r4, var3183=com.alibaba.fastjson2.JSONB, var2871=$r3, var1649=$r5, var1354=$r6, var793=$r7}
; {com.alibaba.fastjson2.util.JodaSupport$LocalDateReader=var2102, r8=var846, com.alibaba.fastjson2.JSONReader=var3104, r0=var2746, r32=var3561, java.lang.Object=var1748, r33=var3129, l15=var3280, b0=var497, $i17=var333, $i19=var3328, $z0=var2453, com.alibaba.fastjson2.JSONException=var3906, $r44=var494, $r43=var984, $r4=var2452, com.alibaba.fastjson2.JSONB=var3183, $r3=var2871, $r5=var1649, $r6=var1354, $r7=var793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.util.JodaSupport$LocalDateReader;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r32 := @parameter1: java.lang.reflect.Type;	r33 := @parameter2: java.lang.Object;	l15 := @parameter3: long;	b0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: byte getType()>();	$i17 = (int) b0;	$i19 = (int) -87;	if $i17 != $i19 goto $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isObject()>();	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isObject()>();	if $z0 == 0 goto $r44 = new com.alibaba.fastjson2.JSONException;	$r44 = new com.alibaba.fastjson2.JSONException;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support ");	$r3 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r6);	specialinvoke $r44.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	throw $r44
;block_num 3