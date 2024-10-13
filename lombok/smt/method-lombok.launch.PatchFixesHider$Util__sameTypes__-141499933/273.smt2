(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2855 (Array Int ClassObject)) ; Statement: r0 := @parameter0: java.lang.Class[] 
(assert (not (= var2855 null-__Array__Int__ClassObject__)))
(declare-const var1133 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var1133 null-__Array__Int__String__)))
(define-const var3421 Int (getLength-Arr-ClassObject-1 var2855)) ; Statement: $i1 = lengthof r0 
(define-const var3695 Int (getLength-Arr-String-1 var1133)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i1 == $i0 goto i3 = 0 
(assert (= var3421 var3695)) ; Cond: $i1 == $i0 
(define-const var1183 Int 0) ; Statement: i3 = 0 
 ; Statement: goto [?= $i2 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var1181 Int (getLength-Arr-ClassObject-1 var2855)) ; Statement: $i2 = lengthof r0 
 ; Statement: if i3 < $i2 goto $r2 = r0[i3] 
(assert (< var1183 var1181)) ; Cond: i3 < $i2 
(define-const var1540 ClassObject (select var2855 var1183)) ; Statement: $r2 = r0[i3] 
(assert true)
(define-const var2538 String (getName/-1958580599 var1540)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var2984 String (select var1133 var1183)) ; Statement: $r3 = r1[i3] 
(assert true)
(define-const var849 Bool (= var2538 var2984)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto i3 = i3 + 1 
(assert (not (not (= (ite var849 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getLength-Arr-String-1=([java.lang.String[]], int), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2855=r0, var1133=r1, var3421=$i1, var3695=$i0, var1183=i3, var1181=$i2, var1540=$r2, var2538=$r4, var2984=$r3, var849=$z0}
; {r0=var2855, r1=var1133, $i1=var3421, $i0=var3695, i3=var1183, $i2=var1181, $r2=var1540, $r4=var2538, $r3=var2984, $z0=var849}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class[];	r1 := @parameter1: java.lang.String[];	$i1 = lengthof r0;	$i0 = lengthof r1;	if $i1 == $i0 goto i3 = 0;	i3 = 0;	goto [?= $i2 = lengthof r0];	$i2 = lengthof r0;	if i3 < $i2 goto $r2 = r0[i3];	$r2 = r0[i3];	$r4 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r3 = r1[i3];	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto i3 = i3 + 1;	return 0
;block_num 5