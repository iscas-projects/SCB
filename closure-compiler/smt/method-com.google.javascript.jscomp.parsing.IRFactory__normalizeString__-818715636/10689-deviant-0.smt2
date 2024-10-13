(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3848 0)
(declare-sort var2405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var2405) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3848 var3848)
(declare-const null-var2405 var2405)
(declare-const null-Bool Bool)
(declare-const var3107 var3848) ; Statement: r5 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var3107 null-var3848)))
(declare-const var1203 var2405) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var1203 null-var2405)))
(declare-const var118 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var118 null-Bool)))
(define-const var725 String (value/-732511682 var1203)) ; Statement: r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var2782 Int (indexOf/-1037706067 var725 13)) ; Statement: $i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13) 
 ; Statement: if $i0 < 0 goto (branch) 
(assert (< var2782 0)) ; Cond: $i0 < 0 
 ; Statement: if z0 == 0 goto $b37 = 1 
(assert (= (ite var118 1 0) 0)) ; Cond: z0 == 0 
(define-const var2546 Int 1) ; Statement: $b37 = 1 
(assert true) ; Non Conditional
(define-const var2506 Int var2546) ; Statement: i38 = $b37 
(assert true)
(define-const var3732 Int (indexOf/-1037706067 var725 92)) ; Statement: $i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92) 
(define-const var3846 Int var3732) ; Statement: i39 = $i36 
(define-const var3234 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i54 = (int) -1 
 ; Statement: if $i36 != $i54 goto $r29 = new java.lang.StringBuilder 
(assert (not (not (= var3732 var3234)))) ; Negate: Cond: $i36 != $i54  
 ; Statement: if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>() 
(assert (= (ite var118 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1379 Int (length/-134980193 var725)) ; Statement: $i34 = virtualinvoke r25.<java.lang.String: int length()>() 
(define-const var2693 Int (- var1379 1)) ; Statement: $i35 = $i34 - 1 
(assert (not (and true (and (>= 1 0) (>= (str.len var725) var2693) (>= var2693 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3848=com.google.javascript.jscomp.parsing.IRFactory, var3107=r5, var2405=com.google.javascript.jscomp.parsing.parser.LiteralToken, var1203=r0, var118=z0, var725=r25, var2782=$i0, var2546=$b37, var2506=i38, var3732=$i36, var3846=i39, var3234=$i54, var1379=$i34, var2693=$i35, var3275=$r26}
; {com.google.javascript.jscomp.parsing.IRFactory=var3848, r5=var3107, com.google.javascript.jscomp.parsing.parser.LiteralToken=var2405, r0=var1203, z0=var118, r25=var725, $i0=var2782, $b37=var2546, i38=var2506, $i36=var3732, i39=var3846, $i54=var3234, $i34=var1379, $i35=var2693, $r26=var3275}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	z0 := @parameter1: boolean;	r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13);	if $i0 < 0 goto (branch);	if z0 == 0 goto $b37 = 1;	$b37 = 1;	i38 = $b37;	$i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92);	i39 = $i36;	$i54 = (int) -1;	if $i36 != $i54 goto $r29 = new java.lang.StringBuilder;	if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>();	$i34 = virtualinvoke r25.<java.lang.String: int length()>();	$i35 = $i34 - 1;	$r26 = virtualinvoke r25.<java.lang.String: java.lang.String substring(int,int)>(1, $i35);	return $r26
;block_num 7