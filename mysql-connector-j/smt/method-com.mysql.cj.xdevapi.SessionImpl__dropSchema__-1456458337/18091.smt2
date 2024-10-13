(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1199 0)
(declare-sort var3092 0)
(declare-sort var351 0)
(declare-sort var1647 0)
(declare-sort var3362 0)
(declare-sort var104 0)
(declare-sort var460 0)
(declare-sort var2413 0)
(declare-sort var1994 0)
(declare-sort var2137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var351_quoteIdentifier/1872327048 (String Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun session/862705079 (var1199) var1647)
(declare-fun xbuilder/862705079 (var1199) var3362)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buildSqlStatement/-1094960946 (var3362 String) var104)
(declare-fun var460-init () var460)
(declare-fun <init>/1955092055 (var460) void)
(declare-fun query/-1881335639 (var1647 var2413 var1994) var2137)
(declare-fun cast-from-var104-to-var2413 (var104) var2413)
(declare-fun cast-from-var460-to-var1994 (var460) var1994)
(declare-const null-var1199 var1199)
(declare-const null-String String)
(declare-const var2699 var1199) ; Statement: r3 := @this: com.mysql.cj.xdevapi.SessionImpl 
(assert (not (= var2699 null-var1199)))
(declare-const var1675 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1675 null-String)))
(define-const var2542 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2542 "DROP DATABASE ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("DROP DATABASE ") 
(declare-const var2542!1 String)
(assert (= var2542!1 "DROP DATABASE "))
(define-const var289 String (var351_quoteIdentifier/1872327048 var1675 (ite (= 1 1) true false))) ; Statement: $r2 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,boolean)>(r1, 1) 
(assert true)
;(assert (append/672562846 var2542!1 var289)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2542!2 String)
(assert (= var2542!2 (str.++ var2542!1 var289)))
(define-const var3321 var1647 (session/862705079 var2699)) ; Statement: $r4 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session> 
(define-const var695 var3362 (xbuilder/862705079 var2699)) ; Statement: $r5 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.protocol.x.XMessageBuilder xbuilder> 
(assert true)
(define-const var2044 String (toString/-2075883882 var2542!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2720 var104 (buildSqlStatement/-1094960946 var695 var2044)) ; Statement: $r8 = virtualinvoke $r5.<com.mysql.cj.protocol.x.XMessageBuilder: com.mysql.cj.protocol.x.XMessage buildSqlStatement(java.lang.String)>($r6) 
(define-const var3859 var460 var460-init) ; Statement: $r7 = new com.mysql.cj.xdevapi.UpdateResultBuilder 
(assert true)
;(assert (<init>/1955092055 var3859)) ; Statement: specialinvoke $r7.<com.mysql.cj.xdevapi.UpdateResultBuilder: void <init>()>() 

(declare-const var3859!1 var460)
(assert true)
;(assert (query/-1881335639 var3321 (cast-from-var104-to-var2413 var2720) (cast-from-var460-to-var1994 var3859!1))) ; Statement: virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.QueryResult query(com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ResultBuilder)>($r8, $r7) 

(declare-const var3321!1 var1647)
(declare-const var2720!1 var104)
(declare-const var3859!2 var460)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var351_quoteIdentifier/1872327048=([java.lang.String, boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), session/862705079=([com.mysql.cj.xdevapi.SessionImpl], com.mysql.cj.MysqlxSession), xbuilder/862705079=([com.mysql.cj.xdevapi.SessionImpl], com.mysql.cj.protocol.x.XMessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buildSqlStatement/-1094960946=([com.mysql.cj.protocol.x.XMessageBuilder, java.lang.String], com.mysql.cj.protocol.x.XMessage), var460-init=([], com.mysql.cj.xdevapi.UpdateResultBuilder), <init>/1955092055=([com.mysql.cj.xdevapi.UpdateResultBuilder], void), query/-1881335639=([com.mysql.cj.MysqlxSession, com.mysql.cj.protocol.Message, com.mysql.cj.protocol.ResultBuilder], com.mysql.cj.QueryResult), cast-from-var104-to-var2413=([com.mysql.cj.protocol.x.XMessage], com.mysql.cj.protocol.Message), cast-from-var460-to-var1994=([com.mysql.cj.xdevapi.UpdateResultBuilder], com.mysql.cj.protocol.ResultBuilder)}
; {var1199=com.mysql.cj.xdevapi.SessionImpl, var2699=r3, var1675=r1, var3092=null_type, var2542=$r0, var351=com.mysql.cj.util.StringUtils, var289=$r2, var1647=com.mysql.cj.MysqlxSession, var3321=$r4, var3362=com.mysql.cj.protocol.x.XMessageBuilder, var695=$r5, var2044=$r6, var104=com.mysql.cj.protocol.x.XMessage, var2720=$r8, var460=com.mysql.cj.xdevapi.UpdateResultBuilder, var3859=$r7, var2413=com.mysql.cj.protocol.Message, var1994=com.mysql.cj.protocol.ResultBuilder, var2137=com.mysql.cj.QueryResult}
; {com.mysql.cj.xdevapi.SessionImpl=var1199, r3=var2699, r1=var1675, null_type=var3092, $r0=var2542, com.mysql.cj.util.StringUtils=var351, $r2=var289, com.mysql.cj.MysqlxSession=var1647, $r4=var3321, com.mysql.cj.protocol.x.XMessageBuilder=var3362, $r5=var695, $r6=var2044, com.mysql.cj.protocol.x.XMessage=var104, $r8=var2720, com.mysql.cj.xdevapi.UpdateResultBuilder=var460, $r7=var3859, com.mysql.cj.protocol.Message=var2413, com.mysql.cj.protocol.ResultBuilder=var1994, com.mysql.cj.QueryResult=var2137}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.mysql.cj.xdevapi.SessionImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("DROP DATABASE ");	$r2 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,boolean)>(r1, 1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session>;	$r5 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.protocol.x.XMessageBuilder xbuilder>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r5.<com.mysql.cj.protocol.x.XMessageBuilder: com.mysql.cj.protocol.x.XMessage buildSqlStatement(java.lang.String)>($r6);	$r7 = new com.mysql.cj.xdevapi.UpdateResultBuilder;	specialinvoke $r7.<com.mysql.cj.xdevapi.UpdateResultBuilder: void <init>()>();	virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.QueryResult query(com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ResultBuilder)>($r8, $r7);	return
;block_num 1