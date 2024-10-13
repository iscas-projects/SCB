(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1722 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1722 null-String)))
(declare-const var2822 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var2822 null-ClassObject)))
(assert true)
(define-const var2512 Int (indexOf/-1037706067 var1722 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var1335 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert (not (not (= var2512 var1335)))) ; Negate: Cond: $i0 != $i2  
(assert true)
(define-const var591 String (getSimpleName/-390194377 var2822)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getSimpleName()>() 
 ; Statement: goto [?= $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2)] 
(assert true) ; Non Conditional
(assert true)
(define-const var783 Bool (= var1722 var591)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), getSimpleName/-390194377=([java.lang.Class], java.lang.String)}
; {var1722=r0, var615=null_type, var2822=r1, var2512=$i0, var1335=$i2, var591=$r2, var783=$z0}
; {r0=var1722, null_type=var615, r1=var2822, $i0=var2512, $i2=var1335, $r2=var591, $z0=var783}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getCanonicalName()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getSimpleName()>();	goto [?= $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2)];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 3