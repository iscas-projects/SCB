(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var75 0)
(declare-sort var2438 0)
(declare-sort var3443 0)
(declare-sort var1446 0)
(declare-sort var773 0)
(declare-sort var2497 0)
(declare-sort var2985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1446) var3443)
(declare-fun cast-from-var75-to-var1446 (var75) var1446)
(declare-fun fieldOffset/-488737871 (var1446) Int)
(declare-fun var2497-init () var2497)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1446) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2497 String var2985) void)
(declare-fun cast-from-var773-to-var2985 (var773) var2985)
(declare-const null-var75 var75)
(declare-const null-var2438 var2438)
(declare-const null-Int Int)
(declare-const null-var3443 var3443)
(declare-const null-var773 var773)
(declare-const var997 var75) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var997 null-var75)))
(declare-const var1489 var2438) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1489 null-var2438)))
(declare-const var1823 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1823 null-Int)))
(define-const var1696 var3443 (schema/-488737871 (cast-from-var75-to-var1446 var997))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var1696 null-var3443)) ; Cond: $r1 == null 
(define-const var269 Int (fieldOffset/-488737871 (cast-from-var75-to-var1446 var997))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var1861 Int (ite (> var269 (- 1)) 1 (ite (< var269 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var1861 0))) ; Negate: Cond: $b1 == 0  
(declare-const var2929 var773) ; Statement: $r8 := @caughtexception 
(assert (not (= var2929 null-var773)))
(define-const var2254 var2497 var2497-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2268 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2268)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2268!1 String)
(assert (= var2268!1 ""))
(assert true)
(define-const var3972 String (append/672562846 var2268!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2268!2 String)
(assert (= var2268!2 (str.++ var2268!1 "set ")))
(define-const var2156 String (fieldName/-488737871 (cast-from-var75-to-var1446 var997))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var3225 String (append/672562846 var3972 var2156)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3972!1 String)
(assert (= var3972!1 (str.++ var3972 var2156)))
(assert true)
(define-const var2350 String (append/672562846 var3225 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3225!1 String)
(assert (= var3225!1 (str.++ var3225 " error")))
(assert true)
(define-const var2550 String (toString/-2075883882 var2350)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2254 var2550 (cast-from-var773-to-var2985 var2929))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2254!1 var2497)
(declare-const var2550!1 String)
(declare-const var2929!1 var773)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var75-to-var1446=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var2497-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var773-to-var2985=([java.lang.Exception], java.lang.Throwable)}
; {var75=com.alibaba.fastjson2.reader.FieldReaderObjectField, var997=r0, var2438=java.lang.Object, var1489=r2, var1823=i2, var3443=com.alibaba.fastjson2.schema.JSONSchema, var1446=com.alibaba.fastjson2.reader.FieldReader, var1696=$r1, var269=$l0, var1861=$b1, var773=java.lang.Exception, var2929=$r8, var2497=com.alibaba.fastjson2.JSONException, var2254=$r9, var2268=$r10, var3972=$r12, var2156=$r11, var3225=$r13, var2350=$r14, var2550=$r15, var2985=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var75, r0=var997, java.lang.Object=var2438, r2=var1489, i2=var1823, com.alibaba.fastjson2.schema.JSONSchema=var3443, com.alibaba.fastjson2.reader.FieldReader=var1446, $r1=var1696, $l0=var269, $b1=var1861, java.lang.Exception=var773, $r8=var2929, com.alibaba.fastjson2.JSONException=var2497, $r9=var2254, $r10=var2268, $r12=var3972, $r11=var2156, $r13=var3225, $r14=var2350, $r15=var2550, java.lang.Throwable=var2985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	i2 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3