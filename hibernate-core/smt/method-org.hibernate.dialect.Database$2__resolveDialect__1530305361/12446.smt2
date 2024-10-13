(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var895 0)
(declare-sort var2551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2551_getDatabaseName/407809897 (var2551) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var895 var895)
(declare-const null-var2551 var2551)
(declare-const var3530 var895) ; Statement: r3 := @this: org.hibernate.dialect.Database$2 
(assert (not (= var3530 null-var895)))
(declare-const var1250 var2551) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var1250 null-var2551)))
(define-const var1376 String (var2551_getDatabaseName/407809897 var1250)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var2866 String "CUBRID") ; Statement: $r2 = "CUBRID" 
(assert true)
(define-const var2087 Bool (equalsIgnoreCase/-92311102 var2866 var1376)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2087 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2551_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var895=org.hibernate.dialect.Database$2, var3530=r3, var2551=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var1250=r0, var1376=r1, var2866=$r2, var2087=$z0}
; {org.hibernate.dialect.Database$2=var895, r3=var3530, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2551, r0=var1250, r1=var1376, $r2=var2866, $z0=var2087}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: org.hibernate.dialect.Database$2;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	$r2 = "CUBRID";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2