(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun createPattern/-1895420268 (var217 String) void)
(declare-const null-var217 var217)
(declare-const null-String String)
(declare-const var340 var217) ; Statement: r0 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy 
(assert (not (= var340 null-var217)))
(declare-const var3805 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3805 null-String)))
(assert true)
(define-const var1190 String (toString/-2075883882 var3805)) ; Statement: $r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (createPattern/-1895420268 var340 var1190)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void createPattern(java.lang.String)>($r2) 

(declare-const var340!1 var217)
(declare-const var1190!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String), createPattern/-1895420268=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy, java.lang.String], void)}
; {var217=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var340=r0, var3805=r1, var1190=$r2}
; {org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var217, r0=var340, r1=var3805, $r2=var1190}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.FastDateParser$PatternStrategy;	r1 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.lang3.time.FastDateParser$PatternStrategy: void createPattern(java.lang.String)>($r2);	return
;block_num 1