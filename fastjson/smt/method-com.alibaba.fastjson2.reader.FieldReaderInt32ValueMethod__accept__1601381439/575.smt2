(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2608 0)
(declare-sort var1883 0)
(declare-sort var2578 0)
(declare-sort var1682 0)
(declare-sort var1473 0)
(declare-sort var2073 0)
(declare-sort var2168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1682) var2578)
(declare-fun cast-from-var2608-to-var1682 (var2608) var1682)
(declare-fun var2073-init () var2073)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1682) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2073 String var2168) void)
(declare-fun cast-from-var1473-to-var2168 (var1473) var2168)
(declare-const null-var2608 var2608)
(declare-const null-var1883 var1883)
(declare-const null-Int Int)
(declare-const null-var2578 var2578)
(declare-const null-var1473 var1473)
(declare-const var3529 var2608) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod 
(assert (not (= var3529 null-var2608)))
(declare-const var633 var1883) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var633 null-var1883)))
(declare-const var3473 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3473 null-Int)))
(define-const var383 var2578 (schema/-488737871 (cast-from-var2608-to-var1682 var3529))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var383 null-var2578))) ; Negate: Cond: $r1 == null  
(declare-const var3470 var1473) ; Statement: $r7 := @caughtexception 
(assert (not (= var3470 null-var1473)))
(define-const var3933 var2073 var2073-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2810 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2810)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2810!1 String)
(assert (= var2810!1 ""))
(assert true)
(define-const var3213 String (append/672562846 var2810!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2810!2 String)
(assert (= var2810!2 (str.++ var2810!1 "set ")))
(define-const var1071 String (fieldName/-488737871 (cast-from-var2608-to-var1682 var3529))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2565 String (append/672562846 var3213 var1071)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3213!1 String)
(assert (= var3213!1 (str.++ var3213 var1071)))
(assert true)
(define-const var3928 String (append/672562846 var2565 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2565!1 String)
(assert (= var2565!1 (str.++ var2565 " error")))
(assert true)
(define-const var1960 String (toString/-2075883882 var3928)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3933 var1960 (cast-from-var1473-to-var2168 var3470))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var3933!1 var2073)
(declare-const var1960!1 String)
(declare-const var3470!1 var1473)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2608-to-var1682=([com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var2073-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1473-to-var2168=([java.lang.Exception], java.lang.Throwable)}
; {var2608=com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod, var3529=r0, var1883=java.lang.Object, var633=r2, var3473=l0, var2578=com.alibaba.fastjson2.schema.JSONSchema, var1682=com.alibaba.fastjson2.reader.FieldReader, var383=$r1, var1473=java.lang.Exception, var3470=$r7, var2073=com.alibaba.fastjson2.JSONException, var3933=$r8, var2810=$r9, var3213=$r11, var1071=$r10, var2565=$r12, var3928=$r13, var1960=$r14, var2168=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod=var2608, r0=var3529, java.lang.Object=var1883, r2=var633, l0=var3473, com.alibaba.fastjson2.schema.JSONSchema=var2578, com.alibaba.fastjson2.reader.FieldReader=var1682, $r1=var383, java.lang.Exception=var1473, $r7=var3470, com.alibaba.fastjson2.JSONException=var2073, $r8=var3933, $r9=var2810, $r11=var3213, $r10=var1071, $r12=var2565, $r13=var3928, $r14=var1960, java.lang.Throwable=var2168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt32ValueMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2