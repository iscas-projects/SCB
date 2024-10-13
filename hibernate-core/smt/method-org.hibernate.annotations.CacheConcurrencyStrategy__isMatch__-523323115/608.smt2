(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2978 0)
(declare-sort var2528 0)
(declare-sort var3818 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun accessType/2092820820 (var2978) var3818)
(declare-fun name/1633728430 (var3162) String)
(declare-fun cast-from-var2978-to-var3162 (var2978) var3162)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2978 var2978)
(declare-const null-String String)
(declare-const null-var3818 var3818)
(declare-const var1593 var2978) ; Statement: r0 := @this: org.hibernate.annotations.CacheConcurrencyStrategy 
(assert (not (= var1593 null-var2978)))
(declare-const var2962 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2962 null-String)))
(define-const var2929 var3818 (accessType/2092820820 var1593)) ; Statement: $r1 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType> 
 ; Statement: if $r1 == null goto $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>() 
(assert (= var2929 null-var3818)) ; Cond: $r1 == null 
(assert true)
(define-const var2685 String (name/1633728430 (cast-from-var2978-to-var3162 var1593))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>() 
(assert true)
(define-const var1923 Bool (equalsIgnoreCase/-92311102 var2685 var2962)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (not (= (ite var1923 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var137 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {accessType/2092820820=([org.hibernate.annotations.CacheConcurrencyStrategy], org.hibernate.cache.spi.access.AccessType), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2978-to-var3162=([org.hibernate.annotations.CacheConcurrencyStrategy], java.lang.Enum), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2978=org.hibernate.annotations.CacheConcurrencyStrategy, var1593=r0, var2962=r2, var2528=null_type, var3818=org.hibernate.cache.spi.access.AccessType, var2929=$r1, var3162=java.lang.Enum, var2685=$r3, var1923=$z0, var137=$z2}
; {org.hibernate.annotations.CacheConcurrencyStrategy=var2978, r0=var1593, r2=var2962, null_type=var2528, org.hibernate.cache.spi.access.AccessType=var3818, $r1=var2929, java.lang.Enum=var3162, $r3=var2685, $z0=var1923, $z2=var137}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.annotations.CacheConcurrencyStrategy;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType>;	if $r1 == null goto $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>();	$r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4