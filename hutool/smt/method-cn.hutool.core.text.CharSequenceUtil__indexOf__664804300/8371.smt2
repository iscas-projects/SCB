(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1911 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1911 null-String)))
(declare-const var2492 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2492 null-Int)))
(declare-const var2355 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2355 null-Int)))
(define-const var2921 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $i6 = (int) -1 
(assert (not (= (ite var2921 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2515 String (cast-from-String-to-String var1911)) ; Statement: $r1 = (java.lang.String) r0 
(define-const var3314 Int (cast-from-Int-to-Int var2492)) ; Statement: $i4 = (int) c0 
(assert true)
(define-const var1749 Int (indexOf/1426977840 var2515 var3314 var2355)) ; Statement: $i3 = virtualinvoke $r1.<java.lang.String: int indexOf(int,int)>($i4, i1) 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int)}
; {var1911=r0, var2492=c0, var2355=i1, var2921=$z0, var2515=$r1, var3314=$i4, var1749=$i3}
; {r0=var1911, c0=var2492, i1=var2355, $z0=var2921, $r1=var2515, $i4=var3314, $i3=var1749}
;seq <java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	c0 := @parameter1: char;	i1 := @parameter2: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $i6 = (int) -1;	$r1 = (java.lang.String) r0;	$i4 = (int) c0;	$i3 = virtualinvoke $r1.<java.lang.String: int indexOf(int,int)>($i4, i1);	return $i3
;block_num 2