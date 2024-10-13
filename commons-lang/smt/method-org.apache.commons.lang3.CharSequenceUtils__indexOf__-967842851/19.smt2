(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var169 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var169 null-String)))
(declare-const var3726 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var3726 null-String)))
(declare-const var1714 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1714 null-Int)))
(define-const var2780 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.StringBuilder 
(assert (not (= (ite var2780 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1216 String (cast-from-String-to-String var169)) ; Statement: $r9 = (java.lang.String) r0 
(define-const var1579 String (String_toString/-1426662429 var3726)) ; Statement: $r8 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var380 Int (indexOf/1795197748 var1216 var1579 var1714)) ; Statement: $i4 = virtualinvoke $r9.<java.lang.String: int indexOf(java.lang.String,int)>($r8, i0) 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var169=r0, var3726=r1, var1714=i0, var2780=$z0, var1216=$r9, var1579=$r8, var380=$i4}
; {r0=var169, r1=var3726, i0=var1714, $z0=var2780, $r9=var1216, $r8=var1579, $i4=var380}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	i0 := @parameter2: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.StringBuilder;	$r9 = (java.lang.String) r0;	$r8 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$i4 = virtualinvoke $r9.<java.lang.String: int indexOf(java.lang.String,int)>($r8, i0);	return $i4
;block_num 2