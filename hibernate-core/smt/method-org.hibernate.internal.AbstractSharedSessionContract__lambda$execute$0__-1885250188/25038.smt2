(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var99 0)
(declare-sort var1346 0)
(declare-sort var486 0)
(declare-sort var3307 0)
(declare-sort var615 0)
(declare-sort var976 0)
(declare-sort var3109 0)
(declare-sort var2440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getExceptionConverter/1154594517 (var99) var976)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3109) String)
(declare-fun cast-from-var615-to-var3109 (var615) var3109)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var976_convert/-1030338461 (var976 var615 String) var2440)
(declare-fun cast-from-var2440-to-var3109 (var2440) var3109)
(declare-const null-var99 var99)
(declare-const null-var1346 var1346)
(declare-const null-var486 var486)
(declare-const null-var3307 var3307)
(declare-const null-var615 var615)
(declare-const var780 var99) ; Statement: r4 := @this: org.hibernate.internal.AbstractSharedSessionContract 
(assert (not (= var780 null-var99)))
(declare-const var75 var1346) ; Statement: r0 := @parameter0: org.hibernate.engine.jdbc.LobCreationContext$Callback 
(assert (not (= var75 null-var1346)))
(declare-const var3071 var486) ; Statement: r12 := @parameter1: org.hibernate.jdbc.WorkExecutor 
(assert (not (= var3071 null-var486)))
(declare-const var2201 var3307) ; Statement: r1 := @parameter2: java.sql.Connection 
(assert (not (= var2201 null-var3307)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1063 var615) ; Statement: $r3 := @caughtexception 
(assert (not (= var1063 null-var615)))
(assert true)
(define-const var97 var976 (getExceptionConverter/1154594517 var780)) ; Statement: $r10 = virtualinvoke r4.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.spi.ExceptionConverter getExceptionConverter()>() 
(define-const var2132 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2132)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2132!1 String)
(assert (= var2132!1 ""))
(assert true)
(define-const var2096 String (append/672562846 var2132!1 "Error creating contextual LOB : ")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating contextual LOB : ") 
(declare-const var2132!2 String)
(assert (= var2132!2 (str.++ var2132!1 "Error creating contextual LOB : ")))
(assert true)
(define-const var2260 String (getMessage/849299655 (cast-from-var615-to-var3109 var1063))) ; Statement: $r6 = virtualinvoke $r3.<java.sql.SQLException: java.lang.String getMessage()>() 
(assert true)
(define-const var3448 String (append/672562846 var2096 var2260)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2096!1 String)
(assert (= var2096!1 (str.++ var2096 var2260)))
(assert true)
(define-const var2027 String (toString/-2075883882 var3448)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3210 var2440 (var976_convert/-1030338461 var97 var1063 var2027)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.engine.spi.ExceptionConverter: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r3, $r9) 
(define-const var1555 var3109 (cast-from-var2440-to-var3109 var3210)) ; Statement: $r14 = (java.lang.Throwable) $r11 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getExceptionConverter/1154594517=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.ExceptionConverter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var615-to-var3109=([java.sql.SQLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var976_convert/-1030338461=([org.hibernate.engine.spi.ExceptionConverter, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var2440-to-var3109=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var99=org.hibernate.internal.AbstractSharedSessionContract, var780=r4, var1346=org.hibernate.engine.jdbc.LobCreationContext$Callback, var75=r0, var486=org.hibernate.jdbc.WorkExecutor, var3071=r12, var3307=java.sql.Connection, var2201=r1, var615=java.sql.SQLException, var1063=$r3, var976=org.hibernate.engine.spi.ExceptionConverter, var97=$r10, var2132=$r13, var2096=$r7, var3109=java.lang.Throwable, var2260=$r6, var3448=$r8, var2027=$r9, var2440=org.hibernate.JDBCException, var3210=$r11, var1555=$r14}
; {org.hibernate.internal.AbstractSharedSessionContract=var99, r4=var780, org.hibernate.engine.jdbc.LobCreationContext$Callback=var1346, r0=var75, org.hibernate.jdbc.WorkExecutor=var486, r12=var3071, java.sql.Connection=var3307, r1=var2201, java.sql.SQLException=var615, $r3=var1063, org.hibernate.engine.spi.ExceptionConverter=var976, $r10=var97, $r13=var2132, $r7=var2096, java.lang.Throwable=var3109, $r6=var2260, $r8=var3448, $r9=var2027, org.hibernate.JDBCException=var2440, $r11=var3210, $r14=var1555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.internal.AbstractSharedSessionContract;	r0 := @parameter0: org.hibernate.engine.jdbc.LobCreationContext$Callback;	r12 := @parameter1: org.hibernate.jdbc.WorkExecutor;	r1 := @parameter2: java.sql.Connection;	$r3 := @caughtexception;	$r10 = virtualinvoke r4.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.spi.ExceptionConverter getExceptionConverter()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating contextual LOB : ");	$r6 = virtualinvoke $r3.<java.sql.SQLException: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = interfaceinvoke $r10.<org.hibernate.engine.spi.ExceptionConverter: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r3, $r9);	$r14 = (java.lang.Throwable) $r11;	throw $r14
;block_num 2