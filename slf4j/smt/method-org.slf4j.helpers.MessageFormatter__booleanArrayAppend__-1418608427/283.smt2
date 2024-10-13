(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-Bool-1 ((Array Int Bool)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var1818 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1818 null-String)))
(declare-const var1449 (Array Int Bool)) ; Statement: r1 := @parameter1: boolean[] 
(assert (not (= var1449 null-__Array__Int__Bool__)))
(assert true)
;(assert (append/-1166366385 var1818 91)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1818!1 String)
(assert (str.prefixof var1818 var1818!1))
(define-const var3293 Int (getLength-Arr-Bool-1 var1449)) ; Statement: i0 = lengthof r1 
(define-const var3147 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3147 var3293)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/-1166366385 var1818!1 93)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1818!2 String)
(assert (str.prefixof var1818!1 var1818!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-Bool-1=([boolean[]], int)}
; {var1818=r0, var1449=r1, var3293=i0, var3147=i2}
; {r0=var1818, r1=var1449, i0=var3293, i2=var3147}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: boolean[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 3