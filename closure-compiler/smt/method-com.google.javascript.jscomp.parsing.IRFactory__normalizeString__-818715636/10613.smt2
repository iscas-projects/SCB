(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1695 0)
(declare-sort var1334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var1334) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1695 var1695)
(declare-const null-var1334 var1334)
(declare-const null-Bool Bool)
(declare-const var2438 var1695) ; Statement: r5 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var2438 null-var1695)))
(declare-const var203 var1334) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var203 null-var1334)))
(declare-const var2975 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2975 null-Bool)))
(define-const var2440 String (value/-732511682 var203)) ; Statement: r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var1978 Int (indexOf/-1037706067 var2440 13)) ; Statement: $i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13) 
 ; Statement: if $i0 < 0 goto (branch) 
(assert (< var1978 0)) ; Cond: $i0 < 0 
 ; Statement: if z0 == 0 goto $b37 = 1 
(assert (not (= (ite var2975 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3103 Int 0) ; Statement: $b37 = 0 
 ; Statement: goto [?= i38 = $b37] 
(assert true) ; Non Conditional
(define-const var413 Int var3103) ; Statement: i38 = $b37 
(assert true)
(define-const var3834 Int (indexOf/-1037706067 var2440 92)) ; Statement: $i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92) 
(define-const var3761 Int var3834) ; Statement: i39 = $i36 
(define-const var2765 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i54 = (int) -1 
 ; Statement: if $i36 != $i54 goto $r29 = new java.lang.StringBuilder 
(assert (not (not (= var3834 var2765)))) ; Negate: Cond: $i36 != $i54  
 ; Statement: if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>() 
(assert (not (= (ite var2975 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1011 String var2440) ; Statement: $r26 = r25 
 ; Statement: goto [?= return $r26] 
(assert true) ; Non Conditional
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1695=com.google.javascript.jscomp.parsing.IRFactory, var2438=r5, var1334=com.google.javascript.jscomp.parsing.parser.LiteralToken, var203=r0, var2975=z0, var2440=r25, var1978=$i0, var3103=$b37, var413=i38, var3834=$i36, var3761=i39, var2765=$i54, var1011=$r26}
; {com.google.javascript.jscomp.parsing.IRFactory=var1695, r5=var2438, com.google.javascript.jscomp.parsing.parser.LiteralToken=var1334, r0=var203, z0=var2975, r25=var2440, $i0=var1978, $b37=var3103, i38=var413, $i36=var3834, i39=var3761, $i54=var2765, $r26=var1011}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r5 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	z0 := @parameter1: boolean;	r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13);	if $i0 < 0 goto (branch);	if z0 == 0 goto $b37 = 1;	$b37 = 0;	goto [?= i38 = $b37];	i38 = $b37;	$i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92);	i39 = $i36;	$i54 = (int) -1;	if $i36 != $i54 goto $r29 = new java.lang.StringBuilder;	if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>();	$r26 = r25;	goto [?= return $r26];	return $r26
;block_num 7