(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1806) String)
(declare-fun getLength-Arr-var1806-1 ((Array Int var1806)) Int)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1806__ (Array Int var1806))
(declare-const var3778 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3778 null-Int)))
(declare-const var1839 (Array Int var1806)) ; Statement: r0 := @parameter1: java.lang.reflect.Method[] 
(assert (not (= var1839 null-__Array__Int__var1806__)))
(define-const var177 var1806 (select var1839 var3778)) ; Statement: $r1 = r0[i0] 
(assert true)
(define-const var261 String (getName/1227988463 var177)) ; Statement: r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var3367 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var102 Int (getLength-Arr-var1806-1 var1839)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var3367 var102))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (= var3367 var3778)) ; Cond: i2 == i0 
(define-const var3367!1 Int (+ var3367 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var102!1 Int (getLength-Arr-var1806-1 var1839)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (not (>= var3367!1 var102!1))) ; Negate: Cond: i2 >= $i1  
 ; Statement: if i2 == i0 goto i2 = i2 + 1 
(assert (not (= var3367!1 var3778))) ; Negate: Cond: i2 == i0  
(define-const var706 var1806 (select var1839 var3367!1)) ; Statement: $r3 = r0[i2] 
(assert true)
(define-const var3083 String (getName/1227988463 var706)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3706 Bool (= var261 var3083)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto i2 = i2 + 1 
(assert (= (ite var3706 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3367!2 Int (+ var3367!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= $i1 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var102!2 Int (getLength-Arr-var1806-1 var1839)) ; Statement: $i1 = lengthof r0 
 ; Statement: if i2 >= $i1 goto return 0 
(assert (>= var3367!2 var102!2)) ; Cond: i2 >= $i1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var1806-1=([java.lang.reflect.Method[]], int)}
; {var3778=i0, var1806=java.lang.reflect.Method, var1839=r0, var177=$r1, var261=r2, var3367=i2, var102=$i1, var706=$r3, var3083=$r4, var3706=$z0}
; {i0=var3778, java.lang.reflect.Method=var1806, r0=var1839, $r1=var177, r2=var261, i2=var3367, $i1=var102, $r3=var706, $r4=var3083, $z0=var3706}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.reflect.Method[];	$r1 = r0[i0];	r2 = virtualinvoke $r1.<java.lang.reflect.Method: java.lang.String getName()>();	i2 = 0;	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	if i2 == i0 goto i2 = i2 + 1;	$r3 = r0[i2];	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= $i1 = lengthof r0];	$i1 = lengthof r0;	if i2 >= $i1 goto return 0;	return 0
;block_num 10