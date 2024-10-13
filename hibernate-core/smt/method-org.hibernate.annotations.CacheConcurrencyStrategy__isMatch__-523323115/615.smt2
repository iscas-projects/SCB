(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2386 0)
(declare-sort var1151 0)
(declare-sort var3192 0)
(declare-sort var3742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun accessType/2092820820 (var2386) var3192)
(declare-fun name/1633728430 (var3742) String)
(declare-fun cast-from-var2386-to-var3742 (var2386) var3742)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2386 var2386)
(declare-const null-String String)
(declare-const null-var3192 var3192)
(declare-const var322 var2386) ; Statement: r0 := @this: org.hibernate.annotations.CacheConcurrencyStrategy 
(assert (not (= var322 null-var2386)))
(declare-const var3066 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3066 null-String)))
(define-const var1224 var3192 (accessType/2092820820 var322)) ; Statement: $r1 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType> 
 ; Statement: if $r1 == null goto $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>() 
(assert (= var1224 null-var3192)) ; Cond: $r1 == null 
(assert true)
(define-const var2283 String (name/1633728430 (cast-from-var2386-to-var3742 var322))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>() 
(assert true)
(define-const var2188 Bool (equalsIgnoreCase/-92311102 var2283 var3066)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2188 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3514 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {accessType/2092820820=([org.hibernate.annotations.CacheConcurrencyStrategy], org.hibernate.cache.spi.access.AccessType), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2386-to-var3742=([org.hibernate.annotations.CacheConcurrencyStrategy], java.lang.Enum), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2386=org.hibernate.annotations.CacheConcurrencyStrategy, var322=r0, var3066=r2, var1151=null_type, var3192=org.hibernate.cache.spi.access.AccessType, var1224=$r1, var3742=java.lang.Enum, var2283=$r3, var2188=$z0, var3514=$z2}
; {org.hibernate.annotations.CacheConcurrencyStrategy=var2386, r0=var322, r2=var3066, null_type=var1151, org.hibernate.cache.spi.access.AccessType=var3192, $r1=var1224, java.lang.Enum=var3742, $r3=var2283, $z0=var2188, $z2=var3514}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.annotations.CacheConcurrencyStrategy;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType>;	if $r1 == null goto $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>();	$r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 4