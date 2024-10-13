(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1188 0)
(declare-sort var431 0)
(declare-sort var1516 0)
(declare-sort var1701 0)
(declare-sort var2899 0)
(declare-sort var441 0)
(declare-sort var2603 0)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1516_toShortValue/1194113744 (var431) Int)
(declare-fun schema/-488737871 (var2899) var1701)
(declare-fun cast-from-var1188-to-var2899 (var1188) var2899)
(declare-fun var2603-init () var2603)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2899) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2603 String var2693) void)
(declare-fun cast-from-var441-to-var2693 (var441) var2693)
(declare-const null-var1188 var1188)
(declare-const null-var431 var431)
(declare-const null-var1701 var1701)
(declare-const null-var441 var441)
(declare-const var2131 var1188) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod 
(assert (not (= var2131 null-var1188)))
(declare-const var2481 var431) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2481 null-var431)))
(declare-const var2341 var431) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2341 null-var431)))
(define-const var1403 Int (var1516_toShortValue/1194113744 var2341)) ; Statement: s0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: short toShortValue(java.lang.Object)>(r0) 
(define-const var1963 var1701 (schema/-488737871 (cast-from-var1188-to-var2899 var2131))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var1963 null-var1701))) ; Negate: Cond: $r2 == null  
(declare-const var1274 var441) ; Statement: $r8 := @caughtexception 
(assert (not (= var1274 null-var441)))
(define-const var3115 var2603 var2603-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var530 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var530)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var530!1 String)
(assert (= var530!1 ""))
(assert true)
(define-const var1759 String (append/672562846 var530!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var530!2 String)
(assert (= var530!2 (str.++ var530!1 "set ")))
(define-const var3828 String (fieldName/-488737871 (cast-from-var1188-to-var2899 var2131))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var640 String (append/672562846 var1759 var3828)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1759!1 String)
(assert (= var1759!1 (str.++ var1759 var3828)))
(assert true)
(define-const var835 String (append/672562846 var640 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var640!1 String)
(assert (= var640!1 (str.++ var640 " error")))
(assert true)
(define-const var2714 String (toString/-2075883882 var835)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3115 var2714 (cast-from-var441-to-var2693 var1274))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var3115!1 var2603)
(declare-const var2714!1 String)
(declare-const var1274!1 var441)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1516_toShortValue/1194113744=([java.lang.Object], short), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1188-to-var2899=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2603-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var441-to-var2693=([java.lang.Exception], java.lang.Throwable)}
; {var1188=com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod, var2131=r1, var431=java.lang.Object, var2481=r3, var2341=r0, var1516=com.alibaba.fastjson2.util.TypeUtils, var1403=s0, var1701=com.alibaba.fastjson2.schema.JSONSchema, var2899=com.alibaba.fastjson2.reader.FieldReader, var1963=$r2, var441=java.lang.Exception, var1274=$r8, var2603=com.alibaba.fastjson2.JSONException, var3115=$r9, var530=$r10, var1759=$r12, var3828=$r11, var640=$r13, var835=$r14, var2714=$r15, var2693=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod=var1188, r1=var2131, java.lang.Object=var431, r3=var2481, r0=var2341, com.alibaba.fastjson2.util.TypeUtils=var1516, s0=var1403, com.alibaba.fastjson2.schema.JSONSchema=var1701, com.alibaba.fastjson2.reader.FieldReader=var2899, $r2=var1963, java.lang.Exception=var441, $r8=var1274, com.alibaba.fastjson2.JSONException=var2603, $r9=var3115, $r10=var530, $r12=var1759, $r11=var3828, $r13=var640, $r14=var835, $r15=var2714, java.lang.Throwable=var2693}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	s0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: short toShortValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2