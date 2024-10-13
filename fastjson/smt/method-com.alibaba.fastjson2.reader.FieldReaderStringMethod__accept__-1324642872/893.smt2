(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var1567 0)
(declare-sort var3383 0)
(declare-sort var962 0)
(declare-sort var302 0)
(declare-sort var1487 0)
(declare-sort var3527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1567-to-String (var1567) String)
(declare-fun trim/1307497123 (var748) Bool)
(declare-fun schema/-488737871 (var962) var3383)
(declare-fun cast-from-var748-to-var962 (var748) var962)
(declare-fun var1487-init () var1487)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var962) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1487 String var3527) void)
(declare-fun cast-from-var302-to-var3527 (var302) var3527)
(declare-const null-var748 var748)
(declare-const null-var1567 var1567)
(declare-const null-var3383 var3383)
(declare-const null-var302 var302)
(declare-const var3422 var748) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderStringMethod 
(assert (not (= var3422 null-var748)))
(declare-const var2100 var1567) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2100 null-var1567)))
(declare-const var2720 var1567) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2720 null-var1567)))
(define-const var1031 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 != 0 goto r14 = (java.lang.String) r0 
(assert (not (= (ite var1031 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1513 String (cast-from-var1567-to-String var2720)) ; Statement: r14 = (java.lang.String) r0 
 ; Statement: goto [?= $z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim>] 
(assert true) ; Non Conditional
(define-const var3294 Bool (trim/1307497123 var3422)) ; Statement: $z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim> 
 ; Statement: if $z1 == 0 goto $r15 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
(assert (= (ite var3294 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2472 var3383 (schema/-488737871 (cast-from-var748-to-var962 var3422))) ; Statement: $r15 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r15 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.reflect.Method method> 
(assert (not (= var2472 null-var3383))) ; Negate: Cond: $r15 == null  
(declare-const var24 var302) ; Statement: $r6 := @caughtexception 
(assert (not (= var24 null-var302)))
(define-const var1972 var1487 var1487-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var630 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var630)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var630!1 String)
(assert (= var630!1 ""))
(assert true)
(define-const var975 String (append/672562846 var630!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var630!2 String)
(assert (= var630!2 (str.++ var630!1 "set ")))
(define-const var506 String (fieldName/-488737871 (cast-from-var748-to-var962 var3422))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.String fieldName> 
(assert true)
(define-const var1672 String (append/672562846 var975 var506)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var975!1 String)
(assert (= var975!1 (str.++ var975 var506)))
(assert true)
(define-const var1795 String (append/672562846 var1672 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1672!1 String)
(assert (= var1672!1 (str.++ var1672 " error")))
(assert true)
(define-const var3454 String (toString/-2075883882 var1795)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1972 var3454 (cast-from-var302-to-var3527 var24))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var1972!1 var1487)
(declare-const var3454!1 String)
(declare-const var24!1 var302)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1567-to-String=([java.lang.Object], java.lang.String), trim/1307497123=([com.alibaba.fastjson2.reader.FieldReaderStringMethod], boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var748-to-var962=([com.alibaba.fastjson2.reader.FieldReaderStringMethod], com.alibaba.fastjson2.reader.FieldReader), var1487-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var302-to-var3527=([java.lang.Exception], java.lang.Throwable)}
; {var748=com.alibaba.fastjson2.reader.FieldReaderStringMethod, var3422=r1, var1567=java.lang.Object, var2100=r2, var2720=r0, var1031=$z0, var1513=r14, var3294=$z1, var3383=com.alibaba.fastjson2.schema.JSONSchema, var962=com.alibaba.fastjson2.reader.FieldReader, var2472=$r15, var302=java.lang.Exception, var24=$r6, var1487=com.alibaba.fastjson2.JSONException, var1972=$r7, var630=$r8, var975=$r10, var506=$r9, var1672=$r11, var1795=$r12, var3454=$r13, var3527=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderStringMethod=var748, r1=var3422, java.lang.Object=var1567, r2=var2100, r0=var2720, $z0=var1031, r14=var1513, $z1=var3294, com.alibaba.fastjson2.schema.JSONSchema=var3383, com.alibaba.fastjson2.reader.FieldReader=var962, $r15=var2472, java.lang.Exception=var302, $r6=var24, com.alibaba.fastjson2.JSONException=var1487, $r7=var1972, $r8=var630, $r10=var975, $r9=var506, $r11=var1672, $r12=var1795, $r13=var3454, java.lang.Throwable=var3527}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderStringMethod;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 != 0 goto r14 = (java.lang.String) r0;	r14 = (java.lang.String) r0;	goto [?= $z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim>];	$z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim>;	if $z1 == 0 goto $r15 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	$r15 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r15 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.reflect.Method method>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 5