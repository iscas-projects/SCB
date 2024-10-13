(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1897 0)
(declare-sort var1836 0)
(declare-sort var3136 0)
(declare-sort var3411 0)
(declare-sort var2133 0)
(declare-sort var836 0)
(declare-sort var1138 0)
(declare-sort var966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3136_toDouble/-123925227 (var1836) Float64)
(declare-fun schema/-488737871 (var2133) var3411)
(declare-fun cast-from-var1897-to-var2133 (var1897) var2133)
(declare-fun var1138-init () var1138)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2133) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1138 String var966) void)
(declare-fun cast-from-var836-to-var966 (var836) var966)
(declare-const null-var1897 var1897)
(declare-const null-var1836 var1836)
(declare-const null-var3411 var3411)
(declare-const null-var836 var836)
(declare-const var2500 var1897) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleField 
(assert (not (= var2500 null-var1897)))
(declare-const var3182 var1836) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3182 null-var1836)))
(declare-const var511 var1836) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var511 null-var1836)))
(define-const var1135 Float64 (var3136_toDouble/-123925227 var511)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Double toDouble(java.lang.Object)>(r0) 
(define-const var2031 var3411 (schema/-488737871 (cast-from-var1897-to-var2133 var2500))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.reflect.Field field> 
(assert (not (= var2031 null-var3411))) ; Negate: Cond: $r3 == null  
(declare-const var1422 var836) ; Statement: $r7 := @caughtexception 
(assert (not (= var1422 null-var836)))
(define-const var3278 var1138 var1138-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3856 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3856)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3856!1 String)
(assert (= var3856!1 ""))
(assert true)
(define-const var519 String (append/672562846 var3856!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3856!2 String)
(assert (= var3856!2 (str.++ var3856!1 "set ")))
(define-const var60 String (fieldName/-488737871 (cast-from-var1897-to-var2133 var2500))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.String fieldName> 
(assert true)
(define-const var2956 String (append/672562846 var519 var60)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var519!1 String)
(assert (= var519!1 (str.++ var519 var60)))
(assert true)
(define-const var1240 String (append/672562846 var2956 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2956!1 String)
(assert (= var2956!1 (str.++ var2956 " error")))
(assert true)
(define-const var1840 String (toString/-2075883882 var1240)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3278 var1840 (cast-from-var836-to-var966 var1422))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var3278!1 var1138)
(declare-const var1840!1 String)
(declare-const var1422!1 var836)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3136_toDouble/-123925227=([java.lang.Object], java.lang.Double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1897-to-var2133=([com.alibaba.fastjson2.reader.FieldReaderDoubleField], com.alibaba.fastjson2.reader.FieldReader), var1138-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var836-to-var966=([java.lang.Exception], java.lang.Throwable)}
; {var1897=com.alibaba.fastjson2.reader.FieldReaderDoubleField, var2500=r2, var1836=java.lang.Object, var3182=r4, var511=r0, var3136=com.alibaba.fastjson2.util.TypeUtils, var1135=r1, var3411=com.alibaba.fastjson2.schema.JSONSchema, var2133=com.alibaba.fastjson2.reader.FieldReader, var2031=$r3, var836=java.lang.Exception, var1422=$r7, var1138=com.alibaba.fastjson2.JSONException, var3278=$r8, var3856=$r9, var519=$r11, var60=$r10, var2956=$r12, var1240=$r13, var1840=$r14, var966=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleField=var1897, r2=var2500, java.lang.Object=var1836, r4=var3182, r0=var511, com.alibaba.fastjson2.util.TypeUtils=var3136, r1=var1135, com.alibaba.fastjson2.schema.JSONSchema=var3411, com.alibaba.fastjson2.reader.FieldReader=var2133, $r3=var2031, java.lang.Exception=var836, $r7=var1422, com.alibaba.fastjson2.JSONException=var1138, $r8=var3278, $r9=var3856, $r11=var519, $r10=var60, $r12=var2956, $r13=var1240, $r14=var1840, java.lang.Throwable=var966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Double toDouble(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2