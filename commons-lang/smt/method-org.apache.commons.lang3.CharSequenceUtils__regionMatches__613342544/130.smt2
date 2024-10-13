(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun regionMatches/-1964120983 (String Bool Int String Int Int) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var2773 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2773 null-String)))
(declare-const var3297 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3297 null-Bool)))
(declare-const var339 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var339 null-Int)))
(declare-const var3911 String) ; Statement: r1 := @parameter3: java.lang.CharSequence 
(assert (not (= var3911 null-String)))
(declare-const var3950 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var3950 null-Int)))
(declare-const var3854 Int) ; Statement: i2 := @parameter5: int 
(assert (not (= var3854 null-Int)))
(define-const var758 Bool true) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto i15 = i0 
(assert (not (= (ite var758 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1569 Bool true) ; Statement: $z2 = r1 instanceof java.lang.String 
 ; Statement: if $z2 == 0 goto i15 = i0 
(assert (not (= (ite var1569 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1744 String (cast-from-String-to-String var2773)) ; Statement: $r3 = (java.lang.String) r0 
(define-const var1844 String (cast-from-String-to-String var3911)) ; Statement: $r2 = (java.lang.String) r1 
(assert true)
(define-const var637 Bool (regionMatches/-1964120983 var1744 var3297 var339 var1844 var3950 var3854)) ; Statement: $z3 = virtualinvoke $r3.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(z1, i0, $r2, i1, i2) 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.CharSequence], java.lang.String), regionMatches/-1964120983=([java.lang.String, boolean, int, java.lang.String, int, int], boolean)}
; {var2773=r0, var3297=z1, var339=i0, var3911=r1, var3950=i1, var3854=i2, var758=$z0, var1569=$z2, var1744=$r3, var1844=$r2, var637=$z3}
; {r0=var2773, z1=var3297, i0=var339, r1=var3911, i1=var3950, i2=var3854, $z0=var758, $z2=var1569, $r3=var1744, $r2=var1844, $z3=var637}
;seq <java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>
;cnt {"<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	z1 := @parameter1: boolean;	i0 := @parameter2: int;	r1 := @parameter3: java.lang.CharSequence;	i1 := @parameter4: int;	i2 := @parameter5: int;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto i15 = i0;	$z2 = r1 instanceof java.lang.String;	if $z2 == 0 goto i15 = i0;	$r3 = (java.lang.String) r0;	$r2 = (java.lang.String) r1;	$z3 = virtualinvoke $r3.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(z1, i0, $r2, i1, i2);	return $z3
;block_num 3