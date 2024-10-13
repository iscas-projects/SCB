(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort var3283 0)
(declare-sort var1922 0)
(declare-sort var1221 0)
(declare-sort var3494 0)
(declare-sort var1754 0)
(declare-sort var2463 0)
(declare-sort var823 0)
(declare-sort var3638 0)
(declare-sort var222 0)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1922_quoteIdentifier/1872327048 (String Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun session/862705079 (var2325) var1221)
(declare-fun xbuilder/862705079 (var2325) var3494)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buildSqlStatement/-1094960946 (var3494 String) var1754)
(declare-fun var2463-init () var2463)
(declare-fun <init>/1955092055 (var2463) void)
(declare-fun query/-1881335639 (var1221 var823 var3638) var1652)
(declare-fun cast-from-var1754-to-var823 (var1754) var823)
(declare-fun cast-from-var2463-to-var3638 (var2463) var3638)
(declare-fun getSchema/-1415134492 (var2325 String) var222)
(declare-const null-var2325 var2325)
(declare-const null-String String)
(declare-const var369 var2325) ; Statement: r3 := @this: com.mysql.cj.xdevapi.SessionImpl 
(assert (not (= var369 null-var2325)))
(declare-const var1542 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1542 null-String)))
(define-const var380 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var380 "CREATE DATABASE ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("CREATE DATABASE ") 
(declare-const var380!1 String)
(assert (= var380!1 "CREATE DATABASE "))
(define-const var830 String (var1922_quoteIdentifier/1872327048 var1542 (ite (= 1 1) true false))) ; Statement: $r2 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,boolean)>(r1, 1) 
(assert true)
;(assert (append/672562846 var380!1 var830)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var380!2 String)
(assert (= var380!2 (str.++ var380!1 var830)))
(define-const var2203 var1221 (session/862705079 var369)) ; Statement: $r4 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session> 
(define-const var1825 var3494 (xbuilder/862705079 var369)) ; Statement: $r5 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.protocol.x.XMessageBuilder xbuilder> 
(assert true)
(define-const var2939 String (toString/-2075883882 var380!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3827 var1754 (buildSqlStatement/-1094960946 var1825 var2939)) ; Statement: $r8 = virtualinvoke $r5.<com.mysql.cj.protocol.x.XMessageBuilder: com.mysql.cj.protocol.x.XMessage buildSqlStatement(java.lang.String)>($r6) 
(define-const var988 var2463 var2463-init) ; Statement: $r7 = new com.mysql.cj.xdevapi.UpdateResultBuilder 
(assert true)
;(assert (<init>/1955092055 var988)) ; Statement: specialinvoke $r7.<com.mysql.cj.xdevapi.UpdateResultBuilder: void <init>()>() 

(declare-const var988!1 var2463)
(assert true)
;(assert (query/-1881335639 var2203 (cast-from-var1754-to-var823 var3827) (cast-from-var2463-to-var3638 var988!1))) ; Statement: virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.QueryResult query(com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ResultBuilder)>($r8, $r7) 

(declare-const var2203!1 var1221)
(declare-const var3827!1 var1754)
(declare-const var988!2 var2463)
(assert true)
(define-const var321 var222 (getSchema/-1415134492 var369 var1542)) ; Statement: $r9 = virtualinvoke r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.xdevapi.Schema getSchema(java.lang.String)>(r1) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1922_quoteIdentifier/1872327048=([java.lang.String, boolean], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), session/862705079=([com.mysql.cj.xdevapi.SessionImpl], com.mysql.cj.MysqlxSession), xbuilder/862705079=([com.mysql.cj.xdevapi.SessionImpl], com.mysql.cj.protocol.x.XMessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buildSqlStatement/-1094960946=([com.mysql.cj.protocol.x.XMessageBuilder, java.lang.String], com.mysql.cj.protocol.x.XMessage), var2463-init=([], com.mysql.cj.xdevapi.UpdateResultBuilder), <init>/1955092055=([com.mysql.cj.xdevapi.UpdateResultBuilder], void), query/-1881335639=([com.mysql.cj.MysqlxSession, com.mysql.cj.protocol.Message, com.mysql.cj.protocol.ResultBuilder], com.mysql.cj.QueryResult), cast-from-var1754-to-var823=([com.mysql.cj.protocol.x.XMessage], com.mysql.cj.protocol.Message), cast-from-var2463-to-var3638=([com.mysql.cj.xdevapi.UpdateResultBuilder], com.mysql.cj.protocol.ResultBuilder), getSchema/-1415134492=([com.mysql.cj.xdevapi.SessionImpl, java.lang.String], com.mysql.cj.xdevapi.Schema)}
; {var2325=com.mysql.cj.xdevapi.SessionImpl, var369=r3, var1542=r1, var3283=null_type, var380=$r0, var1922=com.mysql.cj.util.StringUtils, var830=$r2, var1221=com.mysql.cj.MysqlxSession, var2203=$r4, var3494=com.mysql.cj.protocol.x.XMessageBuilder, var1825=$r5, var2939=$r6, var1754=com.mysql.cj.protocol.x.XMessage, var3827=$r8, var2463=com.mysql.cj.xdevapi.UpdateResultBuilder, var988=$r7, var823=com.mysql.cj.protocol.Message, var3638=com.mysql.cj.protocol.ResultBuilder, var222=com.mysql.cj.xdevapi.Schema, var321=$r9, var1652=com.mysql.cj.QueryResult}
; {com.mysql.cj.xdevapi.SessionImpl=var2325, r3=var369, r1=var1542, null_type=var3283, $r0=var380, com.mysql.cj.util.StringUtils=var1922, $r2=var830, com.mysql.cj.MysqlxSession=var1221, $r4=var2203, com.mysql.cj.protocol.x.XMessageBuilder=var3494, $r5=var1825, $r6=var2939, com.mysql.cj.protocol.x.XMessage=var1754, $r8=var3827, com.mysql.cj.xdevapi.UpdateResultBuilder=var2463, $r7=var988, com.mysql.cj.protocol.Message=var823, com.mysql.cj.protocol.ResultBuilder=var3638, com.mysql.cj.xdevapi.Schema=var222, $r9=var321, com.mysql.cj.QueryResult=var1652}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.mysql.cj.xdevapi.SessionImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("CREATE DATABASE ");	$r2 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String quoteIdentifier(java.lang.String,boolean)>(r1, 1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session>;	$r5 = r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.protocol.x.XMessageBuilder xbuilder>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r5.<com.mysql.cj.protocol.x.XMessageBuilder: com.mysql.cj.protocol.x.XMessage buildSqlStatement(java.lang.String)>($r6);	$r7 = new com.mysql.cj.xdevapi.UpdateResultBuilder;	specialinvoke $r7.<com.mysql.cj.xdevapi.UpdateResultBuilder: void <init>()>();	virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.QueryResult query(com.mysql.cj.protocol.Message,com.mysql.cj.protocol.ResultBuilder)>($r8, $r7);	$r9 = virtualinvoke r3.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.xdevapi.Schema getSchema(java.lang.String)>(r1);	return $r9
;block_num 1