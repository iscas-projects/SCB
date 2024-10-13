(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun regionMatches/-1964120983 (String Bool Int String Int Int) Bool)
(declare-const null-String String)
(declare-const var658 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var658 null-String)))
(declare-const var2265 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2265 null-String)))
(assert true)
(define-const var791 Int (length/-134980193 var2265)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var714 Int (length/-134980193 var658)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var900 Int (- var714 var791)) ; Statement: $i2 = $i1 - i0 
(assert true)
(define-const var1552 Bool (regionMatches/-1964120983 var658 (ite (= 1 1) true false) var900 var2265 0 var791)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, $i2, r0, 0, i0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), regionMatches/-1964120983=([java.lang.String, boolean, int, java.lang.String, int, int], boolean)}
; {var658=r1, var2209=null_type, var2265=r0, var791=i0, var714=$i1, var900=$i2, var1552=$z0}
; {r1=var658, null_type=var2209, r0=var2265, i0=var791, $i1=var714, $i2=var900, $z0=var1552}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 - i0;	$z0 = virtualinvoke r1.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, $i2, r0, 0, i0);	return $z0
;block_num 1