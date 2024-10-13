(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun createPattern/1102895400 (var3423 String) void)
(declare-const null-var3423 var3423)
(declare-const null-String String)
(declare-const var2805 var3423) ; Statement: r0 := @this: cn.hutool.core.date.format.FastDateParser$PatternStrategy 
(assert (not (= var2805 null-var3423)))
(declare-const var994 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var994 null-String)))
(assert true)
(define-const var3798 String (toString/-2075883882 var994)) ; Statement: $r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (createPattern/1102895400 var2805 var3798)) ; Statement: virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void createPattern(java.lang.String)>($r2) 

(declare-const var2805!1 var3423)
(declare-const var3798!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String), createPattern/1102895400=([cn.hutool.core.date.format.FastDateParser$PatternStrategy, java.lang.String], void)}
; {var3423=cn.hutool.core.date.format.FastDateParser$PatternStrategy, var2805=r0, var994=r1, var3798=$r2}
; {cn.hutool.core.date.format.FastDateParser$PatternStrategy=var3423, r0=var2805, r1=var994, $r2=var3798}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.FastDateParser$PatternStrategy;	r1 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<cn.hutool.core.date.format.FastDateParser$PatternStrategy: void createPattern(java.lang.String)>($r2);	return
;block_num 1