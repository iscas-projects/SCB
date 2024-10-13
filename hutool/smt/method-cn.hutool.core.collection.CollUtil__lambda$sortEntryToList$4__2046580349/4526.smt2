(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2098 0)
(declare-sort var1982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2098_getValue/381491177 (var2098) var1982)
(declare-fun toString/-522406933 (var1982) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2098 var2098)
(declare-const var124 var2098) ; Statement: r0 := @parameter0: java.util.Map$Entry 
(assert (not (= var124 null-var2098)))
(declare-const var2426 var2098) ; Statement: r2 := @parameter1: java.util.Map$Entry 
(assert (not (= var2426 null-var2098)))
(define-const var3615 var1982 (var2098_getValue/381491177 var124)) ; Statement: r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var1703 var1982 (var2098_getValue/381491177 var2426)) ; Statement: r3 = interfaceinvoke r2.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var3518 Bool false) ; Statement: $z0 = r1 instanceof java.lang.Comparable 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var3518 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3382 String (toString/-522406933 var3615)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3032 String (toString/-522406933 var1703)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3243 Int (compareTo/1411385946 var3382 var3032)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3382 var3032)) (this<=other (str.<= var3382 var3032)) (compareRes (compareTo/1411385946 var3382 var3032))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2098_getValue/381491177=([java.util.Map$Entry], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2098=java.util.Map$Entry, var124=r0, var2426=r2, var1982=java.lang.Object, var3615=r1, var1703=r3, var3518=$z0, var3382=$r5, var3032=$r4, var3243=$i0}
; {java.util.Map$Entry=var2098, r0=var124, r2=var2426, java.lang.Object=var1982, r1=var3615, r3=var1703, $z0=var3518, $r5=var3382, $r4=var3032, $i0=var3243}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.util.Map$Entry;	r2 := @parameter1: java.util.Map$Entry;	r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getValue()>();	r3 = interfaceinvoke r2.<java.util.Map$Entry: java.lang.Object getValue()>();	$z0 = r1 instanceof java.lang.Comparable;	if $z0 == 0 goto $r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 2