(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3113 0)
(declare-sort var2728 0)
(declare-sort var372 0)
(declare-sort var2870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2728 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var2728) Int)
(declare-fun var2870-init () var2870)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var2728) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2870 String) void)
(declare-const null-var3113 var3113)
(declare-const null-var2728 var2728)
(declare-const null-ClassObject ClassObject)
(declare-const null-var372 var372)
(declare-const null-Int Int)
(declare-const var3113-TYPE_HASH Int)
(declare-const var1240 var3113) ; Statement: r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray 
(assert (not (= var1240 null-var3113)))
(declare-const var2581 var2728) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2581 null-var2728)))
(declare-const var3905 ClassObject) ; Statement: r9 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3905 null-ClassObject)))
(declare-const var3231 var372) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var3231 null-var372)))
(declare-const var2179 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var2179 null-Int)))
(assert true)
(define-const var1297 Bool (nextIfMatch/-1486561452 var2581 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var1297 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var500 Int (readTypeHashCode/-2035886982 var2581)) ; Statement: l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var2044 Int var3113-TYPE_HASH) ; Statement: $l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray: long TYPE_HASH> 
(define-const var310 Int (ite (> var500 var2044) 1 (ite (< var500 var2044) (- 1) 0))) ; Statement: $b1 = l4 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= var310 0))) ; Negate: Cond: $b1 == 0  
(define-const var3823 var2870 var2870-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONException 
(define-const var283 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var283)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var283!1 String)
(assert (= var283!1 ""))
(assert true)
(define-const var685 String (append/672562846 var283!1 "not support autoType : ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var283!2 String)
(assert (= var283!2 (str.++ var283!1 "not support autoType : ")))
(assert true)
(define-const var251 String (getString/1018493317 var2581)) ; Statement: $r4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var3640 String (append/672562846 var685 var251)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var685!1 String)
(assert (= var685!1 (str.++ var685 var251)))
(assert true)
(define-const var2946 String (toString/-2075883882 var3640)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3823 var2946)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var3823!1 var2870)
(declare-const var2946!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var2870-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3113=com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray, var1240=r8, var2728=com.alibaba.fastjson2.JSONReader, var2581=r0, var3905=r9, var372=java.lang.Object, var3231=r10, var2179=l3, var1297=$z0, var500=l4, var2044=$l0, var310=$b1, var2870=com.alibaba.fastjson2.JSONException, var3823=$r12, var283=$r11, var685=$r5, var251=$r4, var3640=$r6, var2946=$r7}
; {com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray=var3113, r8=var1240, com.alibaba.fastjson2.JSONReader=var2728, r0=var2581, r9=var3905, java.lang.Object=var372, r10=var3231, l3=var2179, $z0=var1297, l4=var500, $l0=var2044, $b1=var310, com.alibaba.fastjson2.JSONException=var2870, $r12=var3823, $r11=var283, $r5=var685, $r4=var251, $r6=var3640, $r7=var2946}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r9 := @parameter1: java.lang.reflect.Type;	r10 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplBoolValueArray: long TYPE_HASH>;	$b1 = l4 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$r12 = new com.alibaba.fastjson2.JSONException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	throw $r12
;block_num 3