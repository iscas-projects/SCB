(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var1823 0)
(declare-sort var629 0)
(declare-sort var598 0)
(declare-sort var1989 0)
(declare-sort var1408 0)
(declare-sort var956 0)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var629_toShort/-1711034285 (var1823) Int)
(declare-fun schema/-488737871 (var1989) var598)
(declare-fun cast-from-var1936-to-var1989 (var1936) var1989)
(declare-fun var956-init () var956)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1989) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var956 String var3375) void)
(declare-fun cast-from-var1408-to-var3375 (var1408) var3375)
(declare-const null-var1936 var1936)
(declare-const null-var1823 var1823)
(declare-const null-var598 var598)
(declare-const null-var1408 var1408)
(declare-const var3972 var1936) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Field 
(assert (not (= var3972 null-var1936)))
(declare-const var2153 var1823) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2153 null-var1823)))
(declare-const var1627 var1823) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1627 null-var1823)))
(define-const var2840 Int (var629_toShort/-1711034285 var1627)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Short toShort(java.lang.Object)>(r0) 
(define-const var3 var598 (schema/-488737871 (cast-from-var1936-to-var1989 var3972))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.reflect.Field field> 
(assert (not (= var3 null-var598))) ; Negate: Cond: $r3 == null  
(declare-const var1096 var1408) ; Statement: $r7 := @caughtexception 
(assert (not (= var1096 null-var1408)))
(define-const var3236 var956 var956-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3755 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3755)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3755!1 String)
(assert (= var3755!1 ""))
(assert true)
(define-const var1060 String (append/672562846 var3755!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3755!2 String)
(assert (= var3755!2 (str.++ var3755!1 "set ")))
(define-const var3640 String (fieldName/-488737871 (cast-from-var1936-to-var1989 var3972))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.String fieldName> 
(assert true)
(define-const var3533 String (append/672562846 var1060 var3640)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1060!1 String)
(assert (= var1060!1 (str.++ var1060 var3640)))
(assert true)
(define-const var2888 String (append/672562846 var3533 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3533!1 String)
(assert (= var3533!1 (str.++ var3533 " error")))
(assert true)
(define-const var2718 String (toString/-2075883882 var2888)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3236 var2718 (cast-from-var1408-to-var3375 var1096))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var3236!1 var956)
(declare-const var2718!1 String)
(declare-const var1096!1 var1408)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var629_toShort/-1711034285=([java.lang.Object], java.lang.Short), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1936-to-var1989=([com.alibaba.fastjson2.reader.FieldReaderInt16Field], com.alibaba.fastjson2.reader.FieldReader), var956-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1408-to-var3375=([java.lang.Exception], java.lang.Throwable)}
; {var1936=com.alibaba.fastjson2.reader.FieldReaderInt16Field, var3972=r2, var1823=java.lang.Object, var2153=r4, var1627=r0, var629=com.alibaba.fastjson2.util.TypeUtils, var2840=r1, var598=com.alibaba.fastjson2.schema.JSONSchema, var1989=com.alibaba.fastjson2.reader.FieldReader, var3=$r3, var1408=java.lang.Exception, var1096=$r7, var956=com.alibaba.fastjson2.JSONException, var3236=$r8, var3755=$r9, var1060=$r11, var3640=$r10, var3533=$r12, var2888=$r13, var2718=$r14, var3375=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16Field=var1936, r2=var3972, java.lang.Object=var1823, r4=var2153, r0=var1627, com.alibaba.fastjson2.util.TypeUtils=var629, r1=var2840, com.alibaba.fastjson2.schema.JSONSchema=var598, com.alibaba.fastjson2.reader.FieldReader=var1989, $r3=var3, java.lang.Exception=var1408, $r7=var1096, com.alibaba.fastjson2.JSONException=var956, $r8=var3236, $r9=var3755, $r11=var1060, $r10=var3640, $r12=var3533, $r13=var2888, $r14=var2718, java.lang.Throwable=var3375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Field;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Short toShort(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2