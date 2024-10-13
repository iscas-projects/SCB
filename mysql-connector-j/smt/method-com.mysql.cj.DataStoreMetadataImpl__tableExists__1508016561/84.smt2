(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1465 0)
(declare-sort var2373 0)
(declare-sort var2613 0)
(declare-sort var2397 0)
(declare-sort var1287 0)
(declare-sort var3965 0)
(declare-sort var3077 0)
(declare-sort var115 0)
(declare-sort var241 0)
(declare-sort var818 0)
(declare-sort var1479 0)
(declare-sort var1143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2397_bootstrap$/-1861192601 (var1465) var2613)
(declare-fun session/1113605720 (var1465) var1287)
(declare-fun var1287_getMessageBuilder/-309714565 (var1287) var3965)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3965_buildSqlStatement/-1780795808 (var3965 String) var3077)
(declare-fun var241_toList/714215649 () var115)
(declare-fun var1287_query/1761462541 (var1287 var3077 var1479 var2613 var115) var818)
(declare-fun cast-from-var818-to-var1143 (var818) var1143)
(declare-fun var1143_get/-1216255739 (var1143 Int) var818)
(declare-fun cast-from-var818-to-Int (var818) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-const null-var1465 var1465)
(declare-const null-String String)
(declare-const null-var1479 var1479)
(declare-const var2901 var1465) ; Statement: r5 := @this: com.mysql.cj.DataStoreMetadataImpl 
(assert (not (= var2901 null-var1465)))
(declare-const var3001 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3001 null-String)))
(declare-const var772 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var772 null-String)))
(define-const var1674 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1674 "select count(*) from information_schema.tables where table_schema = \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.tables where table_schema = \'") 
(declare-const var1674!1 String)
(assert (= var1674!1 "select count(*) from information_schema.tables where table_schema = \u0027"))
(assert true)
(define-const var3762 String (replaceAll/1692887130 var3001 "\u0027" "\u005c\u0027")) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var3001 "\u0027" "\u005c\u0027") (str.replace_re_all var3001 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var1674!1 var3762)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1674!2 String)
(assert (= var1674!2 (str.++ var1674!1 var3762)))
(assert true)
;(assert (append/672562846 var1674!2 "\u0027 and table_name = \u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' and table_name = \'") 
(declare-const var1674!3 String)
(assert (= var1674!3 (str.++ var1674!2 "\u0027 and table_name = \u0027")))
(assert true)
(define-const var2567 String (replaceAll/1692887130 var772 "\u0027" "\u005c\u0027")) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var772 "\u0027" "\u005c\u0027") (str.replace_re_all var772 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var1674!3 var2567)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1674!4 String)
(assert (= var1674!4 (str.++ var1674!3 var2567)))
(assert true)
;(assert (append/672562846 var1674!4 "\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1674!5 String)
(assert (= var1674!5 (str.++ var1674!4 "\u0027")))
(define-const var2303 var2613 (var2397_bootstrap$/-1861192601 var2901)) ; Statement: r6 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r5) 
(define-const var503 var1287 (session/1113605720 var2901)) ; Statement: $r8 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var3039 var1287 (session/1113605720 var2901)) ; Statement: $r7 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var460 var3965 (var1287_getMessageBuilder/-309714565 var3039)) ; Statement: $r10 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>() 
(assert true)
(define-const var3219 String (toString/-2075883882 var1674!5)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3434 var3077 (var3965_buildSqlStatement/-1780795808 var460 var3219)) ; Statement: $r12 = interfaceinvoke $r10.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r9) 
(define-const var1506 var115 var241_toList/714215649) ; Statement: $r11 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var995 var818 (var1287_query/1761462541 var503 var3434 null-var1479 var2303 var1506)) ; Statement: $r13 = interfaceinvoke $r8.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r12, null, r6, $r11) 
(define-const var516 var1143 (cast-from-var818-to-var1143 var995)) ; Statement: r14 = (java.util.List) $r13 
(define-const var877 var818 (var1143_get/-1216255739 var516 0)) ; Statement: $r15 = interfaceinvoke r14.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2386 Int (cast-from-var818-to-Int var877)) ; Statement: $r16 = (java.lang.Long) $r15 
(assert true)
(define-const var3450 Int (longValue/1313863450 var2386)) ; Statement: $l0 = virtualinvoke $r16.<java.lang.Long: long longValue()>() 
(define-const var1546 Int (ite (> 1 var3450) 1 (ite (< 1 var3450) (- 1) 0))) ; Statement: $b1 = 1L cmp $l0 
 ; Statement: if $b1 != 0 goto $z0 = 0 
