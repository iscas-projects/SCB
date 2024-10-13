(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var2070 0)
(declare-sort var3980 0)
(declare-sort var662 0)
(declare-sort var2840 0)
(declare-sort var3920 0)
(declare-sort var2033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var662) var3980)
(declare-fun cast-from-var1565-to-var662 (var1565) var662)
(declare-fun fieldOffset/-488737871 (var662) Int)
(declare-fun var3920-init () var3920)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var662) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3920 String var2033) void)
(declare-fun cast-from-var2840-to-var2033 (var2840) var2033)
(declare-const null-var1565 var1565)
(declare-const null-var2070 var2070)
(declare-const null-Int Int)
(declare-const null-var3980 var3980)
(declare-const null-var2840 var2840)
(declare-const var3752 var1565) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var3752 null-var1565)))
(declare-const var2153 var2070) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2153 null-var2070)))
(declare-const var16 Int) ; Statement: l2 := @parameter1: long 
(assert (not (= var16 null-Int)))
(define-const var107 var3980 (schema/-488737871 (cast-from-var1565-to-var662 var3752))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var107 null-var3980)) ; Cond: $r1 == null 
(define-const var1561 Int (fieldOffset/-488737871 (cast-from-var1565-to-var662 var3752))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var2746 Int (ite (> var1561 (- 1)) 1 (ite (< var1561 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var2746 0))) ; Negate: Cond: $b1 == 0  
(declare-const var250 var2840) ; Statement: $r8 := @caughtexception 
(assert (not (= var250 null-var2840)))
(define-const var905 var3920 var3920-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var6 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var6)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var6!1 String)
(assert (= var6!1 ""))
(assert true)
(define-const var3866 String (append/672562846 var6!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var6!2 String)
(assert (= var6!2 (str.++ var6!1 "set ")))
(define-const var2783 String (fieldName/-488737871 (cast-from-var1565-to-var662 var3752))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var675 String (append/672562846 var3866 var2783)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3866!1 String)
(assert (= var3866!1 (str.++ var3866 var2783)))
(assert true)
(define-const var3586 String (append/672562846 var675 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var675!1 String)
(assert (= var675!1 (str.++ var675 " error")))
(assert true)
(define-const var2225 String (toString/-2075883882 var3586)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var905 var2225 (cast-from-var2840-to-var2033 var250))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var905!1 var3920)
(declare-const var2225!1 String)
(declare-const var250!1 var2840)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1565-to-var662=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var3920-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2840-to-var2033=([java.lang.Exception], java.lang.Throwable)}
; {var1565=com.alibaba.fastjson2.reader.FieldReaderObjectField, var3752=r0, var2070=java.lang.Object, var2153=r2, var16=l2, var3980=com.alibaba.fastjson2.schema.JSONSchema, var662=com.alibaba.fastjson2.reader.FieldReader, var107=$r1, var1561=$l0, var2746=$b1, var2840=java.lang.Exception, var250=$r8, var3920=com.alibaba.fastjson2.JSONException, var905=$r9, var6=$r10, var3866=$r12, var2783=$r11, var675=$r13, var3586=$r14, var2225=$r15, var2033=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var1565, r0=var3752, java.lang.Object=var2070, r2=var2153, l2=var16, com.alibaba.fastjson2.schema.JSONSchema=var3980, com.alibaba.fastjson2.reader.FieldReader=var662, $r1=var107, $l0=var1561, $b1=var2746, java.lang.Exception=var2840, $r8=var250, com.alibaba.fastjson2.JSONException=var3920, $r9=var905, $r10=var6, $r12=var3866, $r11=var2783, $r13=var675, $r14=var3586, $r15=var2225, java.lang.Throwable=var2033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	l2 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3