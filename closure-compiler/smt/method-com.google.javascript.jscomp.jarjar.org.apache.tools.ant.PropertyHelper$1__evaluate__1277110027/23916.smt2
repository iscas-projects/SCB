(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var1802 0)
(declare-sort var402 0)
(declare-sort var874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2338 var2338)
(declare-const null-String String)
(declare-const null-var402 var402)
(declare-const null-var874 var874)
(declare-const var1444 var2338) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1 
(assert (not (= var1444 null-var2338)))
(declare-const var1254 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1254 null-String)))
(declare-const var2898 var402) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper 
(assert (not (= var2898 null-var402)))
(define-const var2445 var874 null-var874) ; Statement: r6 = null 
(assert true)
(define-const var1451 Bool (startsWith/-1785782452 var1254 "toString:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("toString:") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1451 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r6 != null goto $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert (not (not (= var2445 null-var874)))) ; Negate: Cond: r6 != null  
(define-const var2279 String null-String) ; Statement: $r7 = null 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2338=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1, var1444=r3, var1254=r0, var1802=null_type, var402=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, var2898=r1, var874=java.lang.Object, var2445=r6, var1451=$z0, var2279=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1=var2338, r3=var1444, r0=var1254, null_type=var1802, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper=var402, r1=var2898, java.lang.Object=var874, r6=var2445, $z0=var1451, $r7=var2279}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper;	r6 = null;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("toString:");	if $z0 == 0 goto (branch);	if r6 != null goto $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	$r7 = null;	goto [?= return $r7];	return $r7
;block_num 4