(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var1446 0)
(declare-sort var2496 0)
(declare-sort var3667 0)
(declare-sort var3484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun name/-1667261600 (var2338) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun mysqlxSession/-1667261600 (var2338) var1446)
(declare-fun getDataStoreMetadata/491426352 (var3667) var2496)
(declare-fun cast-from-var1446-to-var3667 (var1446) var3667)
(declare-fun var2496_schemaExists/-367892141 (var2496 String) Bool)
(declare-const null-var2338 var2338)
(declare-const var3484-EXISTS var3484)
(declare-const var3035 var2338) ; Statement: r1 := @this: com.mysql.cj.xdevapi.SchemaImpl 
(assert (not (= var3035 null-var2338)))
(define-const var1463 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1463 "select count(*) from information_schema.schemata where schema_name = \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'") 
(declare-const var1463!1 String)
(assert (= var1463!1 "select count(*) from information_schema.schemata where schema_name = \u0027"))
(define-const var3776 String (name/-1667261600 var3035)) ; Statement: $r2 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name> 
(assert true)
(define-const var345 String (replaceAll/1692887130 var3776 "\u0027" "\u005c\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var3776 "\u0027" "\u005c\u0027") (str.replace_re_all var3776 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var1463!1 var345)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1463!2 String)
(assert (= var1463!2 (str.++ var1463!1 var345)))
(assert true)
;(assert (append/672562846 var1463!2 "\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1463!3 String)
(assert (= var1463!3 (str.++ var1463!2 "\u0027")))
(define-const var3105 var1446 (mysqlxSession/-1667261600 var3035)) ; Statement: $r4 = r1.<com.mysql.cj.xdevapi.SchemaImpl: com.mysql.cj.MysqlxSession mysqlxSession> 
(assert true)
(define-const var1173 var2496 (getDataStoreMetadata/491426352 (cast-from-var1446-to-var3667 var3105))) ; Statement: $r6 = virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.DataStoreMetadata getDataStoreMetadata()>() 
(define-const var3838 String (name/-1667261600 var3035)) ; Statement: $r5 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name> 
(define-const var3803 Bool (var2496_schemaExists/-367892141 var1173 var3838)) ; Statement: $z0 = interfaceinvoke $r6.<com.mysql.cj.DataStoreMetadata: boolean schemaExists(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus NOT_EXISTS> 
(assert (not (= (ite var3803 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var496 var3484 var3484-EXISTS) ; Statement: $r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus EXISTS> 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), name/-1667261600=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), mysqlxSession/-1667261600=([com.mysql.cj.xdevapi.SchemaImpl], com.mysql.cj.MysqlxSession), getDataStoreMetadata/491426352=([com.mysql.cj.CoreSession], com.mysql.cj.DataStoreMetadata), cast-from-var1446-to-var3667=([com.mysql.cj.MysqlxSession], com.mysql.cj.CoreSession), var2496_schemaExists/-367892141=([com.mysql.cj.DataStoreMetadata, java.lang.String], boolean)}
; {var2338=com.mysql.cj.xdevapi.SchemaImpl, var3035=r1, var1463=$r0, var3776=$r2, var345=$r3, var1446=com.mysql.cj.MysqlxSession, var3105=$r4, var2496=com.mysql.cj.DataStoreMetadata, var3667=com.mysql.cj.CoreSession, var1173=$r6, var3838=$r5, var3803=$z0, var3484=com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus, var496=$r7}
; {com.mysql.cj.xdevapi.SchemaImpl=var2338, r1=var3035, $r0=var1463, $r2=var3776, $r3=var345, com.mysql.cj.MysqlxSession=var1446, $r4=var3105, com.mysql.cj.DataStoreMetadata=var2496, com.mysql.cj.CoreSession=var3667, $r6=var1173, $r5=var3838, $z0=var3803, com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus=var3484, $r7=var496}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: com.mysql.cj.xdevapi.SchemaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'");	$r2 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = r1.<com.mysql.cj.xdevapi.SchemaImpl: com.mysql.cj.MysqlxSession mysqlxSession>;	$r6 = virtualinvoke $r4.<com.mysql.cj.MysqlxSession: com.mysql.cj.DataStoreMetadata getDataStoreMetadata()>();	$r5 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name>;	$z0 = interfaceinvoke $r6.<com.mysql.cj.DataStoreMetadata: boolean schemaExists(java.lang.String)>($r5);	if $z0 == 0 goto $r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus NOT_EXISTS>;	$r7 = <com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus: com.mysql.cj.xdevapi.DatabaseObject$DbObjectStatus EXISTS>;	goto [?= return $r7];	return $r7
;block_num 3