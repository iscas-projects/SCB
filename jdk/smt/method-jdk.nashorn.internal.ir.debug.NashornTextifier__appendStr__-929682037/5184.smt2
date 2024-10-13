(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3017 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3017 null-String)))
(declare-const var2517 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2517 null-String)))
(assert true)
;(assert (append/-1166366385 var3017 34)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3017!1 String)
(assert (str.prefixof var3017 var3017!1))
(define-const var1910 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2653 Int (length/-134980193 var2517)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var1910 var2653)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/-1166366385 var3017!1 34)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3017!2 String)
(assert (str.prefixof var3017!1 var3017!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int)}
; {var3017=r0, var2517=r1, var3891=null_type, var1910=i2, var2653=$i0}
; {r0=var3017, r1=var2517, null_type=var3891, i2=var1910, $i0=var2653}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i2 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= $i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	return
;block_num 3