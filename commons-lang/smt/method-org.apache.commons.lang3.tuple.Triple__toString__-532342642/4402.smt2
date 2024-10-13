(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2220 0)
(declare-sort var2073 0)
(declare-sort var1016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1016-init () (Array Int var1016))
(declare-fun getLeft/-550654758 (var2220) var1016)
(declare-fun getMiddle/2097035148 (var2220) var1016)
(declare-fun getRight/1251355997 (var2220) var1016)
(declare-fun String_format/1339386452 (String (Array Int var1016)) String)
(declare-const null-var2220 var2220)
(declare-const null-String String)
(declare-const null-__Array__Int__var1016__ (Array Int var1016))
(declare-const var2749 var2220) ; Statement: r2 := @this: org.apache.commons.lang3.tuple.Triple 
(assert (not (= var2749 null-var2220)))
(declare-const var2685 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2685 null-String)))
(define-const var3583 (Array Int var1016) arr-var1016-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var3161 var1016 (getLeft/-550654758 var2749)) ; Statement: $r3 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Triple: java.lang.Object getLeft()>() 
(declare-const var3583!1 (Array Int var1016))
(assert (not (= var3583!1 null-__Array__Int__var1016__)))
(assert (= (select var3583!1 0) var3161)) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var3629 var1016 (getMiddle/2097035148 var2749)) ; Statement: $r4 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Triple: java.lang.Object getMiddle()>() 
(declare-const var3583!2 (Array Int var1016))
(assert (not (= var3583!2 null-__Array__Int__var1016__)))
(assert (= (select var3583!2 1) var3629)) ; Statement: $r1[1] = $r4 
(assert true)
(define-const var1699 var1016 (getRight/1251355997 var2749)) ; Statement: $r5 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Triple: java.lang.Object getRight()>() 
(declare-const var3583!3 (Array Int var1016))
(assert (not (= var3583!3 null-__Array__Int__var1016__)))
(assert (= (select var3583!3 2) var1699)) ; Statement: $r1[2] = $r5 
(define-const var3084 String (String_format/1339386452 var2685 var3583!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r1) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1016-init=([], java.lang.Object[]), getLeft/-550654758=([org.apache.commons.lang3.tuple.Triple], java.lang.Object), getMiddle/2097035148=([org.apache.commons.lang3.tuple.Triple], java.lang.Object), getRight/1251355997=([org.apache.commons.lang3.tuple.Triple], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2220=org.apache.commons.lang3.tuple.Triple, var2749=r2, var2685=r0, var2073=null_type, var1016=java.lang.Object, var3583=$r1, var3161=$r3, var3629=$r4, var1699=$r5, var3084=$r6}
; {org.apache.commons.lang3.tuple.Triple=var2220, r2=var2749, r0=var2685, null_type=var2073, java.lang.Object=var1016, $r1=var3583, $r3=var3161, $r4=var3629, $r5=var1699, $r6=var3084}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.apache.commons.lang3.tuple.Triple;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Triple: java.lang.Object getLeft()>();	$r1[0] = $r3;	$r4 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Triple: java.lang.Object getMiddle()>();	$r1[1] = $r4;	$r5 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Triple: java.lang.Object getRight()>();	$r1[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r1);	return $r6
;block_num 1