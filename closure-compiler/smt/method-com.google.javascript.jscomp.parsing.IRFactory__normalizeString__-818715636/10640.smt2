(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2720 0)
(declare-sort var751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var751) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2720 var2720)
(declare-const null-var751 var751)
(declare-const null-Bool Bool)
(declare-const var1323 var2720) ; Statement: r5 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var1323 null-var2720)))
(declare-const var3042 var751) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var3042 null-var751)))
(declare-const var1674 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1674 null-Bool)))
(define-const var1905 String (value/-732511682 var3042)) ; Statement: r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var1861 Int (indexOf/-1037706067 var1905 13)) ; Statement: $i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13) 
 ; Statement: if $i0 < 0 goto (branch) 
(assert (< var1861 0)) ; Cond: $i0 < 0 
 ; Statement: if z0 == 0 goto $b37 = 1 
(assert (not (= (ite var1674 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var9 Int 0) ; Statement: $b37 = 0 
 ; Statement: goto [?= i38 = $b37] 
(assert true) ; Non Conditional
(define-const var1188 Int var9) ; Statement: i38 = $b37 
(assert true)
(define-const var453 Int (indexOf/-1037706067 var1905 92)) ; Statement: $i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92) 
(define-const var363 Int var453) ; Statement: i39 = $i36 
(define-const var3729 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i54 = (int) -1 
 ; Statement: if $i36 != $i54 goto $r29 = new java.lang.StringBuilder 
(assert (not (not (= var453 var3729)))) ; Negate: Cond: $i36 != $i54  
 ; Statement: if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>() 
(assert (= (ite var1674 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3925 Int (length/-134980193 var1905)) ; Statement: $i34 = virtualinvoke r25.<java.lang.String: int length()>() 
(define-const var2428 Int (- var3925 1)) ; Statement: $i35 = $i34 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var1905) var2428) (>= var2428 1))))
(define-const var510 String (substring/-1240304868 var1905 1 var2428)) ; Statement: $r26 = virtualinvoke r25.<java.lang.String: java.lang.String substring(int,int)>(1, $i35) 
(assert true) ; Non Conditional
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2720=com.google.javascript.jscomp.parsing.IRFactory, var1323=r5, var751=com.google.javascript.jscomp.parsing.parser.LiteralToken, var3042=r0, var1674=z0, var1905=r25, var1861=$i0, var9=$b37, var1188=i38, var453=$i36, var363=i39, var3729=$i54, var3925=$i34, var2428=$i35, var510=$r26}
; {com.google.javascript.jscomp.parsing.IRFactory=var2720, r5=var1323, com.google.javascript.jscomp.parsing.parser.LiteralToken=var751, r0=var3042, z0=var1674, r25=var1905, $i0=var1861, $b37=var9, i38=var1188, $i36=var453, i39=var363, $i54=var3729, $i34=var3925, $i35=var2428, $r26=var510}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	z0 := @parameter1: boolean;	r25 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(13);	if $i0 < 0 goto (branch);	if z0 == 0 goto $b37 = 1;	$b37 = 0;	goto [?= i38 = $b37];	i38 = $b37;	$i36 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(92);	i39 = $i36;	$i54 = (int) -1;	if $i36 != $i54 goto $r29 = new java.lang.StringBuilder;	if z0 == 0 goto $i34 = virtualinvoke r25.<java.lang.String: int length()>();	$i34 = virtualinvoke r25.<java.lang.String: int length()>();	$i35 = $i34 - 1;	$r26 = virtualinvoke r25.<java.lang.String: java.lang.String substring(int,int)>(1, $i35);	return $r26
;block_num 7