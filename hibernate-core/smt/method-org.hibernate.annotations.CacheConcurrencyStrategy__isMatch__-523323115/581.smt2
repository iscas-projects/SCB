(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort var3544 0)
(declare-sort var861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun accessType/2092820820 (var1415) var861)
(declare-fun getExternalName/1590936462 (var861) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1415 var1415)
(declare-const null-String String)
(declare-const null-var861 var861)
(declare-const var330 var1415) ; Statement: r0 := @this: org.hibernate.annotations.CacheConcurrencyStrategy 
(assert (not (= var330 null-var1415)))
(declare-const var3046 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3046 null-String)))
(define-const var795 var861 (accessType/2092820820 var330)) ; Statement: $r1 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType> 
 ; Statement: if $r1 == null goto $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>() 
(assert (not (= var795 null-var861))) ; Negate: Cond: $r1 == null  
(define-const var3811 var861 (accessType/2092820820 var330)) ; Statement: $r4 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType> 
(assert true)
(define-const var2764 String (getExternalName/1590936462 var3811)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>() 
(assert true)
(define-const var2606 Bool (equalsIgnoreCase/-92311102 var2764 var3046)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: if $z1 != 0 goto $z2 = 1 
(assert (not (= (ite var2606 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1580 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {accessType/2092820820=([org.hibernate.annotations.CacheConcurrencyStrategy], org.hibernate.cache.spi.access.AccessType), getExternalName/1590936462=([org.hibernate.cache.spi.access.AccessType], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1415=org.hibernate.annotations.CacheConcurrencyStrategy, var330=r0, var3046=r2, var3544=null_type, var861=org.hibernate.cache.spi.access.AccessType, var795=$r1, var3811=$r4, var2764=$r5, var2606=$z1, var1580=$z2}
; {org.hibernate.annotations.CacheConcurrencyStrategy=var1415, r0=var330, r2=var3046, null_type=var3544, org.hibernate.cache.spi.access.AccessType=var861, $r1=var795, $r4=var3811, $r5=var2764, $z1=var2606, $z2=var1580}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.annotations.CacheConcurrencyStrategy;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType>;	if $r1 == null goto $r3 = virtualinvoke r0.<org.hibernate.annotations.CacheConcurrencyStrategy: java.lang.String name()>();	$r4 = r0.<org.hibernate.annotations.CacheConcurrencyStrategy: org.hibernate.cache.spi.access.AccessType accessType>;	$r5 = virtualinvoke $r4.<org.hibernate.cache.spi.access.AccessType: java.lang.String getExternalName()>();	$z1 = virtualinvoke $r5.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	if $z1 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4