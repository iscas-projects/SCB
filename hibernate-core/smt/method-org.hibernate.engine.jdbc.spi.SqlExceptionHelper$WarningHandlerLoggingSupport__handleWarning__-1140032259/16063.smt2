(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var393 0)
(declare-sort var2117 0)
(declare-sort var2337 0)
(declare-sort var2834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getErrorCode/-627040970 (var2337) Int)
(declare-fun cast-from-var2117-to-var2337 (var2117) var2337)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSQLState/-1621497016 (var2337) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var2834) String)
(declare-fun cast-from-var2117-to-var2834 (var2117) var2834)
(declare-fun logWarning/-1684911697 (var393 String String) void)
(declare-const null-var393 var393)
(declare-const null-var2117 var2117)
(declare-const var450 var393) ; Statement: r0 := @this: org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport 
(assert (not (= var450 null-var393)))
(declare-const var1902 var2117) ; Statement: r2 := @parameter0: java.sql.SQLWarning 
(assert (not (= var1902 null-var2117)))
(define-const var2816 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2816)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2816!1 String)
(assert (= var2816!1 ""))
(assert true)
(define-const var617 String (append/672562846 var2816!1 "SQL Warning Code: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL Warning Code: ") 
(declare-const var2816!2 String)
(assert (= var2816!2 (str.++ var2816!1 "SQL Warning Code: ")))
(assert true)
(define-const var1079 Int (getErrorCode/-627040970 (cast-from-var2117-to-var2337 var1902))) ; Statement: $i0 = virtualinvoke r2.<java.sql.SQLWarning: int getErrorCode()>() 
(assert true)
(define-const var1239 String (append/-1001720160 var617 var1079)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var617!1 String)
(assert (str.prefixof var617 var617!1))
(assert true)
(define-const var1692 String (append/672562846 var1239 ", SQLState: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", SQLState: ") 
(declare-const var1239!1 String)
(assert (= var1239!1 (str.++ var1239 ", SQLState: ")))
(assert true)
(define-const var233 String (getSQLState/-1621497016 (cast-from-var2117-to-var2337 var1902))) ; Statement: $r5 = virtualinvoke r2.<java.sql.SQLWarning: java.lang.String getSQLState()>() 
(assert true)
(define-const var3564 String (append/672562846 var1692 var233)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1692!1 String)
(assert (= var1692!1 (str.++ var1692 var233)))
(assert true)
(define-const var1407 String (toString/-2075883882 var3564)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var821 String (getMessage/849299655 (cast-from-var2117-to-var2834 var1902))) ; Statement: $r8 = virtualinvoke r2.<java.sql.SQLWarning: java.lang.String getMessage()>() 
(assert true)
;(assert (logWarning/-1684911697 var450 var1407 var821)) ; Statement: virtualinvoke r0.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport: void logWarning(java.lang.String,java.lang.String)>($r9, $r8) 

(declare-const var450!1 var393)
(declare-const var1407!1 String)
(declare-const var821!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getErrorCode/-627040970=([java.sql.SQLException], int), cast-from-var2117-to-var2337=([java.sql.SQLWarning], java.sql.SQLException), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSQLState/-1621497016=([java.sql.SQLException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2117-to-var2834=([java.sql.SQLWarning], java.lang.Throwable), logWarning/-1684911697=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport, java.lang.String, java.lang.String], void)}
; {var393=org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport, var450=r0, var2117=java.sql.SQLWarning, var1902=r2, var2816=$r1, var617=$r3, var2337=java.sql.SQLException, var1079=$i0, var1239=$r4, var1692=$r6, var233=$r5, var3564=$r7, var1407=$r9, var2834=java.lang.Throwable, var821=$r8}
; {org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport=var393, r0=var450, java.sql.SQLWarning=var2117, r2=var1902, $r1=var2816, $r3=var617, java.sql.SQLException=var2337, $i0=var1079, $r4=var1239, $r6=var1692, $r5=var233, $r7=var3564, $r9=var1407, java.lang.Throwable=var2834, $r8=var821}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport;	r2 := @parameter0: java.sql.SQLWarning;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL Warning Code: ");	$i0 = virtualinvoke r2.<java.sql.SQLWarning: int getErrorCode()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", SQLState: ");	$r5 = virtualinvoke r2.<java.sql.SQLWarning: java.lang.String getSQLState()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r2.<java.sql.SQLWarning: java.lang.String getMessage()>();	virtualinvoke r0.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper$WarningHandlerLoggingSupport: void logWarning(java.lang.String,java.lang.String)>($r9, $r8);	return
;block_num 1