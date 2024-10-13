(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-Float32-1 ((Array Int Float32)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Float32__ (Array Int Float32))
(declare-const var1581 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1581 null-String)))
(declare-const var3010 (Array Int Float32)) ; Statement: r1 := @parameter1: float[] 
(assert (not (= var3010 null-__Array__Int__Float32__)))
(assert true)
;(assert (append/-1166366385 var1581 91)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1581!1 String)
(assert (str.prefixof var1581 var1581!1))
(define-const var1926 Int (getLength-Arr-Float32-1 var3010)) ; Statement: i0 = lengthof r1 
(define-const var3177 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3177 var1926)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/-1166366385 var1581!1 93)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1581!2 String)
(assert (str.prefixof var1581!1 var1581!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Float32-1=([float[]], int)}
; {var1581=r0, var3010=r1, var1926=i0, var3177=i2}
; {r0=var1581, r1=var3010, i0=var1926, i2=var3177}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: float[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 3