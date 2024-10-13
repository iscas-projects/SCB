(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3344 0)
(declare-sort var3405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun unlessString/-34059632 (var3344) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3344 var3344)
(declare-const null-String String)
(declare-const var1998 var3344) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var1998 null-var3344)))
(define-const var3807 String (unlessString/-34059632 var1998)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString> 
(assert true)
(define-const var3319 Bool (isEmpty/-1285796103 var3807)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString> 
(assert (not (= (ite var3319 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3943 String null-String) ; Statement: $r2 = null 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {unlessString/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3344=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var1998=r0, var3807=$r1, var3319=$z0, var3405=null_type, var3943=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3344, r0=var1998, $r1=var3807, $z0=var3319, null_type=var3405, $r2=var3943}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString>;	$r2 = null;	goto [?= return $r2];	return $r2
;block_num 3