(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1031 0)
(declare-sort var3004 0)
(declare-sort var3321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3321_getDefault/2145430630 () var3321)
(declare-const null-var1031 var1031)
(declare-const null-String String)
(declare-const var2000 var1031) ; Statement: r2 := @this: freemarker.core.Configurable 
(assert (not (= var2000 null-var1031)))
(declare-const var2330 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2330 null-String)))
(define-const var624 String "JVM default") ; Statement: $r1 = "JVM default" 
(assert true)
(define-const var2441 Bool (equalsIgnoreCase/-92311102 var624 var2330)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto r3 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (not (= (ite var2441 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3176 var3321 var3321_getDefault/2145430630) ; Statement: r3 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>() 
 ; Statement: goto [?= return r3] 
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3321_getDefault/2145430630=([], java.util.TimeZone)}
; {var1031=freemarker.core.Configurable, var2000=r2, var2330=r0, var3004=null_type, var624=$r1, var2441=$z0, var3321=java.util.TimeZone, var3176=r3}
; {freemarker.core.Configurable=var1031, r2=var2000, r0=var2330, null_type=var3004, $r1=var624, $z0=var2441, java.util.TimeZone=var3321, r3=var3176}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: freemarker.core.Configurable;	r0 := @parameter0: java.lang.String;	$r1 = "JVM default";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto r3 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	r3 = staticinvoke <java.util.TimeZone: java.util.TimeZone getDefault()>();	goto [?= return r3];	return r3
;block_num 3