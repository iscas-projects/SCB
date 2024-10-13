(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2408 0)
(declare-sort var2346 0)
(declare-sort var2629 0)
(declare-sort var1068 0)
(declare-sort var1756 0)
(declare-sort var315 0)
(declare-sort var1037 0)
(declare-sort var186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2629_toByteValue/849758958 (var2346) Int)
(declare-fun schema/-488737871 (var1756) var1068)
(declare-fun cast-from-var2408-to-var1756 (var2408) var1756)
(declare-fun var1037-init () var1037)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1756) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1037 String var186) void)
(declare-fun cast-from-var315-to-var186 (var315) var186)
(declare-const null-var2408 var2408)
(declare-const null-var2346 var2346)
(declare-const null-var1068 var1068)
(declare-const null-var315 var315)
(declare-const var2813 var2408) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod 
(assert (not (= var2813 null-var2408)))
(declare-const var1743 var2346) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1743 null-var2346)))
(declare-const var400 var2346) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var400 null-var2346)))
(define-const var3137 Int (var2629_toByteValue/849758958 var400)) ; Statement: b0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: byte toByteValue(java.lang.Object)>(r0) 
(define-const var1034 var1068 (schema/-488737871 (cast-from-var2408-to-var1756 var2813))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var1034 null-var1068))) ; Negate: Cond: $r2 == null  
(declare-const var221 var315) ; Statement: $r8 := @caughtexception 
(assert (not (= var221 null-var315)))
(define-const var720 var1037 var1037-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2572 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2572)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2572!1 String)
(assert (= var2572!1 ""))
(assert true)
(define-const var2406 String (append/672562846 var2572!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2572!2 String)
(assert (= var2572!2 (str.++ var2572!1 "set ")))
(define-const var45 String (fieldName/-488737871 (cast-from-var2408-to-var1756 var2813))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var987 String (append/672562846 var2406 var45)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2406!1 String)
(assert (= var2406!1 (str.++ var2406 var45)))
(assert true)
(define-const var401 String (append/672562846 var987 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var987!1 String)
(assert (= var987!1 (str.++ var987 " error")))
(assert true)
(define-const var3453 String (toString/-2075883882 var401)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var720 var3453 (cast-from-var315-to-var186 var221))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var720!1 var1037)
(declare-const var3453!1 String)
(declare-const var221!1 var315)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2629_toByteValue/849758958=([java.lang.Object], byte), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2408-to-var1756=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var1037-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var315-to-var186=([java.lang.Exception], java.lang.Throwable)}
; {var2408=com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod, var2813=r1, var2346=java.lang.Object, var1743=r3, var400=r0, var2629=com.alibaba.fastjson2.util.TypeUtils, var3137=b0, var1068=com.alibaba.fastjson2.schema.JSONSchema, var1756=com.alibaba.fastjson2.reader.FieldReader, var1034=$r2, var315=java.lang.Exception, var221=$r8, var1037=com.alibaba.fastjson2.JSONException, var720=$r9, var2572=$r10, var2406=$r12, var45=$r11, var987=$r13, var401=$r14, var3453=$r15, var186=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod=var2408, r1=var2813, java.lang.Object=var2346, r3=var1743, r0=var400, com.alibaba.fastjson2.util.TypeUtils=var2629, b0=var3137, com.alibaba.fastjson2.schema.JSONSchema=var1068, com.alibaba.fastjson2.reader.FieldReader=var1756, $r2=var1034, java.lang.Exception=var315, $r8=var221, com.alibaba.fastjson2.JSONException=var1037, $r9=var720, $r10=var2572, $r12=var2406, $r11=var45, $r13=var987, $r14=var401, $r15=var3453, java.lang.Throwable=var186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	b0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: byte toByteValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2