(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var979 0)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var1555-ON_DOS Bool)
(declare-const var2050 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2050 null-String)))
(define-const var2594 Bool var1555-ON_DOS) ; Statement: $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean ON_DOS> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (= (ite var2594 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2178 Bool (isEmpty/-1285796103 var2050)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto c0 = <java.io.File: char separatorChar> 
(assert (not (= (ite var2178 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2050=r1, var979=null_type, var1555=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2594=$z0, var2178=$z1}
; {r1=var2050, null_type=var979, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var1555, $z0=var2594, $z1=var2178}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean ON_DOS>;	if $z0 != 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto c0 = <java.io.File: char separatorChar>;	return 0
;block_num 3