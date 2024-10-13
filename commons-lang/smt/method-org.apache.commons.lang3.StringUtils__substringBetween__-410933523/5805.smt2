(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1763 0)
(declare-sort var867 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var867-init () (Array Int var867))
(declare-fun cast-from-String-to-var867 (String) var867)
(declare-fun var3141_allNotNull/1601190162 ((Array Int var867)) Bool)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-__Array__Int__var867__ (Array Int var867))
(declare-const var3617 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3617 null-String)))
(declare-const var3307 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3307 null-String)))
(declare-const var3603 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3603 null-String)))
(define-const var754 (Array Int var867) arr-var867-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var754!1 (Array Int var867))
(assert (not (= var754!1 null-__Array__Int__var867__)))
(assert (= (select var754!1 0) (cast-from-String-to-var867 var3617))) ; Statement: $r0[0] = r1 
(declare-const var754!2 (Array Int var867))
(assert (not (= var754!2 null-__Array__Int__var867__)))
(assert (= (select var754!2 1) (cast-from-String-to-var867 var3307))) ; Statement: $r0[1] = r2 
(declare-const var754!3 (Array Int var867))
(assert (not (= var754!3 null-__Array__Int__var867__)))
(assert (= (select var754!3 2) (cast-from-String-to-var867 var3603))) ; Statement: $r0[2] = r3 
(define-const var1591 Bool (var3141_allNotNull/1601190162 var754!3)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean allNotNull(java.lang.Object[])>($r0) 
 ; Statement: if $z0 != 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2) 
(assert (not (= (ite var1591 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3809 Int (indexOf/-1209756239 var3617 var3307)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2) 
(define-const var1073 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 == $i7 goto return null 
(assert (not (= var3809 var1073))) ; Negate: Cond: i0 == $i7  
(assert true)
(define-const var2405 Int (length/-134980193 var3307)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var347 Int (+ var3809 var2405)) ; Statement: $i2 = i0 + $i1 
(assert true)
(define-const var2702 Int (indexOf/1795197748 var3617 var3603 var347)) ; Statement: i3 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>(r3, $i2) 
(define-const var267 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i3 == $i9 goto return null 
(assert (not (= var2702 var267))) ; Negate: Cond: i3 == $i9  
(assert true)
(define-const var1609 Int (length/-134980193 var3307)) ; Statement: $i4 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var479 Int (+ var3809 var1609)) ; Statement: $i5 = i0 + $i4 
(assert (and true (and (>= var479 0) (>= (str.len var3617) var2702) (>= var2702 var479))))
(define-const var1965 String (substring/-1240304868 var3617 var479 var2702)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var867-init=([], java.lang.Object[]), cast-from-String-to-var867=([java.lang.String], java.lang.Object), var3141_allNotNull/1601190162=([java.lang.Object[]], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3617=r1, var1763=null_type, var3307=r2, var3603=r3, var867=java.lang.Object, var754=$r0, var3141=org.apache.commons.lang3.ObjectUtils, var1591=$z0, var3809=i0, var1073=$i7, var2405=$i1, var347=$i2, var2702=i3, var267=$i9, var1609=$i4, var479=$i5, var1965=$r4}
; {r1=var3617, null_type=var1763, r2=var3307, r3=var3603, java.lang.Object=var867, $r0=var754, org.apache.commons.lang3.ObjectUtils=var3141, $z0=var1591, i0=var3809, $i7=var1073, $i1=var2405, $i2=var347, i3=var2702, $i9=var267, $i4=var1609, $i5=var479, $r4=var1965}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int indexOf(java.lang.String,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: int indexOf(java.lang.String,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r3;	$z0 = staticinvoke <org.apache.commons.lang3.ObjectUtils: boolean allNotNull(java.lang.Object[])>($r0);	if $z0 != 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2);	i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(r2);	$i7 = (int) -1;	if i0 == $i7 goto return null;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = i0 + $i1;	i3 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>(r3, $i2);	$i9 = (int) -1;	if i3 == $i9 goto return null;	$i4 = virtualinvoke r2.<java.lang.String: int length()>();	$i5 = i0 + $i4;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i3);	return $r4
;block_num 4