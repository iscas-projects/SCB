(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1791 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1791 null-String)))
(declare-const var477 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var477 null-Int)))
(declare-const var784 Int) ; Statement: i10 := @parameter2: int 
(assert (not (= var784 null-Int)))
(define-const var3609 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= (ite var3609 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1910 String (cast-from-String-to-String var1791)) ; Statement: $r1 = (java.lang.String) r0 
(assert true)
(define-const var1729 Int (lastIndexOf/679652410 var1910 var477 var784)) ; Statement: $i9 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int,int)>(i1, i10) 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), lastIndexOf/679652410=([java.lang.String, int, int], int)}
; {var1791=r0, var477=i1, var784=i10, var3609=$z0, var1910=$r1, var1729=$i9}
; {r0=var1791, i1=var477, i10=var784, $z0=var3609, $r1=var1910, $i9=var1729}
;seq <java.lang.String: int lastIndexOf(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i10 := @parameter2: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = (java.lang.String) r0;	$i9 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int,int)>(i1, i10);	return $i9
;block_num 2