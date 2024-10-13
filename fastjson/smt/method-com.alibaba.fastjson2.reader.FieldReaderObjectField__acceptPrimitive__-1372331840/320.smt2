(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2364 0)
(declare-sort var3769 0)
(declare-sort var73 0)
(declare-sort var92 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldClass/-488737871 (var73) ClassObject)
(declare-fun cast-from-var2364-to-var73 (var2364) var73)
(declare-fun var92-init () var92)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var73) String)
(declare-fun getClass/1258963082 (var3769) ClassObject)
(declare-fun append/-1031950772 (String var3769) String)
(declare-fun cast-from-ClassObject-to-var3769 (ClassObject) var3769)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var92 String) void)
(declare-const null-var2364 var2364)
(declare-const null-var3769 var3769)
(declare-const Int-TYPE ClassObject)
(declare-const var396 var2364) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var396 null-var2364)))
(declare-const var1488 var3769) ; Statement: r19 := @parameter0: java.lang.Object 
(assert (not (= var1488 null-var3769)))
(declare-const var3797 var3769) ; Statement: r17 := @parameter1: java.lang.Object 
(assert (not (= var3797 null-var3769)))
(define-const var3282 ClassObject (fieldClass/-488737871 (cast-from-var2364-to-var73 var396))) ; Statement: $r2 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.Class fieldClass> 
(define-const var3199 ClassObject Int-TYPE) ; Statement: $r1 = <java.lang.Integer: java.lang.Class TYPE> 
 ; Statement: if $r2 != $r1 goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.Class fieldClass> 
(assert (not (not (= var3282 var3199)))) ; Negate: Cond: $r2 != $r1  
(define-const var555 Bool false) ; Statement: $z7 = r17 instanceof java.lang.Number 
 ; Statement: if $z7 == 0 goto $r27 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var555 1 0) 0)) ; Cond: $z7 == 0 
(define-const var1647 var92 var92-init) ; Statement: $r27 = new com.alibaba.fastjson2.JSONException 
(define-const var2481 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2481)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2481!1 String)
(assert (= var2481!1 ""))
(assert true)
(define-const var2344 String (append/672562846 var2481!1 "set ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2481!2 String)
(assert (= var2481!2 (str.++ var2481!1 "set ")))
(define-const var2871 String (fieldName/-488737871 (cast-from-var2364-to-var73 var396))) ; Statement: $r30 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var2425 String (append/672562846 var2344 var2871)) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var2344!1 String)
(assert (= var2344!1 (str.++ var2344 var2871)))
(assert true)
(define-const var2480 String (append/672562846 var2425 " error, type not support ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, type not support ") 
(declare-const var2425!1 String)
(assert (= var2425!1 (str.++ var2425 " error, type not support ")))
(assert true)
(define-const var2758 ClassObject (getClass/1258963082 var3797)) ; Statement: $r33 = virtualinvoke r17.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2324 String (append/-1031950772 var2480 (cast-from-ClassObject-to-var3769 var2758))) ; Statement: $r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33) 
(declare-const var2480!1 String)
(assert (str.prefixof var2480 var2480!1))
(assert true)
(define-const var1888 String (toString/-2075883882 var2324)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1647 var1888)) ; Statement: specialinvoke $r27.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r35) 

(declare-const var1647!1 var92)
(declare-const var1888!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldClass/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.Class), cast-from-var2364-to-var73=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), var92-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3769=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2364=com.alibaba.fastjson2.reader.FieldReaderObjectField, var396=r0, var3769=java.lang.Object, var1488=r19, var3797=r17, var73=com.alibaba.fastjson2.reader.FieldReader, var3282=$r2, var3199=$r1, var555=$z7, var92=com.alibaba.fastjson2.JSONException, var1647=$r27, var2481=$r28, var2344=$r29, var2871=$r30, var2425=$r31, var2480=$r32, var2758=$r33, var2324=$r34, var1888=$r35}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var2364, r0=var396, java.lang.Object=var3769, r19=var1488, r17=var3797, com.alibaba.fastjson2.reader.FieldReader=var73, $r2=var3282, $r1=var3199, $z7=var555, com.alibaba.fastjson2.JSONException=var92, $r27=var1647, $r28=var2481, $r29=var2344, $r30=var2871, $r31=var2425, $r32=var2480, $r33=var2758, $r34=var2324, $r35=var1888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r19 := @parameter0: java.lang.Object;	r17 := @parameter1: java.lang.Object;	$r2 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.Class fieldClass>;	$r1 = <java.lang.Integer: java.lang.Class TYPE>;	if $r2 != $r1 goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.Class fieldClass>;	$z7 = r17 instanceof java.lang.Number;	if $z7 == 0 goto $r27 = new com.alibaba.fastjson2.JSONException;	$r27 = new com.alibaba.fastjson2.JSONException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r30 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, type not support ");	$r33 = virtualinvoke r17.<java.lang.Object: java.lang.Class getClass()>();	$r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r33);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r35);	throw $r27
;block_num 3