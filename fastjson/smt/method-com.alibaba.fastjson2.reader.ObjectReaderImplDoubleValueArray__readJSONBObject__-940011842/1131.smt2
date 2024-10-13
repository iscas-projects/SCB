(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2023 0)
(declare-sort var2803 0)
(declare-sort var1583 0)
(declare-sort var17 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2803 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var2803) Int)
(declare-fun var17-init () var17)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var2803) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var17 String) void)
(declare-const null-var2023 var2023)
(declare-const null-var2803 var2803)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1583 var1583)
(declare-const null-Int Int)
(declare-const var2023-TYPE_HASH Int)
(declare-const var777 var2023) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray 
(assert (not (= var777 null-var2023)))
(declare-const var1409 var2803) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1409 null-var2803)))
(declare-const var1422 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1422 null-ClassObject)))
(declare-const var3970 var1583) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var3970 null-var1583)))
(declare-const var2475 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var2475 null-Int)))
(assert true)
(define-const var1568 Bool (nextIfMatch/-1486561452 var1409 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var1568 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var491 Int (readTypeHashCode/-2035886982 var1409)) ; Statement: l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var797 Int var2023-TYPE_HASH) ; Statement: $l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray: long TYPE_HASH> 
(define-const var1506 Int (ite (> var491 var797) 1 (ite (< var491 var797) (- 1) 0))) ; Statement: $b1 = l4 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= var1506 0))) ; Negate: Cond: $b1 == 0  
(define-const var3193 var17 var17-init) ; Statement: $r15 = new com.alibaba.fastjson2.JSONException 
(define-const var3971 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3971)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3971!1 String)
(assert (= var3971!1 ""))
(assert true)
(define-const var1282 String (append/672562846 var3971!1 "not support autoType : ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var3971!2 String)
(assert (= var3971!2 (str.++ var3971!1 "not support autoType : ")))
(assert true)
(define-const var1125 String (getString/1018493317 var1409)) ; Statement: $r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var350 String (append/672562846 var1282 var1125)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1282!1 String)
(assert (= var1282!1 (str.++ var1282 var1125)))
(assert true)
(define-const var2180 String (toString/-2075883882 var350)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3193 var2180)) ; Statement: specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var3193!1 var17)
(declare-const var2180!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var17-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2023=com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray, var777=r2, var2803=com.alibaba.fastjson2.JSONReader, var1409=r0, var1422=r12, var1583=java.lang.Object, var3970=r13, var2475=l3, var1568=$z0, var491=l4, var797=$l0, var1506=$b1, var17=com.alibaba.fastjson2.JSONException, var3193=$r15, var3971=$r14, var1282=$r9, var1125=$r8, var350=$r10, var2180=$r11}
; {com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray=var2023, r2=var777, com.alibaba.fastjson2.JSONReader=var2803, r0=var1409, r12=var1422, java.lang.Object=var1583, r13=var3970, l3=var2475, $z0=var1568, l4=var491, $l0=var797, $b1=var1506, com.alibaba.fastjson2.JSONException=var17, $r15=var3193, $r14=var3971, $r9=var1282, $r8=var1125, $r10=var350, $r11=var2180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r12 := @parameter1: java.lang.reflect.Type;	r13 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplDoubleValueArray: long TYPE_HASH>;	$b1 = l4 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$r15 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 3