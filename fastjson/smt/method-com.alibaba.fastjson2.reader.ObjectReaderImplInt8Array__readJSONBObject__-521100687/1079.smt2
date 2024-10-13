(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1041 0)
(declare-sort var2830 0)
(declare-sort var1757 0)
(declare-sort var1297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2830 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var2830) Int)
(declare-fun var1297-init () var1297)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var2830) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1297 String) void)
(declare-const null-var1041 var1041)
(declare-const null-var2830 var2830)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1757 var1757)
(declare-const null-Int Int)
(declare-const var1041-HASH_TYPE Int)
(declare-const var3046 var1041) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array 
(assert (not (= var3046 null-var1041)))
(declare-const var3595 var2830) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3595 null-var2830)))
(declare-const var863 ClassObject) ; Statement: r13 := @parameter1: java.lang.reflect.Type 
(assert (not (= var863 null-ClassObject)))
(declare-const var1507 var1757) ; Statement: r14 := @parameter2: java.lang.Object 
(assert (not (= var1507 null-var1757)))
(declare-const var2123 Int) ; Statement: l5 := @parameter3: long 
(assert (not (= var2123 null-Int)))
(assert true)
(define-const var2727 Bool (nextIfMatch/-1486561452 var3595 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>() 
(assert (not (= (ite var2727 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var322 Int (readTypeHashCode/-2035886982 var3595)) ; Statement: l6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var911 Int var1041-HASH_TYPE) ; Statement: $l3 = <com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array: long HASH_TYPE> 
(define-const var3069 Int (ite (> var322 var911) 1 (ite (< var322 var911) (- 1) 0))) ; Statement: $b4 = l6 cmp $l3 
 ; Statement: if $b4 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>() 
(assert (not (= var3069 0))) ; Negate: Cond: $b4 == 0  
(define-const var154 var1297 var1297-init) ; Statement: $r17 = new com.alibaba.fastjson2.JSONException 
(define-const var12 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var12)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var12!1 String)
(assert (= var12!1 ""))
(assert true)
(define-const var1613 String (append/672562846 var12!1 "not support autoType : ")) ; Statement: $r10 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var12!2 String)
(assert (= var12!2 (str.++ var12!1 "not support autoType : ")))
(assert true)
(define-const var1804 String (getString/1018493317 var3595)) ; Statement: $r9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var2889 String (append/672562846 var1613 var1804)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1613!1 String)
(assert (= var1613!1 (str.++ var1613 var1804)))
(assert true)
(define-const var2627 String (toString/-2075883882 var2889)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var154 var2627)) ; Statement: specialinvoke $r17.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r12) 

(declare-const var154!1 var1297)
(declare-const var2627!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var1297-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1041=com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array, var3046=r3, var2830=com.alibaba.fastjson2.JSONReader, var3595=r0, var863=r13, var1757=java.lang.Object, var1507=r14, var2123=l5, var2727=$z0, var322=l6, var911=$l3, var3069=$b4, var1297=com.alibaba.fastjson2.JSONException, var154=$r17, var12=$r16, var1613=$r10, var1804=$r9, var2889=$r11, var2627=$r12}
; {com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array=var1041, r3=var3046, com.alibaba.fastjson2.JSONReader=var2830, r0=var3595, r13=var863, java.lang.Object=var1757, r14=var1507, l5=var2123, $z0=var2727, l6=var322, $l3=var911, $b4=var3069, com.alibaba.fastjson2.JSONException=var1297, $r17=var154, $r16=var12, $r10=var1613, $r9=var1804, $r11=var2889, $r12=var2627}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r13 := @parameter1: java.lang.reflect.Type;	r14 := @parameter2: java.lang.Object;	l5 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>();	l6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l3 = <com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array: long HASH_TYPE>;	$b4 = l6 cmp $l3;	if $b4 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>();	$r17 = new com.alibaba.fastjson2.JSONException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r12);	throw $r17
;block_num 3