(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var2236 0)
(declare-sort var2866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2236-init () (Array Int var2236))
(declare-fun cast-from-String-to-var2236 (String) var2236)
(declare-fun var2866_allNotNull/1601190162 ((Array Int var2236)) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-String String)
(declare-const null-__Array__Int__var2236__ (Array Int var2236))
(declare-const var3051 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3051 null-String)))
(declare-const var3144 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3144 null-String)))
(declare-const var1546 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1546 null-String)))
(define-const var2445 (Array Int var2236) arr-var2236-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var2445!1 (Array Int var2236))
(assert (not (= var2445!1 null-__Array__Int__var2236__)))
(assert (= (select var2445!1 0) (cast-from-String-to-var2236 var3051))) ; Statement: $r0[0] = r1 
(declare-const var2445!2 (Array Int var2236))
(assert (not (= var2445!2 null-__Array__Int__var2236__)))
(assert (= (select var2445!2 1) (cast-from-String-to-var2236 var3144))) ; Statement: $r0[1] = r2 
(declare-const var2445!3 (Array Int var2236))
(assert (not (= var2445!3 null-__Array__Int__var2236__)))
(assert (= (select var2445!3 2) (cast-from-String-to-var2236 var1546))) ; Statement: $r0[2] = r3 
(define-const var2434 Bool (var2866_allNotNull/1601190162 var2445!3)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean allNotNull(java.lang.Object[])>($r0) 
 ; Statement: if $z0 != 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2) 
(assert (not (= (ite var2434 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var58 Int (indexOf/-1209756239 var3051 var3144)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2) 
(define-const var3023 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 == $i7 goto return null 
(assert (not (= var58 var3023))) ; Negate: Cond: i0 == $i7  
(assert true)
(define-const var1737 Int (length/-134980193 var3144)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var162 Int (+ var58 var1737)) ; Statement: $i2 = i0 + $i1 
(assert true)
(define-const var3887 Int (indexOf/1795197748 var3051 var1546 var162)) ; Statement: i3 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>(r3, $i2) 
(define-const var2848 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i3 == $i9 goto return null 
(assert (= var3887 var2848)) ; Cond: i3 == $i9 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2236-init=([], java.lang.Object[]), cast-from-String-to-var2236=([java.lang.String], java.lang.Object), var2866_allNotNull/1601190162=([java.lang.Object[]], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var3051=r1, var2615=null_type, var3144=r2, var1546=r3, var2236=java.lang.Object, var2445=$r0, var2866=org.apache.commons.lang3.ObjectUtils, var2434=$z0, var58=i0, var3023=$i7, var1737=$i1, var162=$i2, var3887=i3, var2848=$i9}
; {r1=var3051, null_type=var2615, r2=var3144, r3=var1546, java.lang.Object=var2236, $r0=var2445, org.apache.commons.lang3.ObjectUtils=var2866, $z0=var2434, i0=var58, $i7=var3023, $i1=var1737, $i2=var162, i3=var3887, $i9=var2848}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean allNotNull(java.lang.Object[])>($r0);	if $z0 != 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2);	i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2);	$i7 = (int) -1;	if i0 == $i7 goto return null;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = i0 + $i1;	i3 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>(r3, $i2);	$i9 = (int) -1;	if i3 == $i9 goto return null;	return null
;block_num 4