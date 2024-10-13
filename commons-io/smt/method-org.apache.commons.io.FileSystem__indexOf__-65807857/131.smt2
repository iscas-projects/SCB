(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2287 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2287 null-String)))
(declare-const var1977 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1977 null-Int)))
(declare-const var1070 Int) ; Statement: i10 := @parameter2: int 
(assert (not (= var1070 null-Int)))
(define-const var3347 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= (ite var3347 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1684 String (cast-from-String-to-String var2287)) ; Statement: $r1 = (java.lang.String) r0 
(assert true)
(define-const var2549 Int (indexOf/1426977840 var1684 var1977 var1070)) ; Statement: $i9 = virtualinvoke $r1.<java.lang.String: int indexOf(int,int)>(i1, i10) 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), indexOf/1426977840=([java.lang.String, int, int], int)}
; {var2287=r0, var1977=i1, var1070=i10, var3347=$z0, var1684=$r1, var2549=$i9}
; {r0=var2287, i1=var1977, i10=var1070, $z0=var3347, $r1=var1684, $i9=var2549}
;seq <java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i10 := @parameter2: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = (java.lang.String) r0;	$i9 = virtualinvoke $r1.<java.lang.String: int indexOf(int,int)>(i1, i10);	return $i9
;block_num 2