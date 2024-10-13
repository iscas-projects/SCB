(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2756 0)
(declare-sort var1333 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1333_isGMTish/-2018060208 (String) Bool)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1211_getTimeZone/1775699487 (String) var1211)
(declare-const null-String String)
(declare-const var289 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var289 null-String)))
(define-const var2576 Bool (var1333_isGMTish/-2018060208 var289)) ; Statement: $z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (not (= (ite var2576 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2233 Bool (equalsIgnoreCase/-92311102 var289 "UTC")) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTC") 
 ; Statement: if $z2 == 0 goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (= (ite var2233 1 0) 0)) ; Cond: $z2 == 0 
(define-const var238 var1211 (var1211_getTimeZone/1775699487 var289)) ; Statement: $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1333_isGMTish/-2018060208=([java.lang.String], boolean), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1211_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone)}
; {var289=r0, var2756=null_type, var1333=freemarker.template.utility.DateUtil, var2576=$z0, var2233=$z2, var1211=java.util.TimeZone, var238=$r4}
; {r0=var289, null_type=var2756, freemarker.template.utility.DateUtil=var1333, $z0=var2576, $z2=var2233, java.util.TimeZone=var1211, $r4=var238}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0);	if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	$z2 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTC");	if $z2 == 0 goto $r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	$r4 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	return $r4
;block_num 3