(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var903 0)
(declare-sort var619 0)
(declare-sort var992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var619_isGMTish/-2018060208 (String) Bool)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var619-UTC var992)
(declare-const var3160 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3160 null-String)))
(define-const var1411 Bool (var619_isGMTish/-2018060208 var3160)) ; Statement: $z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (not (= (ite var1411 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1424 Bool (equalsIgnoreCase/-92311102 var3160 "UTC")) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTC") 
 ; Statement: if $z2 == 0 goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (not (= (ite var1424 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var535 var992 var619-UTC) ; Statement: $r5 = <freemarker.template.utility.DateUtil: java.util.TimeZone UTC> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var619_isGMTish/-2018060208=([java.lang.String], boolean), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3160=r0, var903=null_type, var619=freemarker.template.utility.DateUtil, var1411=$z0, var1424=$z2, var992=java.util.TimeZone, var535=$r5}
; {r0=var3160, null_type=var903, freemarker.template.utility.DateUtil=var619, $z0=var1411, $z2=var1424, java.util.TimeZone=var992, $r5=var535}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0);	if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	$z2 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTC");	if $z2 == 0 goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	$r5 = <freemarker.template.utility.DateUtil: java.util.TimeZone UTC>;	return $r5
;block_num 3