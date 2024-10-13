(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var2562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2562-init () var2562)
(declare-fun <init>/-1084991535 (var2562 String) void)
(declare-const null-String String)
(declare-const var2253 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2253 null-String)))
(assert (not (and true (and (> (str.len var2253) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2562-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2253=r0, var426=null_type, var3745=$c0, var407=$i2, var2562=java.lang.RuntimeException, var1153=$r3, var990="$sig: internal error"}
; {r0=var2253, null_type=var426, $c0=var3745, $i2=var407, java.lang.RuntimeException=var2562, $r3=var1153, "$sig: internal error"=var990}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i2 = (int) $c0;	if $i2 == 40 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.RuntimeException;	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("$sig: internal error");	throw $r3
;block_num 2