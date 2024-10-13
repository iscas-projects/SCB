(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var2716 0)
(declare-sort var96 0)
(declare-sort var2099 0)
(declare-sort var809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1415540230 (var96 var2716) void)
(declare-fun cast-from-var456-to-var96 (var456) var96)
(declare-fun getString/1992452270 (var2716 String) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun typed/-1096095439 (var456) Bool)
(declare-fun get/-1324468399 (var2716 String) var2099)
(declare-fun getLongValue/324677419 (var2716 String Int) Int)
(declare-fun cast-from-var809-to-var2099 (var809) var2099)
(declare-fun exclusiveMinimum/-1096095439 (var456) Bool)
(declare-fun minimum/-1096095439 (var456) Int)
(declare-fun exclusiveMaximum/-1096095439 (var456) Bool)
(declare-fun maximum/-1096095439 (var456) Int)
(declare-fun multipleOf/-1096095439 (var456) Int)
(declare-fun getLong/754009944 (var2716 String) Int)
(declare-fun constValue/-1096095439 (var456) Int)
(declare-const null-var456 var456)
(declare-const null-var2716 var2716)
(declare-const var809-TRUE var809)
(declare-const var2104 var456) ; Statement: r0 := @this: com.alibaba.fastjson2.schema.IntegerSchema 
(assert (not (= var2104 null-var456)))
(declare-const var3459 var2716) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var3459 null-var2716)))
(assert true)
;(assert (<init>/1415540230 (cast-from-var456-to-var96 var2104) var3459)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1) 

