(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3025 0)
(declare-sort var3002 0)
(declare-sort var1257 0)
(declare-sort var3601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var3002 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var3002) Int)
(declare-fun var3601-init () var3601)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var3002) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3601 String) void)
(declare-const null-var3025 var3025)
(declare-const null-var3002 var3002)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1257 var1257)
(declare-const null-Int Int)
(declare-const var3025-HASH_TYPE Int)
(declare-const var788 var3025) ; Statement: r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray 
(assert (not (= var788 null-var3025)))
(declare-const var1915 var3002) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1915 null-var3002)))
(declare-const var1095 ClassObject) ; Statement: r10 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1095 null-ClassObject)))
(declare-const var1758 var1257) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var1758 null-var1257)))
(declare-const var641 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var641 null-Int)))
(assert true)
(define-const var659 Bool (nextIfMatch/-1486561452 var1915 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var659 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var387 Int (readTypeHashCode/-2035886982 var1915)) ; Statement: l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var1996 Int var3025-HASH_TYPE) ; Statement: $l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray: long HASH_TYPE> 
(define-const var2716 Int (ite (> var387 var1996) 1 (ite (< var387 var1996) (- 1) 0))) ; Statement: $b1 = l4 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= var2716 0))) ; Negate: Cond: $b1 == 0  
(define-const var2396 var3601 var3601-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var722 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var722)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var722!1 String)
(assert (= var722!1 ""))
(assert true)
(define-const var3702 String (append/672562846 var722!1 "not support autoType : ")) ; Statement: $r6 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var722!2 String)
(assert (= var722!2 (str.++ var722!1 "not support autoType : ")))
(assert true)
(define-const var1215 String (getString/1018493317 var1915)) ; Statement: $r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var1800 String (append/672562846 var3702 var1215)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3702!1 String)
(assert (= var3702!1 (str.++ var3702 var1215)))
(assert true)
(define-const var1347 String (toString/-2075883882 var1800)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2396 var1347)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var2396!1 var3601)
(declare-const var1347!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var3601-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3025=com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray, var788=r9, var3002=com.alibaba.fastjson2.JSONReader, var1915=r0, var1095=r10, var1257=java.lang.Object, var1758=r11, var641=l3, var659=$z0, var387=l4, var1996=$l0, var2716=$b1, var3601=com.alibaba.fastjson2.JSONException, var2396=$r13, var722=$r12, var3702=$r6, var1215=$r5, var1800=$r7, var1347=$r8}
; {com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray=var3025, r9=var788, com.alibaba.fastjson2.JSONReader=var3002, r0=var1915, r10=var1095, java.lang.Object=var1257, r11=var1758, l3=var641, $z0=var659, l4=var387, $l0=var1996, $b1=var2716, com.alibaba.fastjson2.JSONException=var3601, $r13=var2396, $r12=var722, $r6=var3702, $r5=var1215, $r7=var1800, $r8=var1347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r10 := @parameter1: java.lang.reflect.Type;	r11 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplDoubleArray: long HASH_TYPE>;	$b1 = l4 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$r13 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r13
;block_num 3