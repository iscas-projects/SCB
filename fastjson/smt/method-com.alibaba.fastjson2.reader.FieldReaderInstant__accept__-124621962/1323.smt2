(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3599 0)
(declare-sort var1967 0)
(declare-sort var581 0)
(declare-sort var3696 0)
(declare-sort var614 0)
(declare-sort var2830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var614) var3696)
(declare-fun cast-from-var3599-to-var614 (var3599) var614)
(declare-fun var2830-init () var2830)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var614) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2830 String) void)
(declare-const null-var3599 var3599)
(declare-const null-var1967 var1967)
(declare-const null-var581 var581)
(declare-const null-var3696 var3696)
(declare-const var2408 var3599) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInstant 
(assert (not (= var2408 null-var3599)))
(declare-const var3932 var1967) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3932 null-var1967)))
(declare-const var1800 var581) ; Statement: r3 := @parameter1: java.time.Instant 
(assert (not (= var1800 null-var581)))
(define-const var3732 var3696 (schema/-488737871 (cast-from-var3599-to-var614 var2408))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInstant: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var3732 null-var3696)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto (branch) 
(assert (not (not (= var3932 null-var1967)))) ; Negate: Cond: r2 != null  
(define-const var2371 var2830 var2830-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONException 
(define-const var1351 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1351)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1351!1 String)
(assert (= var1351!1 ""))
(assert true)
(define-const var2013 String (append/672562846 var1351!1 "set ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1351!2 String)
(assert (= var1351!2 (str.++ var1351!1 "set ")))
(define-const var1305 String (fieldName/-488737871 (cast-from-var3599-to-var614 var2408))) ; Statement: $r14 = r0.<com.alibaba.fastjson2.reader.FieldReaderInstant: java.lang.String fieldName> 
(assert true)
(define-const var2296 String (append/672562846 var2013 var1305)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2013!1 String)
(assert (= var2013!1 (str.++ var2013 var1305)))
(assert true)
(define-const var3990 String (append/672562846 var2296 " error, object is null")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, object is null") 
(declare-const var2296!1 String)
(assert (= var2296!1 (str.++ var2296 " error, object is null")))
(assert true)
(define-const var2214 String (toString/-2075883882 var3990)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2371 var2214)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r18) 

(declare-const var2371!1 var2830)
(declare-const var2214!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3599-to-var614=([com.alibaba.fastjson2.reader.FieldReaderInstant], com.alibaba.fastjson2.reader.FieldReader), var2830-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3599=com.alibaba.fastjson2.reader.FieldReaderInstant, var2408=r0, var1967=java.lang.Object, var3932=r2, var581=java.time.Instant, var1800=r3, var3696=com.alibaba.fastjson2.schema.JSONSchema, var614=com.alibaba.fastjson2.reader.FieldReader, var3732=$r1, var2830=com.alibaba.fastjson2.JSONException, var2371=$r12, var1351=$r13, var2013=$r15, var1305=$r14, var2296=$r16, var3990=$r17, var2214=$r18}
; {com.alibaba.fastjson2.reader.FieldReaderInstant=var3599, r0=var2408, java.lang.Object=var1967, r2=var3932, java.time.Instant=var581, r3=var1800, com.alibaba.fastjson2.schema.JSONSchema=var3696, com.alibaba.fastjson2.reader.FieldReader=var614, $r1=var3732, com.alibaba.fastjson2.JSONException=var2830, $r12=var2371, $r13=var1351, $r15=var2013, $r14=var1305, $r16=var2296, $r17=var3990, $r18=var2214}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInstant;	r2 := @parameter0: java.lang.Object;	r3 := @parameter1: java.time.Instant;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInstant: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto (branch);	if r2 != null goto (branch);	$r12 = new com.alibaba.fastjson2.JSONException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r14 = r0.<com.alibaba.fastjson2.reader.FieldReaderInstant: java.lang.String fieldName>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, object is null");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r18);	throw $r12
;block_num 3