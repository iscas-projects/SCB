(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun insert/1427295636 (var3009 Int String) var3009)
(declare-const null-var3009 var3009)
(declare-const null-Int Int)
(declare-const var3324 var3009) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3324 null-var3009)))
(declare-const var387 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var387 null-Int)))
(declare-const var433 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var433 null-Int)))
(define-const var3448 String (String_valueOf/-107395227 var433)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l1) 
(assert true)
(define-const var139 var3009 (insert/1427295636 var3324 var387 var3448)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), insert/1427295636=([org.apache.commons.lang3.text.StrBuilder, int, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var3009=org.apache.commons.lang3.text.StrBuilder, var3324=r0, var387=i0, var433=l1, var3448=$r1, var139=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var3009, r0=var3324, i0=var387, l1=var433, $r1=var3448, $r2=var139}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	l1 := @parameter1: long;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l1);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1);	return $r2
;block_num 1