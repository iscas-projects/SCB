(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var2842 0)
(declare-sort var2664 0)
(declare-sort var818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1641104350 (var2692 Int) Bool)
(declare-fun readTypeHashCode/-2009232184 (var2692) Int)
(declare-fun var2664-init () var2664)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1235960311 (var2692) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var818 String) String)
(declare-fun cast-from-var2692-to-var818 (var2692) var818)
(declare-fun <init>/-2099196170 (var2664 String) void)
(declare-const null-var2692 var2692)
(declare-const var2842-HASH_TYPE Int)
(declare-const var860 var2692) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var860 null-var2692)))
(assert true)
(define-const var2560 Bool (nextIfMatch/-1641104350 var860 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>() 
(assert (not (= (ite var2560 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2124 Int (readTypeHashCode/-2009232184 var860)) ; Statement: l3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readTypeHashCode()>() 
(define-const var1134 Int var2842-HASH_TYPE) ; Statement: $l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplStringArray: long HASH_TYPE> 
(define-const var2470 Int (ite (> var2124 var1134) 1 (ite (< var2124 var1134) (- 1) 0))) ; Statement: $b1 = l3 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>() 
(assert (not (= var2470 0))) ; Negate: Cond: $b1 == 0  
(define-const var3666 var2664 var2664-init) ; Statement: $r11 = new com.alibaba.fastjson2.JSONException 
(define-const var974 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var974)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var974!1 String)
(assert (= var974!1 ""))
(assert true)
(define-const var2161 String (append/672562846 var974!1 "not support type ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support type ") 
(declare-const var974!2 String)
(assert (= var974!2 (str.++ var974!1 "not support type ")))
(assert true)
(define-const var906 String (getString/1235960311 var860)) ; Statement: $r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String getString()>() 
(assert true)
(define-const var3330 String (append/672562846 var2161 var906)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2161!1 String)
(assert (= var2161!1 (str.++ var2161 var906)))
(assert true)
(define-const var2885 String (toString/-2075883882 var3330)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3186 String (info/-1659839707 (cast-from-var2692-to-var818 var860) var2885)) ; Statement: $r9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String info(java.lang.String)>($r8) 
(assert true)
;(assert (<init>/-2099196170 var3666 var3186)) ; Statement: specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var3666!1 var2664)
(declare-const var3186!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1641104350=([com.alibaba.fastjson2.JSONReaderJSONB, byte], boolean), readTypeHashCode/-2009232184=([com.alibaba.fastjson2.JSONReaderJSONB], long), var2664-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1235960311=([com.alibaba.fastjson2.JSONReaderJSONB], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), cast-from-var2692-to-var818=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2692=com.alibaba.fastjson2.JSONReaderJSONB, var860=r0, var2560=$z0, var2124=l3, var2842=com.alibaba.fastjson2.reader.ObjectReaderImplStringArray, var1134=$l0, var2470=$b1, var2664=com.alibaba.fastjson2.JSONException, var3666=$r11, var974=$r10, var2161=$r6, var906=$r5, var3330=$r7, var2885=$r8, var818=com.alibaba.fastjson2.JSONReader, var3186=$r9}
; {com.alibaba.fastjson2.JSONReaderJSONB=var2692, r0=var860, $z0=var2560, l3=var2124, com.alibaba.fastjson2.reader.ObjectReaderImplStringArray=var2842, $l0=var1134, $b1=var2470, com.alibaba.fastjson2.JSONException=var2664, $r11=var3666, $r10=var974, $r6=var2161, $r5=var906, $r7=var3330, $r8=var2885, com.alibaba.fastjson2.JSONReader=var818, $r9=var3186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>();	l3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readTypeHashCode()>();	$l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplStringArray: long HASH_TYPE>;	$b1 = l3 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int startArray()>();	$r11 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support type ");	$r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String getString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String info(java.lang.String)>($r8);	specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r11
;block_num 3