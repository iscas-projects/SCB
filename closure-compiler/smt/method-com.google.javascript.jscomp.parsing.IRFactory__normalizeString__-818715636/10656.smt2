(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var947 0)
(declare-sort var3910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var3910) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var947 var947)
(declare-const null-var3910 var3910)
(declare-const null-Bool Bool)
(declare-const var3300 var947) ; Statement: r5 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var3300 null-var947)))
(declare-const var1108 var3910) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var1108 null-var3910)))
(declare-const var826 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var826 null-Bool)))
(define-const var3959 String (value/-732511682 var1108)) ; Statement: r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var2822 Int (indexOf/-1037706067 var3959 13)) ; Statement: $i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13) 
 ; Statement: if $i0 < 0 goto (branch) 
(assert (< var2822 0)) ; Cond: $i0 < 0 
 ; Statement: if z0 == 0 goto $b37 = 1 
(assert (= (ite var826 1 0) 0)) ; Cond: z0 == 0 
(define-const var2548 Int 1) ; Statement: $b37 = 1 
(assert true) ; Non Conditional
(define-const var3120 Int var2548) ; Statement: i38 = $b37 
(assert true)
(define-const var1403 Int (indexOf/-1037706067 var3959 92)) ; Statement: $i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92) 
(define-const var1629 Int var1403) ; Statement: i39 = $i36 
(define-const var1540 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i54 = (int) -1 
 ; Statement: if $i36 != $i54 goto $r29 = new java.lang.StringBuilder 
(assert (not (not (= var1403 var1540)))) ; Negate: Cond: $i36 != $i54  
 ; Statement: if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>() 
(assert (not (= (ite var826 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2936 String var3959) ; Statement: $r26 = r25 
 ; Statement: goto [?= return $r26] 
(assert true) ; Non Conditional
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var947=com.google.javascript.jscomp.parsing.IRFactory, var3300=r5, var3910=com.google.javascript.jscomp.parsing.parser.LiteralToken, var1108=r0, var826=z0, var3959=r25, var2822=$i0, var2548=$b37, var3120=i38, var1403=$i36, var1629=i39, var1540=$i54, var2936=$r26}
; {com.google.javascript.jscomp.parsing.IRFactory=var947, r5=var3300, com.google.javascript.jscomp.parsing.parser.LiteralToken=var3910, r0=var1108, z0=var826, r25=var3959, $i0=var2822, $b37=var2548, i38=var3120, $i36=var1403, i39=var1629, $i54=var1540, $r26=var2936}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r5 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	z0 := @parameter1: boolean;	r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13);	if $i0 < 0 goto (branch);	if z0 == 0 goto $b37 = 1;	$b37 = 1;	i38 = $b37;	$i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92);	i39 = $i36;	$i54 = (int) -1;	if $i36 != $i54 goto $r29 = new java.lang.StringBuilder;	if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>();	$r26 = r25;	goto [?= return $r26];	return $r26
;block_num 7