(assert (not (= var1546 0))) ; Cond: $b1 != 0 
(define-const var3320 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2397_bootstrap$/-1861192601=([com.mysql.cj.DataStoreMetadataImpl], java.util.function.Function), session/1113605720=([com.mysql.cj.DataStoreMetadataImpl], com.mysql.cj.Session), var1287_getMessageBuilder/-309714565=([com.mysql.cj.Session], com.mysql.cj.MessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3965_buildSqlStatement/-1780795808=([com.mysql.cj.MessageBuilder, java.lang.String], com.mysql.cj.protocol.Message), var241_toList/714215649=([], java.util.stream.Collector), var1287_query/1761462541=([com.mysql.cj.Session, com.mysql.cj.protocol.Message, java.util.function.Predicate, java.util.function.Function, java.util.stream.Collector], java.lang.Object), cast-from-var818-to-var1143=([java.lang.Object], java.util.List), var1143_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var818-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long)}
; {var1465=com.mysql.cj.DataStoreMetadataImpl, var2901=r5, var3001=r1, var2373=null_type, var772=r3, var1674=$r0, var3762=$r2, var2567=$r4, var2613=java.util.function.Function, var2397=com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4, var2303=r6, var1287=com.mysql.cj.Session, var503=$r8, var3039=$r7, var3965=com.mysql.cj.MessageBuilder, var460=$r10, var3219=$r9, var3077=com.mysql.cj.protocol.Message, var3434=$r12, var115=java.util.stream.Collector, var241=java.util.stream.Collectors, var1506=$r11, var818=java.lang.Object, var1479=java.util.function.Predicate, var995=$r13, var1143=java.util.List, var516=r14, var877=$r15, var2386=$r16, var3450=$l0, var1546=$b1, var3320=$z0}
; {com.mysql.cj.DataStoreMetadataImpl=var1465, r5=var2901, r1=var3001, null_type=var2373, r3=var772, $r0=var1674, $r2=var3762, $r4=var2567, java.util.function.Function=var2613, com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4=var2397, r6=var2303, com.mysql.cj.Session=var1287, $r8=var503, $r7=var3039, com.mysql.cj.MessageBuilder=var3965, $r10=var460, $r9=var3219, com.mysql.cj.protocol.Message=var3077, $r12=var3434, java.util.stream.Collector=var115, java.util.stream.Collectors=var241, $r11=var1506, java.lang.Object=var818, java.util.function.Predicate=var1479, $r13=var995, java.util.List=var1143, r14=var516, $r15=var877, $r16=var2386, $l0=var3450, $b1=var1546, $z0=var3320}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.DataStoreMetadataImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.tables where table_schema = \'");	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' and table_name = \'");	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r6 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r5);	$r8 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r7 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r10 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>();	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = interfaceinvoke $r10.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r9);	$r11 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r13 = interfaceinvoke $r8.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r12, null, r6, $r11);	r14 = (java.util.List) $r13;	$r15 = interfaceinvoke r14.<java.util.List: java.lang.Object get(int)>(0);	$r16 = (java.lang.Long) $r15;	$l0 = virtualinvoke $r16.<java.lang.Long: long longValue()>();	$b1 = 1L cmp $l0;	if $b1 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3