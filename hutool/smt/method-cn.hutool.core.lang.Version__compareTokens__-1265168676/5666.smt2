(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1088 0)
(declare-sort var206 0)
(declare-sort var2655 0)
(declare-sort var1934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var206_size/-959786421 (var206) Int)
(declare-fun var2655_min/-1112089438 (Int Int) Int)
(declare-fun var206_get/-1216255739 (var206 Int) var1934)
(declare-fun toString/-522406933 (var1934) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1088 var1088)
(declare-const null-var206 var206)
(declare-const var757 var1088) ; Statement: r5 := @this: cn.hutool.core.lang.Version 
(assert (not (= var757 null-var1088)))
(declare-const var1071 var206) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1071 null-var206)))
(declare-const var1065 var206) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var1065 null-var206)))
(define-const var2590 Int (var206_size/-959786421 var1071)) ; Statement: $i1 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var3301 Int (var206_size/-959786421 var1065)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
(define-const var2486 Int (var2655_min/-1112089438 var2590 var3301)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var38 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i2 goto $i4 = interfaceinvoke r0.<java.util.List: int size()>() 
(assert (not (>= var38 var2486))) ; Negate: Cond: i12 >= i2  
(define-const var3003 var1934 (var206_get/-1216255739 var1071 var38)) ; Statement: r6 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i12) 
(define-const var885 var1934 (var206_get/-1216255739 var1065 var38)) ; Statement: r7 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(i12) 
(define-const var169 Bool false) ; Statement: $z1 = r6 instanceof java.lang.Integer 
 ; Statement: if $z1 == 0 goto $z2 = r6 instanceof java.lang.String 
(assert (= (ite var169 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3702 Bool false) ; Statement: $z2 = r6 instanceof java.lang.String 
 ; Statement: if $z2 == 0 goto $r4 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var3702 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var652 String (toString/-522406933 var3003)) ; Statement: $r4 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2636 String (toString/-522406933 var885)) ; Statement: $r3 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1910 Int (compareTo/1411385946 var652 var2636)) ; Statement: $i10 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var652 var2636)) (this<=other (str.<= var652 var2636)) (compareRes (compareTo/1411385946 var652 var2636))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if $i10 != 0 goto return $i10 
(assert (not (= var1910 0))) ; Cond: $i10 != 0 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {var206_size/-959786421=([java.util.List], int), var2655_min/-1112089438=([int, int], int), var206_get/-1216255739=([java.util.List, int], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1088=cn.hutool.core.lang.Version, var757=r5, var206=java.util.List, var1071=r0, var1065=r1, var2590=$i1, var3301=$i0, var2655=java.lang.Math, var2486=i2, var38=i12, var1934=java.lang.Object, var3003=r6, var885=r7, var169=$z1, var3702=$z2, var652=$r4, var2636=$r3, var1910=$i10}
; {cn.hutool.core.lang.Version=var1088, r5=var757, java.util.List=var206, r0=var1071, r1=var1065, $i1=var2590, $i0=var3301, java.lang.Math=var2655, i2=var2486, i12=var38, java.lang.Object=var1934, r6=var3003, r7=var885, $z1=var169, $z2=var3702, $r4=var652, $r3=var2636, $i10=var1910}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r5 := @this: cn.hutool.core.lang.Version;	r0 := @parameter0: java.util.List;	r1 := @parameter1: java.util.List;	$i1 = interfaceinvoke r0.<java.util.List: int size()>();	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	i12 = 0;	if i12 >= i2 goto $i4 = interfaceinvoke r0.<java.util.List: int size()>();	r6 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i12);	r7 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(i12);	$z1 = r6 instanceof java.lang.Integer;	if $z1 == 0 goto $z2 = r6 instanceof java.lang.String;	$z2 = r6 instanceof java.lang.String;	if $z2 == 0 goto $r4 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>();	$i10 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if $i10 != 0 goto return $i10;	return $i10
;block_num 6