(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1376 0)
(declare-sort var1287 0)
(declare-sort var550 0)
(declare-sort var1952 0)
(declare-sort var2522 0)
(declare-sort var3947 0)
(declare-sort var850 0)
(declare-sort var289 0)
(declare-sort var3501 0)
(declare-sort var2766 0)
(declare-sort var767 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1952_bootstrap$/-1152363476 (var1376) var550)
(declare-fun session/1113605720 (var1376) var2522)
(declare-fun var2522_getMessageBuilder/-309714565 (var2522) var3947)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3947_buildSqlStatement/-1780795808 (var3947 String) var850)
(declare-fun var3501_toList/714215649 () var289)
(declare-fun var2522_query/1761462541 (var2522 var850 var767 var550 var289) var2766)
(declare-fun cast-from-var2766-to-var2952 (var2766) var2952)
(declare-fun var2952_get/-1216255739 (var2952 Int) var2766)
(declare-fun cast-from-var2766-to-Int (var2766) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-const null-var1376 var1376)
(declare-const null-String String)
(declare-const null-var767 var767)
(declare-const var168 var1376) ; Statement: r3 := @this: com.mysql.cj.DataStoreMetadataImpl 
(assert (not (= var168 null-var1376)))
(declare-const var2935 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2935 null-String)))
(define-const var739 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var739 "select count(*) from information_schema.schemata where schema_name = \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'") 
(declare-const var739!1 String)
(assert (= var739!1 "select count(*) from information_schema.schemata where schema_name = \u0027"))
(assert true)
(define-const var2021 String (replaceAll/1692887130 var2935 "\u0027" "\u005c\u0027")) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var2935 "\u0027" "\u005c\u0027") (str.replace_re_all var2935 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var739!1 var2021)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var739!2 String)
(assert (= var739!2 (str.++ var739!1 var2021)))
(assert true)
;(assert (append/672562846 var739!2 "\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var739!3 String)
(assert (= var739!3 (str.++ var739!2 "\u0027")))
(define-const var3310 var550 (var1952_bootstrap$/-1152363476 var168)) ; Statement: r4 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r3) 
(define-const var3984 var2522 (session/1113605720 var168)) ; Statement: $r6 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var3609 var2522 (session/1113605720 var168)) ; Statement: $r5 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var1596 var3947 (var2522_getMessageBuilder/-309714565 var3609)) ; Statement: $r8 = interfaceinvoke $r5.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>() 
(assert true)
(define-const var121 String (toString/-2075883882 var739!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2704 var850 (var3947_buildSqlStatement/-1780795808 var1596 var121)) ; Statement: $r10 = interfaceinvoke $r8.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r7) 
(define-const var2300 var289 var3501_toList/714215649) ; Statement: $r9 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var261 var2766 (var2522_query/1761462541 var3984 var2704 null-var767 var3310 var2300)) ; Statement: $r11 = interfaceinvoke $r6.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r10, null, r4, $r9) 
(define-const var1412 var2952 (cast-from-var2766-to-var2952 var261)) ; Statement: r12 = (java.util.List) $r11 
(define-const var780 var2766 (var2952_get/-1216255739 var1412 0)) ; Statement: $r13 = interfaceinvoke r12.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1144 Int (cast-from-var2766-to-Int var780)) ; Statement: $r14 = (java.lang.Long) $r13 
(assert true)
(define-const var3439 Int (longValue/1313863450 var1144)) ; Statement: $l0 = virtualinvoke $r14.<java.lang.Long: long longValue()>() 
(define-const var2908 Int (ite (> 1 var3439) 1 (ite (< 1 var3439) (- 1) 0))) ; Statement: $b1 = 1L cmp $l0 
 ; Statement: if $b1 != 0 goto $z0 = 0 
(assert (not (not (= var2908 0)))) ; Negate: Cond: $b1 != 0  
(define-const var3427 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1952_bootstrap$/-1152363476=([com.mysql.cj.DataStoreMetadataImpl], java.util.function.Function), session/1113605720=([com.mysql.cj.DataStoreMetadataImpl], com.mysql.cj.Session), var2522_getMessageBuilder/-309714565=([com.mysql.cj.Session], com.mysql.cj.MessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3947_buildSqlStatement/-1780795808=([com.mysql.cj.MessageBuilder, java.lang.String], com.mysql.cj.protocol.Message), var3501_toList/714215649=([], java.util.stream.Collector), var2522_query/1761462541=([com.mysql.cj.Session, com.mysql.cj.protocol.Message, java.util.function.Predicate, java.util.function.Function, java.util.stream.Collector], java.lang.Object), cast-from-var2766-to-var2952=([java.lang.Object], java.util.List), var2952_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2766-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long)}
; {var1376=com.mysql.cj.DataStoreMetadataImpl, var168=r3, var2935=r1, var1287=null_type, var739=$r0, var2021=$r2, var550=java.util.function.Function, var1952=com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1, var3310=r4, var2522=com.mysql.cj.Session, var3984=$r6, var3609=$r5, var3947=com.mysql.cj.MessageBuilder, var1596=$r8, var121=$r7, var850=com.mysql.cj.protocol.Message, var2704=$r10, var289=java.util.stream.Collector, var3501=java.util.stream.Collectors, var2300=$r9, var2766=java.lang.Object, var767=java.util.function.Predicate, var261=$r11, var2952=java.util.List, var1412=r12, var780=$r13, var1144=$r14, var3439=$l0, var2908=$b1, var3427=$z0}
; {com.mysql.cj.DataStoreMetadataImpl=var1376, r3=var168, r1=var2935, null_type=var1287, $r0=var739, $r2=var2021, java.util.function.Function=var550, com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1=var1952, r4=var3310, com.mysql.cj.Session=var2522, $r6=var3984, $r5=var3609, com.mysql.cj.MessageBuilder=var3947, $r8=var1596, $r7=var121, com.mysql.cj.protocol.Message=var850, $r10=var2704, java.util.stream.Collector=var289, java.util.stream.Collectors=var3501, $r9=var2300, java.lang.Object=var2766, java.util.function.Predicate=var767, $r11=var261, java.util.List=var2952, r12=var1412, $r13=var780, $r14=var1144, $l0=var3439, $b1=var2908, $z0=var3427}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.mysql.cj.DataStoreMetadataImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'");	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r4 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r3);	$r6 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r5 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r8 = interfaceinvoke $r5.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = interfaceinvoke $r8.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r7);	$r9 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r11 = interfaceinvoke $r6.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r10, null, r4, $r9);	r12 = (java.util.List) $r11;	$r13 = interfaceinvoke r12.<java.util.List: java.lang.Object get(int)>(0);	$r14 = (java.lang.Long) $r13;	$l0 = virtualinvoke $r14.<java.lang.Long: long longValue()>();	$b1 = 1L cmp $l0;	if $b1 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3