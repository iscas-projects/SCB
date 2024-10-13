(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2220 0)
(declare-sort var3352 0)
(declare-sort var2098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2220 var2220)
(declare-const null-String String)
(declare-const var2098-TRUE var2098)
(declare-const var836 var2220) ; Statement: r6 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var836 null-var2220)))
(declare-const var296 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var296 null-String)))
(define-const var730 String "yes") ; Statement: $r1 = "yes" 
(assert true)
(define-const var1623 Bool (equalsIgnoreCase/-92311102 var730 var296)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "no" 
(assert (not (= (ite var1623 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var676 var2098 var2098-TRUE) ; Statement: $r5 = <org.hibernate.boot.model.TruthValue: org.hibernate.boot.model.TruthValue TRUE> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2220=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var836=r6, var296=r0, var3352=null_type, var730=$r1, var1623=$z0, var2098=org.hibernate.boot.model.TruthValue, var676=$r5}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2220, r6=var836, r0=var296, null_type=var3352, $r1=var730, $z0=var1623, org.hibernate.boot.model.TruthValue=var2098, $r5=var676}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r6 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r0 := @parameter0: java.lang.String;	$r1 = "yes";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = "no";	$r5 = <org.hibernate.boot.model.TruthValue: org.hibernate.boot.model.TruthValue TRUE>;	return $r5
;block_num 2