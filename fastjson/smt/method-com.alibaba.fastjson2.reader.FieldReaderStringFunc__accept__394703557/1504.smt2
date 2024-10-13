(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2835 0)
(declare-sort var2527 0)
(declare-sort var2000 0)
(declare-sort var2330 0)
(declare-sort var2854 0)
(declare-sort var1205 0)
(declare-sort var3942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2527-to-String (var2527) String)
(declare-fun trim/752004358 (var2835) Bool)
(declare-fun schema/-488737871 (var2330) var2000)
(declare-fun cast-from-var2835-to-var2330 (var2835) var2330)
(declare-fun var1205-init () var1205)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var2330) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1205 String var3942) void)
(declare-fun cast-from-var2854-to-var3942 (var2854) var3942)
(declare-const null-var2835 var2835)
(declare-const null-var2527 var2527)
(declare-const null-var2000 var2000)
(declare-const null-var2854 var2854)
(declare-const var2480 var2835) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderStringFunc 
(assert (not (= var2480 null-var2835)))
(declare-const var1129 var2527) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1129 null-var2527)))
(declare-const var88 var2527) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var88 null-var2527)))
(define-const var3913 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 != 0 goto r13 = (java.lang.String) r0 
(assert (not (= (ite var3913 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3939 String (cast-from-var2527-to-String var88)) ; Statement: r13 = (java.lang.String) r0 
 ; Statement: goto [?= $z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim>] 
(assert true) ; Non Conditional
(define-const var1920 Bool (trim/752004358 var2480)) ; Statement: $z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim> 
 ; Statement: if $z1 == 0 goto $r14 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
(assert (= (ite var1920 1 0) 0)) ; Cond: $z1 == 0 
(define-const var339 var2000 (schema/-488737871 (cast-from-var2835-to-var2330 var2480))) ; Statement: $r14 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r14 == null goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: java.util.function.BiConsumer function> 
(assert (not (= var339 null-var2000))) ; Negate: Cond: $r14 == null  
(declare-const var3717 var2854) ; Statement: $r5 := @caughtexception 
(assert (not (= var3717 null-var2854)))
(define-const var3876 var1205 var1205-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var1455 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1455)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1455!1 String)
(assert (= var1455!1 ""))
(assert true)
(define-const var1759 String (append/672562846 var1455!1 "set ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1455!2 String)
(assert (= var1455!2 (str.++ var1455!1 "set ")))
(assert true)
(define-const var823 String (toString/2110042505 (cast-from-var2835-to-var2330 var2480))) ; Statement: $r8 = specialinvoke r1.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var365 String (append/672562846 var1759 var823)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1759!1 String)
(assert (= var1759!1 (str.++ var1759 var823)))
(assert true)
(define-const var3175 String (append/672562846 var365 " error")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var365!1 String)
(assert (= var365!1 (str.++ var365 " error")))
(assert true)
(define-const var1840 String (toString/-2075883882 var3175)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3876 var1840 (cast-from-var2854-to-var3942 var3717))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var3876!1 var1205)
(declare-const var1840!1 String)
(declare-const var3717!1 var2854)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2527-to-String=([java.lang.Object], java.lang.String), trim/752004358=([com.alibaba.fastjson2.reader.FieldReaderStringFunc], boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2835-to-var2330=([com.alibaba.fastjson2.reader.FieldReaderStringFunc], com.alibaba.fastjson2.reader.FieldReader), var1205-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2854-to-var3942=([java.lang.Exception], java.lang.Throwable)}
; {var2835=com.alibaba.fastjson2.reader.FieldReaderStringFunc, var2480=r1, var2527=java.lang.Object, var1129=r2, var88=r0, var3913=$z0, var3939=r13, var1920=$z1, var2000=com.alibaba.fastjson2.schema.JSONSchema, var2330=com.alibaba.fastjson2.reader.FieldReader, var339=$r14, var2854=java.lang.Exception, var3717=$r5, var1205=com.alibaba.fastjson2.JSONException, var3876=$r6, var1455=$r7, var1759=$r9, var823=$r8, var365=$r10, var3175=$r11, var1840=$r12, var3942=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderStringFunc=var2835, r1=var2480, java.lang.Object=var2527, r2=var1129, r0=var88, $z0=var3913, r13=var3939, $z1=var1920, com.alibaba.fastjson2.schema.JSONSchema=var2000, com.alibaba.fastjson2.reader.FieldReader=var2330, $r14=var339, java.lang.Exception=var2854, $r5=var3717, com.alibaba.fastjson2.JSONException=var1205, $r6=var3876, $r7=var1455, $r9=var1759, $r8=var823, $r10=var365, $r11=var3175, $r12=var1840, java.lang.Throwable=var3942}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderStringFunc;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 != 0 goto r13 = (java.lang.String) r0;	r13 = (java.lang.String) r0;	goto [?= $z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim>];	$z1 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim>;	if $z1 == 0 goto $r14 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	$r14 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r14 == null goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: java.util.function.BiConsumer function>;	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r8 = specialinvoke r1.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	throw $r6
;block_num 5