(declare-const var2104!1 var456)
(declare-const var3459!1 var2716)
(define-const var1051 String "integer") ; Statement: $r3 = "integer" 
(assert true)
(define-const var3033 String (getString/1992452270 var3459!1 "type")) ; Statement: $r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type") 
(assert true)
(define-const var496 Bool (equalsIgnoreCase/-92311102 var1051 var3033)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: if $z0 != 0 goto $z4 = 1 
(assert (not (= (ite var496 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3275 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean typed> = $z4] 
(assert true) ; Non Conditional
(declare-const var2104!2 var456)
(assert (not (= var2104!2 null-var456)))
(assert (= (typed/-1096095439 var2104!2) var3275)) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean typed> = $z4 
(assert true)
(define-const var1821 var2099 (get/-1324468399 var3459!1 "exclusiveMinimum")) ; Statement: $r5 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMinimum") 
(assert true)
(define-const var119 Int (getLongValue/324677419 var3459!1 "minimum" (- 9223372036854775808))) ; Statement: $l2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("minimum", -9223372036854775808L) 
(define-const var2198 var809 var809-TRUE) ; Statement: $r4 = <java.lang.Boolean: java.lang.Boolean TRUE> 
 ; Statement: if $r5 != $r4 goto $z1 = $r5 instanceof java.lang.Number 
(assert (not (not (= var1821 (cast-from-var809-to-var2099 var2198))))) ; Negate: Cond: $r5 != $r4  
(declare-const var2104!3 var456)
(assert (not (= var2104!3 null-var456)))
(assert (= (exclusiveMinimum/-1096095439 var2104!3) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean exclusiveMinimum> = 1 
(declare-const var2104!4 var456)
(assert (not (= var2104!4 null-var456)))
(assert (= (minimum/-1096095439 var2104!4) var119)) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: long minimum> = $l2 
 ; Statement: goto [?= $l3 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("maximum", -9223372036854775808L)] 
(assert true) ; Non Conditional
(assert true)
(define-const var766 Int (getLongValue/324677419 var3459!1 "maximum" (- 9223372036854775808))) ; Statement: $l3 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("maximum", -9223372036854775808L) 
(assert true)
(define-const var3372 var2099 (get/-1324468399 var3459!1 "exclusiveMaximum")) ; Statement: $r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMaximum") 
(define-const var519 var809 var809-TRUE) ; Statement: $r7 = <java.lang.Boolean: java.lang.Boolean TRUE> 
 ; Statement: if $r6 != $r7 goto $z2 = $r6 instanceof java.lang.Number 
(assert (not (not (= var3372 (cast-from-var809-to-var2099 var519))))) ; Negate: Cond: $r6 != $r7  
(declare-const var2104!5 var456)
(assert (not (= var2104!5 null-var456)))
(assert (= (exclusiveMaximum/-1096095439 var2104!5) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean exclusiveMaximum> = 1 
(declare-const var2104!6 var456)
(assert (not (= var2104!6 null-var456)))
(assert (= (maximum/-1096095439 var2104!6) var766)) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: long maximum> = $l3 
 ; Statement: goto [?= $l4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("multipleOf", 0L)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3662 Int (getLongValue/324677419 var3459!1 "multipleOf" 0)) ; Statement: $l4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("multipleOf", 0L) 
(declare-const var2104!7 var456)
(assert (not (= var2104!7 null-var456)))
(assert (= (multipleOf/-1096095439 var2104!7) var3662)) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: long multipleOf> = $l4 
(assert true)
(define-const var2836 Int (getLong/754009944 var3459!1 "const")) ; Statement: $r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Long getLong(java.lang.String)>("const") 
(declare-const var2104!8 var456)
(assert (not (= var2104!8 null-var456)))
(assert (= (constValue/-1096095439 var2104!8) var2836)) ; Statement: r0.<com.alibaba.fastjson2.schema.IntegerSchema: java.lang.Long constValue> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1415540230=([com.alibaba.fastjson2.schema.JSONSchema, com.alibaba.fastjson2.JSONObject], void), cast-from-var456-to-var96=([com.alibaba.fastjson2.schema.IntegerSchema], com.alibaba.fastjson2.schema.JSONSchema), getString/1992452270=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), typed/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], boolean), get/-1324468399=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Object), getLongValue/324677419=([com.alibaba.fastjson2.JSONObject, java.lang.String, long], long), cast-from-var809-to-var2099=([java.lang.Boolean], java.lang.Object), exclusiveMinimum/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], boolean), minimum/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], long), exclusiveMaximum/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], boolean), maximum/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], long), multipleOf/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], long), getLong/754009944=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.lang.Long), constValue/-1096095439=([com.alibaba.fastjson2.schema.IntegerSchema], java.lang.Long)}
; {var456=com.alibaba.fastjson2.schema.IntegerSchema, var2104=r0, var2716=com.alibaba.fastjson2.JSONObject, var3459=r1, var96=com.alibaba.fastjson2.schema.JSONSchema, var1051=$r3, var3033=$r2, var496=$z0, var3275=$z4, var2099=java.lang.Object, var1821=$r5, var119=$l2, var809=java.lang.Boolean, var2198=$r4, var766=$l3, var3372=$r6, var519=$r7, var3662=$l4, var2836=$r8}
; {com.alibaba.fastjson2.schema.IntegerSchema=var456, r0=var2104, com.alibaba.fastjson2.JSONObject=var2716, r1=var3459, com.alibaba.fastjson2.schema.JSONSchema=var96, $r3=var1051, $r2=var3033, $z0=var496, $z4=var3275, java.lang.Object=var2099, $r5=var1821, $l2=var119, java.lang.Boolean=var809, $r4=var2198, $l3=var766, $r6=var3372, $r7=var519, $l4=var3662, $r8=var2836}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.schema.IntegerSchema;	r1 := @parameter0: com.alibaba.fastjson2.JSONObject;	specialinvoke r0.<com.alibaba.fastjson2.schema.JSONSchema: void <init>(com.alibaba.fastjson2.JSONObject)>(r1);	$r3 = "integer";	$r2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.String getString(java.lang.String)>("type");	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	if $z0 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean typed> = $z4];	r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean typed> = $z4;	$r5 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMinimum");	$l2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("minimum", -9223372036854775808L);	$r4 = <java.lang.Boolean: java.lang.Boolean TRUE>;	if $r5 != $r4 goto $z1 = $r5 instanceof java.lang.Number;	r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean exclusiveMinimum> = 1;	r0.<com.alibaba.fastjson2.schema.IntegerSchema: long minimum> = $l2;	goto [?= $l3 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("maximum", -9223372036854775808L)];	$l3 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("maximum", -9223372036854775808L);	$r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Object get(java.lang.String)>("exclusiveMaximum");	$r7 = <java.lang.Boolean: java.lang.Boolean TRUE>;	if $r6 != $r7 goto $z2 = $r6 instanceof java.lang.Number;	r0.<com.alibaba.fastjson2.schema.IntegerSchema: boolean exclusiveMaximum> = 1;	r0.<com.alibaba.fastjson2.schema.IntegerSchema: long maximum> = $l3;	goto [?= $l4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("multipleOf", 0L)];	$l4 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: long getLongValue(java.lang.String,long)>("multipleOf", 0L);	r0.<com.alibaba.fastjson2.schema.IntegerSchema: long multipleOf> = $l4;	$r8 = virtualinvoke r1.<com.alibaba.fastjson2.JSONObject: java.lang.Long getLong(java.lang.String)>("const");	r0.<com.alibaba.fastjson2.schema.IntegerSchema: java.lang.Long constValue> = $r8;	return
;block_num 7