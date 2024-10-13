(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var636 0)
(declare-sort var1376 0)
(declare-sort var72 0)
(declare-sort var2685 0)
(declare-sort var3966 0)
(declare-sort var1570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1415540230 (var72 var1376) void)
(declare-fun cast-from-var636-to-var72 (var636) var72)
(declare-fun get/-1324468399 (var1376 String) var2685)
(declare-fun typed/-1732077736 (var636) Bool)
(declare-fun getBigDecimal/1248053768 (var1376 String) var3966)
(declare-fun cast-from-var1570-to-var2685 (var1570) var2685)
(declare-fun minimum/-1732077736 (var636) var3966)
(declare-fun exclusiveMinimum/-1732077736 (var636) Bool)
(declare-fun minimumLongValue/-1732077736 (var636) Int)
(declare-fun maximum/-1732077736 (var636) var3966)
(declare-fun exclusiveMaximum/-1732077736 (var636) Bool)
(declare-fun maximumLongValue/-1732077736 (var636) Int)
(declare-fun multipleOf/-1732077736 (var636) var3966)
(declare-fun multipleOfLongValue/-1732077736 (var636) Int)
(declare-const null-var636 var636)
(declare-const null-var1376 var1376)
(declare-const var1570-TRUE var1570)
(declare-const null-var3966 var3966)
(declare-const var3630 var636) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.NumberSchema 
(assert (not (= var3630 null-var636)))
(declare-const var394 var1376) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var394 null-var1376)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var636-to-var72 var3630) var394)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var3630!1 var636)
(declare-const var394!1 var1376)
(define-const var1538 String "number") ; Statement: $r3 = "number" 
(assert true)
(define-const var3432 var2685 (get/-1324468399 var394!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("type") 
(assert true)
(define-const var84 Bool false) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
(declare-const var3630!2 var636)
(assert (not (= var3630!2 null-var636)))
(assert (= (typed/-1732077736 var3630!2) var84)) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: boolean typed> = $z0 
(assert true)
(define-const var3919 var2685 (get/-1324468399 var394!1 "exclusiveMinimum")) ; Statement: r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMinimum") 
(assert true)
(define-const var2014 var3966 (getBigDecimal/1248053768 var394!1 "minimum")) ; Statement: r5 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("minimum") 
(define-const var1481 var1570 var1570-TRUE) ; Statement: $r6 = <java.lang.Boolean: java.lang.Boolean TRUE> 
 ; Statement: if r4 != $r6 goto $z1 = r4 instanceof java.lang.Number 
(assert (not (not (= var3919 (cast-from-var1570-to-var2685 var1481))))) ; Negate: Cond: r4 != $r6  
(declare-const var3630!3 var636)
(assert (not (= var3630!3 null-var636)))
(assert (= (minimum/-1732077736 var3630!3) var2014)) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal minimum> = r5 
(declare-const var3630!4 var636)
(assert (not (= var3630!4 null-var636)))
(assert (= (exclusiveMinimum/-1732077736 var3630!4) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: boolean exclusiveMinimum> = 1 
 ; Statement: goto [?= $r25 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal minimum>] 
(assert true) ; Non Conditional
(define-const var2981 var3966 (minimum/-1732077736 var3630!4)) ; Statement: $r25 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal minimum> 
 ; Statement: if $r25 == null goto r0.<com.alibaba.fastjson2.schema.NumberSchema: long minimumLongValue> = -9223372036854775808L 
(assert (= var2981 null-var3966)) ; Cond: $r25 == null 
(declare-const var3630!5 var636)
(assert (not (= var3630!5 null-var636)))
(assert (= (minimumLongValue/-1732077736 var3630!5) (- 9223372036854775808))) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: long minimumLongValue> = -9223372036854775808L 
 ; Statement: goto [?= $r22 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("maximum")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2119 var3966 (getBigDecimal/1248053768 var394!1 "maximum")) ; Statement: $r22 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("maximum") 
(assert true)
(define-const var2932 var2685 (get/-1324468399 var394!1 "exclusiveMaximum")) ; Statement: $r23 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMaximum") 
(define-const var2783 var1570 var1570-TRUE) ; Statement: $r7 = <java.lang.Boolean: java.lang.Boolean TRUE> 
 ; Statement: if $r23 != $r7 goto $z2 = $r23 instanceof java.lang.Number 
(assert (not (not (= var2932 (cast-from-var1570-to-var2685 var2783))))) ; Negate: Cond: $r23 != $r7  
(declare-const var3630!6 var636)
(assert (not (= var3630!6 null-var636)))
(assert (= (maximum/-1732077736 var3630!6) var2119)) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal maximum> = $r22 
(declare-const var3630!7 var636)
(assert (not (= var3630!7 null-var636)))
(assert (= (exclusiveMaximum/-1732077736 var3630!7) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: boolean exclusiveMaximum> = 1 
 ; Statement: goto [?= $r26 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal maximum>] 
(assert true) ; Non Conditional
(define-const var332 var3966 (maximum/-1732077736 var3630!7)) ; Statement: $r26 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal maximum> 
 ; Statement: if $r26 == null goto r0.<com.alibaba.fastjson2.schema.NumberSchema: long maximumLongValue> = -9223372036854775808L 
(assert (= var332 null-var3966)) ; Cond: $r26 == null 
(declare-const var3630!8 var636)
(assert (not (= var3630!8 null-var636)))
(assert (= (maximumLongValue/-1732077736 var3630!8) (- 9223372036854775808))) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: long maximumLongValue> = -9223372036854775808L 
 ; Statement: goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("multipleOf")] 
(assert true) ; Non Conditional
(assert true)
(define-const var212 var3966 (getBigDecimal/1248053768 var394!1 "multipleOf")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("multipleOf") 
(declare-const var3630!9 var636)
(assert (not (= var3630!9 null-var636)))
(assert (= (multipleOf/-1732077736 var3630!9) var212)) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal multipleOf> = $r8 
(define-const var2653 var3966 (multipleOf/-1732077736 var3630!9)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal multipleOf> 
 ; Statement: if $r9 != null goto $r10 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal multipleOf> 
(assert (not (not (= var2653 null-var3966)))) ; Negate: Cond: $r9 != null  
(declare-const var3630!10 var636)
(assert (not (= var3630!10 null-var636)))
(assert (= (multipleOfLongValue/-1732077736 var3630!10) (- 9223372036854775808))) ; Statement: r0.<com.alibaba.fastjson2.schema.NumberSchema: long multipleOfLongValue> = -9223372036854775808L 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var636-to-var72=([com.alibaba.fastjson2.schema.NumberSchema], com.alibaba.fastjson2.schema.JSONSchema), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), typed/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], boolean), getBigDecimal/1248053768=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.math.BigDecimal), cast-from-var1570-to-var2685=([java.lang.Boolean], java.lang.Object), minimum/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], java.math.BigDecimal), exclusiveMinimum/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], boolean), minimumLongValue/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], long), maximum/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], java.math.BigDecimal), exclusiveMaximum/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], boolean), maximumLongValue/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], long), multipleOf/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], java.math.BigDecimal), multipleOfLongValue/-1732077736=([com.alibaba.fastjson2.schema.NumberSchema], long)}
; {var636=com.alibaba.fastjson2.schema.NumberSchema, var3630=r0, var1376=com.alibaba.fastjson2.JSONObject, var394=r1, var72=com.alibaba.fastjson2.schema.JSONSchema, var1538=$r3, var2685=java.lang.Object, var3432=$r2, var84=$z0, var3919=r4, var3966=java.math.BigDecimal, var2014=r5, var1570=java.lang.Boolean, var1481=$r6, var2981=$r25, var2119=$r22, var2932=$r23, var2783=$r7, var332=$r26, var212=$r8, var2653=$r9}
; {com.alibaba.fastjson2.schema.NumberSchema=var636, r0=var3630, com.alibaba.fastjson2.JSONObject=var1376, r1=var394, com.alibaba.fastjson2.schema.JSONSchema=var72, $r3=var1538, java.lang.Object=var2685, $r2=var3432, $z0=var84, r4=var3919, java.math.BigDecimal=var3966, r5=var2014, java.lang.Boolean=var1570, $r6=var1481, $r25=var2981, $r22=var2119, $r23=var2932, $r7=var2783, $r26=var332, $r8=var212, $r9=var2653}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.NumberSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "number";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	r0.<com.alibaba.fastjson2.schema.NumberSchema: boolean typed> = $z0;	r4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMinimum");	r5 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("minimum");	$r6 = <java.lang.Boolean: java.lang.Boolean TRUE>;	if r4 != $r6 goto $z1 = r4 instanceof java.lang.Number;	r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal minimum> = r5;	r0.<com.alibaba.fastjson2.schema.NumberSchema: boolean exclusiveMinimum> = 1;	goto [?= $r25 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal minimum>];	$r25 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal minimum>;	if $r25 == null goto r0.<com.alibaba.fastjson2.schema.NumberSchema: long minimumLongValue> = -9223372036854775808L;	r0.<com.alibaba.fastjson2.schema.NumberSchema: long minimumLongValue> = -9223372036854775808L;	goto [?= $r22 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("maximum")];	$r22 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("maximum");	$r23 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMaximum");	$r7 = <java.lang.Boolean: java.lang.Boolean TRUE>;	if $r23 != $r7 goto $z2 = $r23 instanceof java.lang.Number;	r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal maximum> = $r22;	r0.<com.alibaba.fastjson2.schema.NumberSchema: boolean exclusiveMaximum> = 1;	goto [?= $r26 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal maximum>];	$r26 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal maximum>;	if $r26 == null goto r0.<com.alibaba.fastjson2.schema.NumberSchema: long maximumLongValue> = -9223372036854775808L;	r0.<com.alibaba.fastjson2.schema.NumberSchema: long maximumLongValue> = -9223372036854775808L;	goto [?= $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("multipleOf")];	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("multipleOf");	r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal multipleOf> = $r8;	$r9 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal multipleOf>;	if $r9 != null goto $r10 = r0.<com.alibaba.fastjson2.schema.NumberSchema: java.math.BigDecimal multipleOf>;	r0.<com.alibaba.fastjson2.schema.NumberSchema: long multipleOfLongValue> = -9223372036854775808L;	goto [?= return];	return
;block_num 11