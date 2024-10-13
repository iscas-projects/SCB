(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun regionMatches/-1964120983 (String Bool Int String Int Int) Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var672 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var672 null-String)))
(declare-const var2395 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2395 null-Int)))
(declare-const var1529 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1529 null-String)))
(assert true)
(define-const var174 Int (length/-134980193 var1529)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3515 Bool (regionMatches/-1964120983 var672 (ite (= 1 1) true false) var2395 var1529 0 var174)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, i0, r1, 0, $i1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), regionMatches/-1964120983=([java.lang.String, boolean, int, java.lang.String, int, int], boolean)}
; {var672=r0, var2406=null_type, var2395=i0, var1529=r1, var174=$i1, var3515=$z0}
; {r0=var672, null_type=var2406, i0=var2395, r1=var1529, $i1=var174, $z0=var3515}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: java.lang.String;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, i0, r1, 0, $i1);	return $z0
;block_num 1