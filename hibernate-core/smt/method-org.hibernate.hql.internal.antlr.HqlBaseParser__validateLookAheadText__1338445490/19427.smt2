(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1726 0)
(declare-sort var2796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun retrieveLookAheadText/-962952632 (var1726 Int) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1726 var1726)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1591 var1726) ; Statement: r0 := @this: org.hibernate.hql.internal.antlr.HqlBaseParser 
(assert (not (= var1591 null-var1726)))
(declare-const var1237 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1237 null-Int)))
(declare-const var2385 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2385 null-String)))
(assert true)
(define-const var694 String (retrieveLookAheadText/-962952632 var1591 var1237)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.antlr.HqlBaseParser: java.lang.String retrieveLookAheadText(int)>(i0) 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert (not (= var694 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var392 Bool (equalsIgnoreCase/-92311102 var694 var2385)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {retrieveLookAheadText/-962952632=([org.hibernate.hql.internal.antlr.HqlBaseParser, int], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1726=org.hibernate.hql.internal.antlr.HqlBaseParser, var1591=r0, var1237=i0, var2385=r2, var2796=null_type, var694=r1, var392=$z0}
; {org.hibernate.hql.internal.antlr.HqlBaseParser=var1726, r0=var1591, i0=var1237, r2=var2385, null_type=var2796, r1=var694, $z0=var392}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.antlr.HqlBaseParser;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.hql.internal.antlr.HqlBaseParser: java.lang.String retrieveLookAheadText(int)>(i0);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	$z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	return $z0
;block_num 3