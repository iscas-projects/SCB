(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2759 0)
(declare-sort var2015 0)
(declare-sort var1898 0)
(declare-sort var3174 0)
(declare-sort var2436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun name/-1667261600 (var2759) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun mysqlxSession/-1667261600 (var2759) var2015)
(declare-fun getDataStoreMetadata/491426352 (var3174) var1898)
(declare-fun cast-from-var2015-to-var3174 (var2015) var3174)
(declare-fun var1898_schemaExists/-367892141 (var1898 String) Bool)
(declare-const null-var2759 var2759)
(declare-const var2436-NOT_EXISTS var2436)
(declare-const var1010 var2759) ; Statement: r1 := @this: com.mysql.cj.xdevapi.SchemaImpl 
(assert (not (= var1010 null-var2759)))
(define-const var2423 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2423 "select count(*) from information_schema.schemata where schema_name = \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'") 
(declare-const var2423!1 String)
(assert (= var2423!1 "select count(*) from information_schema.schemata where schema_name = \u0027"))
(define-const var1496 String (name/-1667261600 var1010)) ; Statement: $r2 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name> 
(assert true)
(define-const var990 String (replaceAll/1692887130 var1496 "\u0027" "\u005c\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var1496 "\u0027" "\u005c\u0027") (str.replace_re_all var1496 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var2423!1 var990)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2423!2 String)
(assert (= var2423!2 (str.++ var2423!1 var990)))
(assert true)
;(assert (append/672562846 var2423!2 "\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2423!3 String)
(assert (= var2423!3 (str.++ var2423!2 "\u0027")))
(define-const var2832 var2015 (mysqlxSession/-1667261600 var1010)) ; Statement: $r4 = r1.<com.mysql.cj.xdevapi.SchemaImpl: com.mysql.cj.MysqlxSession mysqlxSession> 
(assert true)
(define-const var2792 var1898 (getDataStoreMetadata/491426352 (cast-from-var2015-to-var3174 var2832))) ; Statement: $r6 = virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.DataStoreMetadata getDataStoreMetadata()>() 
(define-const var3748 String (name/-1667261600 var1010)) ; Statement: $r5 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name> 
(define-const var1696 Bool (var1898_schemaExists/-367892141 var2792 var3748)) ; Statement: $z0 = interfaceinvoke $r6.<com.mysql.cj.DataStoreMetadata: boolean schemaExists(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus NOT_EXISTS> 
(assert (= (ite var1696 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3133 var2436 var2436-NOT_EXISTS) ; Statement: $r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus NOT_EXISTS> 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), name/-1667261600=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), mysqlxSession/-1667261600=([com.mysql.cj.xdevapi.SchemaImpl], com.mysql.cj.MysqlxSession), getDataStoreMetadata/491426352=([com.mysql.cj.CoreSession], com.mysql.cj.DataStoreMetadata), cast-from-var2015-to-var3174=([com.mysql.cj.MysqlxSession], com.mysql.cj.CoreSession), var1898_schemaExists/-367892141=([com.mysql.cj.DataStoreMetadata, java.lang.String], boolean)}
; {var2759=com.mysql.cj.xdevapi.SchemaImpl, var1010=r1, var2423=$r0, var1496=$r2, var990=$r3, var2015=com.mysql.cj.MysqlxSession, var2832=$r4, var1898=com.mysql.cj.DataStoreMetadata, var3174=com.mysql.cj.CoreSession, var2792=$r6, var3748=$r5, var1696=$z0, var2436=com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus, var3133=$r7}
; {com.mysql.cj.xdevapi.SchemaImpl=var2759, r1=var1010, $r0=var2423, $r2=var1496, $r3=var990, com.mysql.cj.MysqlxSession=var2015, $r4=var2832, com.mysql.cj.DataStoreMetadata=var1898, com.mysql.cj.CoreSession=var3174, $r6=var2792, $r5=var3748, $z0=var1696, com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus=var2436, $r7=var3133}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: com.mysql.cj.xdevapi.SchemaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'");	$r2 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = r1.<com.mysql.cj.xdevapi.SchemaImpl: com.mysql.cj.MysqlxSession mysqlxSession>;	$r6 = virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.DataStoreMetadata getDataStoreMetadata()>();	$r5 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name>;	$z0 = interfaceinvoke $r6.<com.mysql.cj.DataStoreMetadata: boolean schemaExists(java.lang.String)>($r5);	if $z0 == 0 goto $r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus NOT_EXISTS>;	$r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus NOT_EXISTS>;	return $r7
;block_num 3