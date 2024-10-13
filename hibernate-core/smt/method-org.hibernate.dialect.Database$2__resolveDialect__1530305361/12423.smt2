(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort var1801 0)
(declare-sort var3074 0)
(declare-sort var482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1801_getDatabaseName/407809897 (var1801) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var482_access$100/-842167358 (var482) var3074)
(declare-fun cast-from-var845-to-var482 (var845) var482)
(declare-const null-var845 var845)
(declare-const null-var1801 var1801)
(declare-const var838 var845) ; Statement: r3 := @this: org.hibernate.dialect.Database$2 
(assert (not (= var838 null-var845)))
(declare-const var674 var1801) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var674 null-var1801)))
(define-const var3515 String (var1801_getDatabaseName/407809897 var674)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3136 String "CUBRID") ; Statement: $r2 = "CUBRID" 
(assert true)
(define-const var3112 Bool (equalsIgnoreCase/-92311102 var3136 var3515)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var3112 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3573 var3074 (var482_access$100/-842167358 (cast-from-var845-to-var482 var838))) ; Statement: $r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1801_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var482_access$100/-842167358=([org.hibernate.dialect.Database], org.hibernate.dialect.Dialect), cast-from-var845-to-var482=([org.hibernate.dialect.Database$2], org.hibernate.dialect.Database)}
; {var845=org.hibernate.dialect.Database$2, var838=r3, var1801=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var674=r0, var3515=r1, var3136=$r2, var3112=$z0, var3074=org.hibernate.dialect.Dialect, var482=org.hibernate.dialect.Database, var3573=$r4}
; {org.hibernate.dialect.Database$2=var845, r3=var838, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var1801, r0=var674, r1=var3515, $r2=var3136, $z0=var3112, org.hibernate.dialect.Dialect=var3074, org.hibernate.dialect.Database=var482, $r4=var3573}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$2;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "CUBRID";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto return null;	$r4 = staticinvoke <org.hibernate.dialect.Database: org.hibernate.dialect.Dialect access$100(org.hibernate.dialect.Database)>(r3);	return $r4
;block_num 2