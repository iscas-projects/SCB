(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2504 0)
(declare-sort var2033 0)
(declare-sort var702 0)
(declare-sort var1568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2033 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var2033) Int)
(declare-fun arrayClassNameHash/-1226265808 (var2504) Int)
(declare-fun getString/1018493317 (var2033) String)
(declare-fun var1568-init () var1568)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1568 String) void)
(declare-const null-var2504 var2504)
(declare-const null-var2033 var2033)
(declare-const null-ClassObject ClassObject)
(declare-const null-var702 var702)
(declare-const null-Int Int)
(declare-const var3292 var2504) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray 
(assert (not (= var3292 null-var2504)))
(declare-const var2385 var2033) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2385 null-var2033)))
(declare-const var647 ClassObject) ; Statement: r14 := @parameter1: java.lang.reflect.Type 
(assert (not (= var647 null-ClassObject)))
(declare-const var2219 var702) ; Statement: r15 := @parameter2: java.lang.Object 
(assert (not (= var2219 null-var702)))
(declare-const var317 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var317 null-Int)))
(assert true)
(define-const var2841 Bool (nextIfMatch/-1486561452 var2385 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var2841 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1866 Int (readTypeHashCode/-2035886982 var2385)) ; Statement: l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var2529 Int (arrayClassNameHash/-1226265808 var3292)) ; Statement: $l0 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: long arrayClassNameHash> 
(define-const var2736 Int (ite (> var1866 var2529) 1 (ite (< var1866 var2529) (- 1) 0))) ; Statement: $b1 = l4 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= var2736 0))) ; Negate: Cond: $b1 == 0  
(assert true)
(define-const var2745 String (getString/1018493317 var2385)) ; Statement: r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(define-const var1908 var1568 var1568-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var133 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var133)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var133!1 String)
(assert (= var133!1 ""))
(assert true)
(define-const var1768 String (append/672562846 var133!1 "not support input typeName ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input typeName ") 
(declare-const var133!2 String)
(assert (= var133!2 (str.++ var133!1 "not support input typeName ")))
(assert true)
(define-const var519 String (append/672562846 var1768 var2745)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 var2745)))
(assert true)
(define-const var3589 String (toString/-2075883882 var519)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1908 var3589)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var1908!1 var1568)
(declare-const var3589!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), arrayClassNameHash/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], long), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), var1568-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2504=com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray, var3292=r1, var2033=com.alibaba.fastjson2.JSONReader, var2385=r0, var647=r14, var702=java.lang.Object, var2219=r15, var317=l3, var2841=$z0, var1866=l4, var2529=$l0, var2736=$b1, var2745=r16, var1568=com.alibaba.fastjson2.JSONException, var1908=$r9, var133=$r10, var1768=$r11, var519=$r12, var3589=$r13}
; {com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray=var2504, r1=var3292, com.alibaba.fastjson2.JSONReader=var2033, r0=var2385, r14=var647, java.lang.Object=var702, r15=var2219, l3=var317, $z0=var2841, l4=var1866, $l0=var2529, $b1=var2736, r16=var2745, com.alibaba.fastjson2.JSONException=var1568, $r9=var1908, $r10=var133, $r11=var1768, $r12=var519, $r13=var3589}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r14 := @parameter1: java.lang.reflect.Type;	r15 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l0 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: long arrayClassNameHash>;	$b1 = l4 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input typeName ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 3