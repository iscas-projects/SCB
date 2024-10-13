(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2020 0)
(declare-sort var1931 0)
(declare-sort var2534 0)
(declare-sort var1925 0)
(declare-sort var3060 0)
(declare-sort var61 0)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1925) var2534)
(declare-fun cast-from-var2020-to-var1925 (var2020) var1925)
(declare-fun fieldOffset/-488737871 (var1925) Int)
(declare-fun var61-init () var61)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1925) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var61 String var3523) void)
(declare-fun cast-from-var3060-to-var3523 (var3060) var3523)
(declare-const null-var2020 var2020)
(declare-const null-var1931 var1931)
(declare-const null-Int Int)
(declare-const null-var2534 var2534)
(declare-const null-var3060 var3060)
(declare-const var2400 var2020) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var2400 null-var2020)))
(declare-const var3906 var1931) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3906 null-var1931)))
(declare-const var1097 Int) ; Statement: b2 := @parameter1: byte 
(assert (not (= var1097 null-Int)))
(define-const var1683 var2534 (schema/-488737871 (cast-from-var2020-to-var1925 var2400))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var1683 null-var2534)) ; Cond: $r1 == null 
(define-const var2505 Int (fieldOffset/-488737871 (cast-from-var2020-to-var1925 var2400))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var1756 Int (ite (> var2505 (- 1)) 1 (ite (< var2505 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var1756 0))) ; Negate: Cond: $b1 == 0  
(declare-const var3284 var3060) ; Statement: $r8 := @caughtexception 
(assert (not (= var3284 null-var3060)))
(define-const var1750 var61 var61-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var565 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var565)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var565!1 String)
(assert (= var565!1 ""))
(assert true)
(define-const var3552 String (append/672562846 var565!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var565!2 String)
(assert (= var565!2 (str.++ var565!1 "set ")))
(define-const var2662 String (fieldName/-488737871 (cast-from-var2020-to-var1925 var2400))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var3526 String (append/672562846 var3552 var2662)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3552!1 String)
(assert (= var3552!1 (str.++ var3552 var2662)))
(assert true)
(define-const var327 String (append/672562846 var3526 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3526!1 String)
(assert (= var3526!1 (str.++ var3526 " error")))
(assert true)
(define-const var2211 String (toString/-2075883882 var327)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1750 var2211 (cast-from-var3060-to-var3523 var3284))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var1750!1 var61)
(declare-const var2211!1 String)
(declare-const var3284!1 var3060)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2020-to-var1925=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var61-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3060-to-var3523=([java.lang.Exception], java.lang.Throwable)}
; {var2020=com.alibaba.fastjson2.reader.FieldReaderObjectField, var2400=r0, var1931=java.lang.Object, var3906=r2, var1097=b2, var2534=com.alibaba.fastjson2.schema.JSONSchema, var1925=com.alibaba.fastjson2.reader.FieldReader, var1683=$r1, var2505=$l0, var1756=$b1, var3060=java.lang.Exception, var3284=$r8, var61=com.alibaba.fastjson2.JSONException, var1750=$r9, var565=$r10, var3552=$r12, var2662=$r11, var3526=$r13, var327=$r14, var2211=$r15, var3523=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var2020, r0=var2400, java.lang.Object=var1931, r2=var3906, b2=var1097, com.alibaba.fastjson2.schema.JSONSchema=var2534, com.alibaba.fastjson2.reader.FieldReader=var1925, $r1=var1683, $l0=var2505, $b1=var1756, java.lang.Exception=var3060, $r8=var3284, com.alibaba.fastjson2.JSONException=var61, $r9=var1750, $r10=var565, $r12=var3552, $r11=var2662, $r13=var3526, $r14=var327, $r15=var2211, java.lang.Throwable=var3523}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	b2 := @parameter1: byte;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3