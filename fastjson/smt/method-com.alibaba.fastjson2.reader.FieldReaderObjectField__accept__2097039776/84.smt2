(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var473 0)
(declare-sort var2963 0)
(declare-sort var465 0)
(declare-sort var759 0)
(declare-sort var3688 0)
(declare-sort var3571 0)
(declare-sort var983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var759) var465)
(declare-fun cast-from-var473-to-var759 (var473) var759)
(declare-fun fieldOffset/-488737871 (var759) Int)
(declare-fun var3571-init () var3571)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var759) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3571 String var983) void)
(declare-fun cast-from-var3688-to-var983 (var3688) var983)
(declare-const null-var473 var473)
(declare-const null-var2963 var2963)
(declare-const null-Int Int)
(declare-const null-var465 var465)
(declare-const null-var3688 var3688)
(declare-const var2599 var473) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var2599 null-var473)))
(declare-const var2170 var2963) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2170 null-var2963)))
(declare-const var2080 Int) ; Statement: s2 := @parameter1: short 
(assert (not (= var2080 null-Int)))
(define-const var1194 var465 (schema/-488737871 (cast-from-var473-to-var759 var2599))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var1194 null-var465)) ; Cond: $r1 == null 
(define-const var2460 Int (fieldOffset/-488737871 (cast-from-var473-to-var759 var2599))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var1455 Int (ite (> var2460 (- 1)) 1 (ite (< var2460 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var1455 0))) ; Negate: Cond: $b1 == 0  
(declare-const var834 var3688) ; Statement: $r8 := @caughtexception 
(assert (not (= var834 null-var3688)))
(define-const var2298 var3571 var3571-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var854 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var854)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var854!1 String)
(assert (= var854!1 ""))
(assert true)
(define-const var1663 String (append/672562846 var854!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var854!2 String)
(assert (= var854!2 (str.++ var854!1 "set ")))
(define-const var3846 String (fieldName/-488737871 (cast-from-var473-to-var759 var2599))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var1601 String (append/672562846 var1663 var3846)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1663!1 String)
(assert (= var1663!1 (str.++ var1663 var3846)))
(assert true)
(define-const var2334 String (append/672562846 var1601 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1601!1 String)
(assert (= var1601!1 (str.++ var1601 " error")))
(assert true)
(define-const var1229 String (toString/-2075883882 var2334)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2298 var1229 (cast-from-var3688-to-var983 var834))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2298!1 var3571)
(declare-const var1229!1 String)
(declare-const var834!1 var3688)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var473-to-var759=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var3571-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3688-to-var983=([java.lang.Exception], java.lang.Throwable)}
; {var473=com.alibaba.fastjson2.reader.FieldReaderObjectField, var2599=r0, var2963=java.lang.Object, var2170=r2, var2080=s2, var465=com.alibaba.fastjson2.schema.JSONSchema, var759=com.alibaba.fastjson2.reader.FieldReader, var1194=$r1, var2460=$l0, var1455=$b1, var3688=java.lang.Exception, var834=$r8, var3571=com.alibaba.fastjson2.JSONException, var2298=$r9, var854=$r10, var1663=$r12, var3846=$r11, var1601=$r13, var2334=$r14, var1229=$r15, var983=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var473, r0=var2599, java.lang.Object=var2963, r2=var2170, s2=var2080, com.alibaba.fastjson2.schema.JSONSchema=var465, com.alibaba.fastjson2.reader.FieldReader=var759, $r1=var1194, $l0=var2460, $b1=var1455, java.lang.Exception=var3688, $r8=var834, com.alibaba.fastjson2.JSONException=var3571, $r9=var2298, $r10=var854, $r12=var1663, $r11=var3846, $r13=var1601, $r14=var2334, $r15=var1229, java.lang.Throwable=var983}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	s2 := @parameter1: short;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3