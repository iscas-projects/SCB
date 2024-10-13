(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3383 0)
(declare-sort var3707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun extraPhysicalTableTypes/1422200257 (var3383) (Array Int String))
(declare-fun getResultSetTableTypesPhysicalTableConstant/-781400980 (var3383) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3383 var3383)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var16 var3383) ; Statement: r0 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var16 null-var3383)))
(declare-const var2981 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2981 null-String)))
(define-const var672 (Array Int String) (extraPhysicalTableTypes/1422200257 var16)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: java.lang.String[] extraPhysicalTableTypes> 
 ; Statement: if $r1 != null goto $r3 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: java.lang.String getResultSetTableTypesPhysicalTableConstant()>() 
(assert (not (not (= var672 null-__Array__Int__String__)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var2063 String (getResultSetTableTypesPhysicalTableConstant/-781400980 var16)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: java.lang.String getResultSetTableTypesPhysicalTableConstant()>() 
(assert true)
(define-const var339 Bool (equalsIgnoreCase/-92311102 var2063 var2981)) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {extraPhysicalTableTypes/1422200257=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl], java.lang.String[]), getResultSetTableTypesPhysicalTableConstant/-781400980=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3383=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var16=r0, var2981=r2, var3707=null_type, var672=$r1, var2063=$r6, var339=$z2}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var3383, r0=var16, r2=var2981, null_type=var3707, $r1=var672, $r6=var2063, $z2=var339}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: java.lang.String[] extraPhysicalTableTypes>;	if $r1 != null goto $r3 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: java.lang.String getResultSetTableTypesPhysicalTableConstant()>();	$r6 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: java.lang.String getResultSetTableTypesPhysicalTableConstant()>();	$z2 = virtualinvoke $r6.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	return $z2
;block_num 2