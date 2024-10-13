(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2812 0)
(declare-sort var1221 0)
(declare-sort var1976 0)
(declare-sort var262 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var1221 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var1221) Int)
(declare-fun var3820-init () var3820)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var1221) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3820 String) void)
(declare-const null-var2812 var2812)
(declare-const null-var1221 var1221)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1976 var1976)
(declare-const null-Int Int)
(declare-const var2812-HASH_TYPE Int)
(declare-const var262-HASH_TYPE Int)
(declare-const var1376 var2812) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray 
(assert (not (= var1376 null-var2812)))
(declare-const var1942 var1221) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1942 null-var1221)))
(declare-const var3781 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3781 null-ClassObject)))
(declare-const var3530 var1976) ; Statement: r12 := @parameter2: java.lang.Object 
(assert (not (= var3530 null-var1976)))
(declare-const var3461 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var3461 null-Int)))
(assert true)
(define-const var1178 Bool (nextIfMatch/-1486561452 var1942 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $z2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isBinary()>() 
(assert (not (= (ite var1178 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var990 Int (readTypeHashCode/-2035886982 var1942)) ; Statement: l7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var3131 Int var2812-HASH_TYPE) ; Statement: $l2 = <com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long HASH_TYPE> 
(define-const var393 Int (ite (> var990 var3131) 1 (ite (< var990 var3131) (- 1) 0))) ; Statement: $b3 = l7 cmp $l2 
 ; Statement: if $b3 == 0 goto $z2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isBinary()>() 
(assert (not (= var393 0))) ; Negate: Cond: $b3 == 0  
(define-const var2392 Int var262-HASH_TYPE) ; Statement: $l4 = <com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array: long HASH_TYPE> 
(define-const var1132 Int (ite (> var990 var2392) 1 (ite (< var990 var2392) (- 1) 0))) ; Statement: $b5 = l7 cmp $l4 
 ; Statement: if $b5 == 0 goto $z2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isBinary()>() 
(assert (not (= var1132 0))) ; Negate: Cond: $b5 == 0  
(define-const var783 var3820 var3820-init) ; Statement: $r17 = new com.alibaba.fastjson2.JSONException 
(define-const var716 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var716)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var716!1 String)
(assert (= var716!1 ""))
(assert true)
(define-const var2936 String (append/672562846 var716!1 "not support autoType : ")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var716!2 String)
(assert (= var716!2 (str.++ var716!1 "not support autoType : ")))
(assert true)
(define-const var860 String (getString/1018493317 var1942)) ; Statement: $r7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var563 String (append/672562846 var2936 var860)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2936!1 String)
(assert (= var2936!1 (str.++ var2936 var860)))
(assert true)
(define-const var2408 String (toString/-2075883882 var563)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var783 var2408)) ; Statement: specialinvoke $r17.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var783!1 var3820)
(declare-const var2408!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var3820-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2812=com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray, var1376=r1, var1221=com.alibaba.fastjson2.JSONReader, var1942=r0, var3781=r11, var1976=java.lang.Object, var3530=r12, var3461=l6, var1178=$z0, var990=l7, var3131=$l2, var393=$b3, var262=com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array, var2392=$l4, var1132=$b5, var3820=com.alibaba.fastjson2.JSONException, var783=$r17, var716=$r16, var2936=$r8, var860=$r7, var563=$r9, var2408=$r10}
; {com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray=var2812, r1=var1376, com.alibaba.fastjson2.JSONReader=var1221, r0=var1942, r11=var3781, java.lang.Object=var1976, r12=var3530, l6=var3461, $z0=var1178, l7=var990, $l2=var3131, $b3=var393, com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array=var262, $l4=var2392, $b5=var1132, com.alibaba.fastjson2.JSONException=var3820, $r17=var783, $r16=var716, $r8=var2936, $r7=var860, $r9=var563, $r10=var2408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r11 := @parameter1: java.lang.reflect.Type;	r12 := @parameter2: java.lang.Object;	l6 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $z2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isBinary()>();	l7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l2 = <com.alibaba.fastjson2.reader.ObjectReaderImplInt8ValueArray: long HASH_TYPE>;	$b3 = l7 cmp $l2;	if $b3 == 0 goto $z2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isBinary()>();	$l4 = <com.alibaba.fastjson2.reader.ObjectReaderImplInt8Array: long HASH_TYPE>;	$b5 = l7 cmp $l4;	if $b5 == 0 goto $z2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isBinary()>();	$r17 = new com.alibaba.fastjson2.JSONException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r17
;block_num 4