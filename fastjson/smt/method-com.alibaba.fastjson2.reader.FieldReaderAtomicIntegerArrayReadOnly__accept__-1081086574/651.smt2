(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1880 0)
(declare-sort var961 0)
(declare-sort var915 0)
(declare-sort var3884 0)
(declare-sort var2166 0)
(declare-sort var92 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3884-init () var3884)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2166) String)
(declare-fun cast-from-var1880-to-var2166 (var1880) var2166)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3884 String var92) void)
(declare-fun cast-from-var915-to-var92 (var915) var92)
(declare-const null-var1880 var1880)
(declare-const null-var961 var961)
(declare-const null-var915 var915)
(declare-const var1835 var1880) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly 
(assert (not (= var1835 null-var1880)))
(declare-const var1509 var961) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1509 null-var961)))
(declare-const var3850 var961) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3850 null-var961)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var3850 null-var961)))) ; Negate: Cond: r0 != null  
(declare-const var1383 var915) ; Statement: $r7 := @caughtexception 
(assert (not (= var1383 null-var915)))
(define-const var3937 var3884 var3884-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2299 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2299)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2299!1 String)
(assert (= var2299!1 ""))
(assert true)
(define-const var3717 String (append/672562846 var2299!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2299!2 String)
(assert (= var2299!2 (str.++ var2299!1 "set ")))
(define-const var2636 String (fieldName/-488737871 (cast-from-var1880-to-var2166 var1835))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var2109 String (append/672562846 var3717 var2636)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3717!1 String)
(assert (= var3717!1 (str.++ var3717 var2636)))
(assert true)
(define-const var3863 String (append/672562846 var2109 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2109!1 String)
(assert (= var2109!1 (str.++ var2109 " error")))
(assert true)
(define-const var2563 String (toString/-2075883882 var3863)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3937 var2563 (cast-from-var915-to-var92 var1383))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var3937!1 var3884)
(declare-const var2563!1 String)
(declare-const var1383!1 var915)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3884-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1880-to-var2166=([com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var915-to-var92=([java.lang.Exception], java.lang.Throwable)}
; {var1880=com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly, var1835=r1, var961=java.lang.Object, var1509=r2, var3850=r0, var915=java.lang.Exception, var1383=$r7, var3884=com.alibaba.fastjson2.JSONException, var3937=$r8, var2299=$r9, var3717=$r11, var2166=com.alibaba.fastjson2.reader.FieldReader, var2636=$r10, var2109=$r12, var3863=$r13, var2563=$r14, var92=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly=var1880, r1=var1835, java.lang.Object=var961, r2=var1509, r0=var3850, java.lang.Exception=var915, $r7=var1383, com.alibaba.fastjson2.JSONException=var3884, $r8=var3937, $r9=var2299, $r11=var3717, com.alibaba.fastjson2.reader.FieldReader=var2166, $r10=var2636, $r12=var2109, $r13=var3863, $r14=var2563, java.lang.Throwable=var92}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicIntegerArrayReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2