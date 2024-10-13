(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2865 0)
(declare-sort var1806 0)
(declare-sort var2670 0)
(declare-sort var1673 0)
(declare-sort var295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logExceptions/242805829 (var2865 var1806 String) void)
(declare-fun sqlExceptionConverter/-1926863522 (var2865) var1673)
(declare-fun var1673_convert/-1558445351 (var1673 var1806 String String) var295)
(declare-const null-var2865 var2865)
(declare-const null-var1806 var1806)
(declare-const null-String String)
(declare-const var2455 var2865) ; Statement: r0 := @this: org.hibernate.engine.jdbc.spi.SqlExceptionHelper 
(assert (not (= var2455 null-var2865)))
(declare-const var1538 var1806) ; Statement: r1 := @parameter0: java.sql.SQLException 
(assert (not (= var1538 null-var1806)))
(declare-const var1014 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1014 null-String)))
(declare-const var404 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var404 null-String)))
(define-const var1263 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1263)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1263!1 String)
(assert (= var1263!1 ""))
(assert true)
(define-const var2993 String (append/672562846 var1263!1 var1014)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1263!2 String)
(assert (= var1263!2 (str.++ var1263!1 var1014)))
(assert true)
(define-const var1645 String (append/672562846 var2993 " [")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var2993!1 String)
(assert (= var2993!1 (str.++ var2993 " [")))
(assert true)
(define-const var1736 String (append/672562846 var1645 var404)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1645!1 String)
(assert (= var1645!1 (str.++ var1645 var404)))
(assert true)
(define-const var3427 String (append/672562846 var1736 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1736!1 String)
(assert (= var1736!1 (str.++ var1736 "]")))
(assert true)
(define-const var2006 String (toString/-2075883882 var3427)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logExceptions/242805829 var2455 var1538 var2006)) ; Statement: virtualinvoke r0.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: void logExceptions(java.sql.SQLException,java.lang.String)>(r1, $r9) 

(declare-const var2455!1 var2865)
(declare-const var1538!1 var1806)
(declare-const var2006!1 String)
(define-const var2997 var1673 (sqlExceptionConverter/-1926863522 var2455!1)) ; Statement: $r10 = r0.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.exception.spi.SQLExceptionConverter sqlExceptionConverter> 
(define-const var1838 var295 (var1673_convert/-1558445351 var2997 var1538!1 var1014 var404)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.exception.spi.SQLExceptionConverter: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>(r1, r3, r5) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logExceptions/242805829=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String], void), sqlExceptionConverter/-1926863522=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper], org.hibernate.exception.spi.SQLExceptionConverter), var1673_convert/-1558445351=([org.hibernate.exception.spi.SQLExceptionConverter, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException)}
; {var2865=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2455=r0, var1806=java.sql.SQLException, var1538=r1, var1014=r3, var2670=null_type, var404=r5, var1263=$r2, var2993=$r4, var1645=$r6, var1736=$r7, var3427=$r8, var2006=$r9, var1673=org.hibernate.exception.spi.SQLExceptionConverter, var2997=$r10, var295=org.hibernate.JDBCException, var1838=$r11}
; {org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2865, r0=var2455, java.sql.SQLException=var1806, r1=var1538, r3=var1014, null_type=var2670, r5=var404, $r2=var1263, $r4=var2993, $r6=var1645, $r7=var1736, $r8=var3427, $r9=var2006, org.hibernate.exception.spi.SQLExceptionConverter=var1673, $r10=var2997, org.hibernate.JDBCException=var295, $r11=var1838}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.spi.SqlExceptionHelper;	r1 := @parameter0: java.sql.SQLException;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: void logExceptions(java.sql.SQLException,java.lang.String)>(r1, $r9);	$r10 = r0.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.exception.spi.SQLExceptionConverter sqlExceptionConverter>;	$r11 = interfaceinvoke $r10.<org.hibernate.exception.spi.SQLExceptionConverter: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>(r1, r3, r5);	return $r11
;block_num 1