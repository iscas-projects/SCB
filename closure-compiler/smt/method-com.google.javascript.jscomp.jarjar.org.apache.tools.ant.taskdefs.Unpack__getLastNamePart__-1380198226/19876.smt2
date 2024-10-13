(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1647 0)
(declare-sort var906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var906) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-var1647 var1647)
(declare-const null-var906 var906)
(declare-const var135 var1647) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack 
(assert (not (= var135 null-var1647)))
(declare-const var3430 var906) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3430 null-var906)))
(assert true)
(define-const var2959 String (getName/1314741259 var3430)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var1630 Int (lastIndexOf/-1292097097 var2959 47)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var1630 0))) ; Negate: Cond: i0 >= 0  
(define-const var962 String var2959) ; Statement: $r3 = r1 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var1647=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack, var135=r2, var906=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3430=r0, var2959=r1, var1630=i0, var962=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack=var1647, r2=var135, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var906, r0=var3430, r1=var2959, i0=var1630, $r3=var962}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47);	if i0 >= 0 goto $i1 = i0 + 1;	$r3 = r1;	goto [?= return $r3];	return $r3
;block_num 3