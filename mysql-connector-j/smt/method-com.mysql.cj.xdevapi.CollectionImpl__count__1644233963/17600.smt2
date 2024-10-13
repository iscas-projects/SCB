(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var103 0)
(declare-sort var267 0)
(declare-sort var3457 0)
(declare-sort var2729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mysqlxSession/670250589 (var456) var103)
(declare-fun getErrorCode/1340740181 (var267) Int)
(declare-fun var267-init () var267)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/670250589 (var456) String)
(declare-fun schema/670250589 (var456) var3457)
(declare-fun getName/-1690903219 (var3457) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/518226588 (var267 String var2729) void)
(declare-fun cast-from-var267-to-var2729 (var267) var2729)
(declare-const null-var456 var456)
(declare-const null-var267 var267)
(declare-const var2757 var456) ; Statement: r0 := @this: com.mysql.cj.xdevapi.CollectionImpl 
(assert (not (= var2757 null-var456)))
(define-const var488 var103 (mysqlxSession/670250589 var2757)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.MysqlxSession mysqlxSession> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var481 var267) ; Statement: $r6 := @caughtexception 
(assert (not (= var481 null-var267)))
(assert true)
(define-const var2451 Int (getErrorCode/1340740181 var481)) ; Statement: $i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>() 
 ; Statement: if $i1 != 1146 goto throw $r6 
(assert (not (not (= var2451 1146)))) ; Negate: Cond: $i1 != 1146  
(define-const var1946 var267 var267-init) ; Statement: $r7 = new com.mysql.cj.protocol.x.XProtocolError 
(define-const var1828 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1828)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1828!1 String)
(assert (= var1828!1 ""))
(assert true)
(define-const var2987 String (append/672562846 var1828!1 "Collection \u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection \'") 
(declare-const var1828!2 String)
(assert (= var1828!2 (str.++ var1828!1 "Collection \u0027")))
(define-const var1050 String (name/670250589 var2757)) ; Statement: $r9 = r0.<com.mysql.cj.xdevapi.CollectionImpl: java.lang.String name> 
(assert true)
(define-const var2517 String (append/672562846 var2987 var1050)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2987!1 String)
(assert (= var2987!1 (str.++ var2987 var1050)))
(assert true)
(define-const var1003 String (append/672562846 var2517 "\u0027 does not exist in schema \u0027")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist in schema \'") 
(declare-const var2517!1 String)
(assert (= var2517!1 (str.++ var2517 "\u0027 does not exist in schema \u0027")))
(define-const var3051 var3457 (schema/670250589 var2757)) ; Statement: $r12 = r0.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.xdevapi.SchemaImpl schema> 
(assert true)
(define-const var1051 String (getName/-1690903219 var3051)) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>() 
(assert true)
(define-const var2846 String (append/672562846 var1003 var1051)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1003!1 String)
(assert (= var1003!1 (str.++ var1003 var1051)))
(assert true)
(define-const var2291 String (append/672562846 var2846 "\u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2846!1 String)
(assert (= var2846!1 (str.++ var2846 "\u0027")))
(assert true)
(define-const var1854 String (toString/-2075883882 var2291)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/518226588 var1946 var1854 (cast-from-var267-to-var2729 var481))) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.x.XProtocolError: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r6) 

(declare-const var1946!1 var267)
(declare-const var1854!1 String)
(declare-const var481!1 var267)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {mysqlxSession/670250589=([com.mysql.cj.xdevapi.CollectionImpl], com.mysql.cj.MysqlxSession), getErrorCode/1340740181=([com.mysql.cj.protocol.x.XProtocolError], int), var267-init=([], com.mysql.cj.protocol.x.XProtocolError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/670250589=([com.mysql.cj.xdevapi.CollectionImpl], java.lang.String), schema/670250589=([com.mysql.cj.xdevapi.CollectionImpl], com.mysql.cj.xdevapi.SchemaImpl), getName/-1690903219=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/518226588=([com.mysql.cj.protocol.x.XProtocolError, java.lang.String, java.lang.Throwable], void), cast-from-var267-to-var2729=([com.mysql.cj.protocol.x.XProtocolError], java.lang.Throwable)}
; {var456=com.mysql.cj.xdevapi.CollectionImpl, var2757=r0, var103=com.mysql.cj.MysqlxSession, var488=$r1, var267=com.mysql.cj.protocol.x.XProtocolError, var481=$r6, var2451=$i1, var1946=$r7, var1828=$r8, var2987=$r10, var1050=$r9, var2517=$r11, var1003=$r14, var3457=com.mysql.cj.xdevapi.SchemaImpl, var3051=$r12, var1051=$r13, var2846=$r15, var2291=$r16, var1854=$r17, var2729=java.lang.Throwable}
; {com.mysql.cj.xdevapi.CollectionImpl=var456, r0=var2757, com.mysql.cj.MysqlxSession=var103, $r1=var488, com.mysql.cj.protocol.x.XProtocolError=var267, $r6=var481, $i1=var2451, $r7=var1946, $r8=var1828, $r10=var2987, $r9=var1050, $r11=var2517, $r14=var1003, com.mysql.cj.xdevapi.SchemaImpl=var3457, $r12=var3051, $r13=var1051, $r15=var2846, $r16=var2291, $r17=var1854, java.lang.Throwable=var2729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.CollectionImpl;	$r1 = r0.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.MysqlxSession mysqlxSession>;	$r6 := @caughtexception;	$i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>();	if $i1 != 1146 goto throw $r6;	$r7 = new com.mysql.cj.protocol.x.XProtocolError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection \'");	$r9 = r0.<com.mysql.cj.xdevapi.CollectionImpl: java.lang.String name>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist in schema \'");	$r12 = r0.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.xdevapi.SchemaImpl schema>;	$r13 = virtualinvoke $r12.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.mysql.cj.protocol.x.XProtocolError: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r6);	throw $r7
;block_num 3