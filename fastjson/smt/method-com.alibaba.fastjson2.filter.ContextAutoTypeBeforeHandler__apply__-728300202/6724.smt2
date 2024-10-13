(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort var20 0)
(declare-sort var2690 0)
(declare-sort var1122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2690_hashCode64/-647279352 (String) Int)
(declare-fun var1122_getMapping/632763874 (String) ClassObject)
(declare-const null-var2716 var2716)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const var1774 var2716) ; Statement: r1 := @this: com.alibaba.fastjson2.filter.ContextAutoTypeBeforeHandler 
(assert (not (= var1774 null-var2716)))
(declare-const var680 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var680 null-String)))
(declare-const var817 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var817 null-ClassObject)))
(declare-const var1700 Int) ; Statement: l1 := @parameter2: long 
(assert (not (= var1700 null-Int)))
(define-const var1393 String "O") ; Statement: $r0 = "O" 
(assert true)
(define-const var893 Bool (= var1393 var680)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r6) 
 ; Statement: if $z0 == 0 goto l8 = -3750763034362895579L 
(assert (= (ite var893 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3837 Int (- 3750763034362895579)) ; Statement: l8 = -3750763034362895579L 
(define-const var2167 Int 0) ; Statement: i9 = 0 
(assert true)
(define-const var1464 Int (length/-134980193 var680)) ; Statement: $i7 = virtualinvoke r6.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i7 goto l12 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r6) 
(assert (>= var2167 var1464)) ; Cond: i9 >= $i7 
(define-const var683 Int (var2690_hashCode64/-647279352 var680)) ; Statement: l12 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r6) 
(assert true)
(define-const var2683 Int (length/-134980193 var680)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r13 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getMapping(java.lang.String)>(r6) 
(assert (<= var2683 0)) ; Cond: $i0 <= 0 
(define-const var3254 ClassObject (var1122_getMapping/632763874 var680)) ; Statement: $r13 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getMapping(java.lang.String)>(r6) 
 ; Statement: if $r13 == null goto return null 
(assert (= var3254 null-ClassObject)) ; Cond: $r13 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2690_hashCode64/-647279352=([java.lang.String], long), var1122_getMapping/632763874=([java.lang.String], java.lang.Class)}
; {var2716=com.alibaba.fastjson2.filter.ContextAutoTypeBeforeHandler, var1774=r1, var680=r6, var20=null_type, var817=r2, var1700=l1, var1393=$r0, var893=$z0, var3837=l8, var2167=i9, var1464=$i7, var2690=com.alibaba.fastjson2.util.Fnv, var683=l12, var2683=$i0, var1122=com.alibaba.fastjson2.util.TypeUtils, var3254=$r13}
; {com.alibaba.fastjson2.filter.ContextAutoTypeBeforeHandler=var2716, r1=var1774, r6=var680, null_type=var20, r2=var817, l1=var1700, $r0=var1393, $z0=var893, l8=var3837, i9=var2167, $i7=var1464, com.alibaba.fastjson2.util.Fnv=var2690, l12=var683, $i0=var2683, com.alibaba.fastjson2.util.TypeUtils=var1122, $r13=var3254}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 2}
;stmts r1 := @this: com.alibaba.fastjson2.filter.ContextAutoTypeBeforeHandler;	r6 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	l1 := @parameter2: long;	$r0 = "O";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r6);	if $z0 == 0 goto l8 = -3750763034362895579L;	l8 = -3750763034362895579L;	i9 = 0;	$i7 = virtualinvoke r6.<java.lang.String: int length()>();	if i9 >= $i7 goto l12 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r6);	l12 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r6);	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 <= 0 goto $r13 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getMapping(java.lang.String)>(r6);	$r13 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getMapping(java.lang.String)>(r6);	if $r13 == null goto return null;	return null
;block_num 6