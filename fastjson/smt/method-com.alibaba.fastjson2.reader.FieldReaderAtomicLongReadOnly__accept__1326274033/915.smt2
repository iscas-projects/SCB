(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2174 0)
(declare-sort var3992 0)
(declare-sort var205 0)
(declare-sort var488 0)
(declare-sort var437 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var488-init () var488)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var437) String)
(declare-fun cast-from-var2174-to-var437 (var2174) var437)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var488 String var2280) void)
(declare-fun cast-from-var205-to-var2280 (var205) var2280)
(declare-const null-var2174 var2174)
(declare-const null-var3992 var3992)
(declare-const null-var205 var205)
(declare-const var3570 var2174) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly 
(assert (not (= var3570 null-var2174)))
(declare-const var829 var3992) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var829 null-var3992)))
(declare-const var3341 var3992) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3341 null-var3992)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var3341 null-var3992)))) ; Negate: Cond: r0 != null  
(declare-const var2069 var205) ; Statement: $r7 := @caughtexception 
(assert (not (= var2069 null-var205)))
(define-const var2564 var488 var488-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1753 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1753)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1753!1 String)
(assert (= var1753!1 ""))
(assert true)
(define-const var1780 String (append/672562846 var1753!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1753!2 String)
(assert (= var1753!2 (str.++ var1753!1 "set ")))
(define-const var37 String (fieldName/-488737871 (cast-from-var2174-to-var437 var3570))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var1411 String (append/672562846 var1780 var37)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1780!1 String)
(assert (= var1780!1 (str.++ var1780 var37)))
(assert true)
(define-const var3510 String (append/672562846 var1411 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1411!1 String)
(assert (= var1411!1 (str.++ var1411 " error")))
(assert true)
(define-const var1786 String (toString/-2075883882 var3510)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2564 var1786 (cast-from-var205-to-var2280 var2069))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2564!1 var488)
(declare-const var1786!1 String)
(declare-const var2069!1 var205)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var488-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2174-to-var437=([com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var205-to-var2280=([java.lang.Exception], java.lang.Throwable)}
; {var2174=com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly, var3570=r1, var3992=java.lang.Object, var829=r2, var3341=r0, var205=java.lang.Exception, var2069=$r7, var488=com.alibaba.fastjson2.JSONException, var2564=$r8, var1753=$r9, var1780=$r11, var437=com.alibaba.fastjson2.reader.FieldReader, var37=$r10, var1411=$r12, var3510=$r13, var1786=$r14, var2280=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly=var2174, r1=var3570, java.lang.Object=var3992, r2=var829, r0=var3341, java.lang.Exception=var205, $r7=var2069, com.alibaba.fastjson2.JSONException=var488, $r8=var2564, $r9=var1753, $r11=var1780, com.alibaba.fastjson2.reader.FieldReader=var437, $r10=var37, $r12=var1411, $r13=var3510, $r14=var1786, java.lang.Throwable=var2280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicLongReadOnly: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2