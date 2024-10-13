(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var2777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/861999956 (var2777) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var2777-HBM var2777)
(declare-const var3755 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3755 null-String)))
(define-const var1007 var2777 var2777-HBM) ; Statement: $r0 = <org.hibernate.cfg.MetadataSourceType: org.hibernate.cfg.MetadataSourceType HBM> 
(define-const var881 String (name/861999956 var1007)) ; Statement: $r2 = $r0.<org.hibernate.cfg.MetadataSourceType: java.lang.String name> 
(assert true)
(define-const var2054 Bool (equalsIgnoreCase/-92311102 var881 var3755)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.cfg.MetadataSourceType: org.hibernate.cfg.MetadataSourceType CLASS> 
(assert (not (= (ite var2054 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3853 var2777 var2777-HBM) ; Statement: $r12 = <org.hibernate.cfg.MetadataSourceType: org.hibernate.cfg.MetadataSourceType HBM> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {name/861999956=([org.hibernate.cfg.MetadataSourceType], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3755=r1, var1327=null_type, var2777=org.hibernate.cfg.MetadataSourceType, var1007=$r0, var881=$r2, var2054=$z0, var3853=$r12}
; {r1=var3755, null_type=var1327, org.hibernate.cfg.MetadataSourceType=var2777, $r0=var1007, $r2=var881, $z0=var2054, $r12=var3853}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.cfg.MetadataSourceType: org.hibernate.cfg.MetadataSourceType HBM>;	$r2 = $r0.<org.hibernate.cfg.MetadataSourceType: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.cfg.MetadataSourceType: org.hibernate.cfg.MetadataSourceType CLASS>;	$r12 = <org.hibernate.cfg.MetadataSourceType: org.hibernate.cfg.MetadataSourceType HBM>;	return $r12
;block_num 2