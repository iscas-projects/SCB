(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2418 0)
(declare-sort var745 0)
(declare-sort var334 0)
(declare-sort var992 0)
(declare-sort var3478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mysqlxSession/2128262959 (var2418) var745)
(declare-fun getErrorCode/1340740181 (var334) Int)
(declare-fun var334-init () var334)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/2128262959 (var2418) String)
(declare-fun schema/2128262959 (var2418) var992)
(declare-fun getName/-1690903219 (var992) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/518226588 (var334 String var3478) void)
(declare-fun cast-from-var334-to-var3478 (var334) var3478)
(declare-const null-var2418 var2418)
(declare-const null-var334 var334)
(declare-const var1493 var2418) ; Statement: r0 := @this: com.mysql.cj.xdevapi.TableImpl 
(assert (not (= var1493 null-var2418)))
(define-const var208 var745 (mysqlxSession/2128262959 var1493)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.MysqlxSession mysqlxSession> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2009 var334) ; Statement: $r6 := @caughtexception 
(assert (not (= var2009 null-var334)))
(assert true)
(define-const var3927 Int (getErrorCode/1340740181 var2009)) ; Statement: $i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>() 
 ; Statement: if $i1 != 1146 goto throw $r6 
(assert (not (not (= var3927 1146)))) ; Negate: Cond: $i1 != 1146  
(define-const var2769 var334 var334-init) ; Statement: $r7 = new com.mysql.cj.protocol.x.XProtocolError 
(define-const var1516 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1516)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1516!1 String)
(assert (= var1516!1 ""))
(assert true)
(define-const var2790 String (append/672562846 var1516!1 "Table \u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table \'") 
(declare-const var1516!2 String)
(assert (= var1516!2 (str.++ var1516!1 "Table \u0027")))
(define-const var1720 String (name/2128262959 var1493)) ; Statement: $r9 = r0.<com.mysql.cj.xdevapi.TableImpl: java.lang.String name> 
(assert true)
(define-const var2567 String (append/672562846 var2790 var1720)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2790!1 String)
(assert (= var2790!1 (str.++ var2790 var1720)))
(assert true)
(define-const var149 String (append/672562846 var2567 "\u0027 does not exist in schema \u0027")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist in schema \'") 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 "\u0027 does not exist in schema \u0027")))
(define-const var854 var992 (schema/2128262959 var1493)) ; Statement: $r12 = r0.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.xdevapi.SchemaImpl schema> 
(assert true)
(define-const var3290 String (getName/-1690903219 var854)) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>() 
(assert true)
(define-const var3318 String (append/672562846 var149 var3290)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var149!1 String)
(assert (= var149!1 (str.++ var149 var3290)))
(assert true)
(define-const var1403 String (append/672562846 var3318 "\u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3318!1 String)
(assert (= var3318!1 (str.++ var3318 "\u0027")))
(assert true)
(define-const var1277 String (toString/-2075883882 var1403)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/518226588 var2769 var1277 (cast-from-var334-to-var3478 var2009))) ; Statement: specialinvoke $r7.<com.mysql.cj.protocol.x.XProtocolError: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r6) 

(declare-const var2769!1 var334)
(declare-const var1277!1 String)
(declare-const var2009!1 var334)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {mysqlxSession/2128262959=([com.mysql.cj.xdevapi.TableImpl], com.mysql.cj.MysqlxSession), getErrorCode/1340740181=([com.mysql.cj.protocol.x.XProtocolError], int), var334-init=([], com.mysql.cj.protocol.x.XProtocolError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/2128262959=([com.mysql.cj.xdevapi.TableImpl], java.lang.String), schema/2128262959=([com.mysql.cj.xdevapi.TableImpl], com.mysql.cj.xdevapi.SchemaImpl), getName/-1690903219=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/518226588=([com.mysql.cj.protocol.x.XProtocolError, java.lang.String, java.lang.Throwable], void), cast-from-var334-to-var3478=([com.mysql.cj.protocol.x.XProtocolError], java.lang.Throwable)}
; {var2418=com.mysql.cj.xdevapi.TableImpl, var1493=r0, var745=com.mysql.cj.MysqlxSession, var208=$r1, var334=com.mysql.cj.protocol.x.XProtocolError, var2009=$r6, var3927=$i1, var2769=$r7, var1516=$r8, var2790=$r10, var1720=$r9, var2567=$r11, var149=$r14, var992=com.mysql.cj.xdevapi.SchemaImpl, var854=$r12, var3290=$r13, var3318=$r15, var1403=$r16, var1277=$r17, var3478=java.lang.Throwable}
; {com.mysql.cj.xdevapi.TableImpl=var2418, r0=var1493, com.mysql.cj.MysqlxSession=var745, $r1=var208, com.mysql.cj.protocol.x.XProtocolError=var334, $r6=var2009, $i1=var3927, $r7=var2769, $r8=var1516, $r10=var2790, $r9=var1720, $r11=var2567, $r14=var149, com.mysql.cj.xdevapi.SchemaImpl=var992, $r12=var854, $r13=var3290, $r15=var3318, $r16=var1403, $r17=var1277, java.lang.Throwable=var3478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.TableImpl;	$r1 = r0.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.MysqlxSession mysqlxSession>;	$r6 := @caughtexception;	$i1 = virtualinvoke $r6.<com.mysql.cj.protocol.x.XProtocolError: int getErrorCode()>();	if $i1 != 1146 goto throw $r6;	$r7 = new com.mysql.cj.protocol.x.XProtocolError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Table \'");	$r9 = r0.<com.mysql.cj.xdevapi.TableImpl: java.lang.String name>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not exist in schema \'");	$r12 = r0.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.xdevapi.SchemaImpl schema>;	$r13 = virtualinvoke $r12.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.mysql.cj.protocol.x.XProtocolError: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r6);	throw $r7
;block_num 3