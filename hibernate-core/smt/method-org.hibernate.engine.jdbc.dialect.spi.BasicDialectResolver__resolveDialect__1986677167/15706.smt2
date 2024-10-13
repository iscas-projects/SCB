(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2369 0)
(declare-sort var2547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2547_getDatabaseName/407809897 (var2547) String)
(declare-fun var2547_getDatabaseMajorVersion/1312228497 (var2547) Int)
(declare-fun var2547_getDatabaseMinorVersion/389114765 (var2547) Int)
(declare-fun nameToMatch/2143832181 (var2369) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2369 var2369)
(declare-const null-var2547 var2547)
(declare-const var1791 var2369) ; Statement: r2 := @this: org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver 
(assert (not (= var1791 null-var2369)))
(declare-const var2542 var2547) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo 
(assert (not (= var2542 null-var2547)))
(define-const var1717 String (var2547_getDatabaseName/407809897 var2542)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>() 
(define-const var3058 Int (var2547_getDatabaseMajorVersion/1312228497 var2542)) ; Statement: i0 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMajorVersion()>() 
(define-const var1064 Int (var2547_getDatabaseMinorVersion/389114765 var2542)) ; Statement: i1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMinorVersion()>() 
(define-const var3445 String (nameToMatch/2143832181 var1791)) ; Statement: $r3 = r2.<org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver: java.lang.String nameToMatch> 
(assert true)
(define-const var462 Bool (equalsIgnoreCase/-92311102 var3445 var1717)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var462 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2547_getDatabaseName/407809897=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], java.lang.String), var2547_getDatabaseMajorVersion/1312228497=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], int), var2547_getDatabaseMinorVersion/389114765=([org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo], int), nameToMatch/2143832181=([org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2369=org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver, var1791=r2, var2547=org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo, var2542=r0, var1717=r1, var3058=i0, var1064=i1, var3445=$r3, var462=$z0}
; {org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver=var2369, r2=var1791, org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo=var2547, r0=var2542, r1=var1717, i0=var3058, i1=var1064, $r3=var3445, $z0=var462}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver;	r0 := @parameter0: org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo;	r1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: java.lang.String getDatabaseName()>();	i0 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMajorVersion()>();	i1 = interfaceinvoke r0.<org.hibernate.engine.jdbc.dialect.spi.DialectResolutionInfo: int getDatabaseMinorVersion()>();	$r3 = r2.<org.hibernate.engine.jdbc.dialect.spi.BasicDialectResolver: java.lang.String nameToMatch>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2