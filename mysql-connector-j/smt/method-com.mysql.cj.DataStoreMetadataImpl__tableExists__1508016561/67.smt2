(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1647 0)
(declare-sort var925 0)
(declare-sort var830 0)
(declare-sort var3095 0)
(declare-sort var9 0)
(declare-sort var2035 0)
(declare-sort var1474 0)
(declare-sort var1164 0)
(declare-sort var3641 0)
(declare-sort var3615 0)
(declare-sort var2417 0)
(declare-sort var2116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3095_bootstrap$/-1861192601 (var1647) var830)
(declare-fun session/1113605720 (var1647) var9)
(declare-fun var9_getMessageBuilder/-309714565 (var9) var2035)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2035_buildSqlStatement/-1780795808 (var2035 String) var1474)
(declare-fun var3641_toList/714215649 () var1164)
(declare-fun var9_query/1761462541 (var9 var1474 var2417 var830 var1164) var3615)
(declare-fun cast-from-var3615-to-var2116 (var3615) var2116)
(declare-fun var2116_get/-1216255739 (var2116 Int) var3615)
(declare-fun cast-from-var3615-to-Int (var3615) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-const null-var1647 var1647)
(declare-const null-String String)
(declare-const null-var2417 var2417)
(declare-const var1857 var1647) ; Statement: r5 := @this: com.mysql.cj.DataStoreMetadataImpl 
(assert (not (= var1857 null-var1647)))
(declare-const var1953 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1953 null-String)))
(declare-const var856 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var856 null-String)))
(define-const var3086 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3086 "select count(*) from information_schema.tables where table_schema = \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.tables where table_schema = \'") 
(declare-const var3086!1 String)
(assert (= var3086!1 "select count(*) from information_schema.tables where table_schema = \u0027"))
(assert true)
(define-const var2312 String (replaceAll/1692887130 var1953 "\u0027" "\u005c\u0027")) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var1953 "\u0027" "\u005c\u0027") (str.replace_re_all var1953 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var3086!1 var2312)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3086!2 String)
(assert (= var3086!2 (str.++ var3086!1 var2312)))
(assert true)
;(assert (append/672562846 var3086!2 "\u0027 and table_name = \u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' and table_name = \'") 
(declare-const var3086!3 String)
(assert (= var3086!3 (str.++ var3086!2 "\u0027 and table_name = \u0027")))
(assert true)
(define-const var1730 String (replaceAll/1692887130 var856 "\u0027" "\u005c\u0027")) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var856 "\u0027" "\u005c\u0027") (str.replace_re_all var856 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var3086!3 var1730)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3086!4 String)
(assert (= var3086!4 (str.++ var3086!3 var1730)))
(assert true)
;(assert (append/672562846 var3086!4 "\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3086!5 String)
(assert (= var3086!5 (str.++ var3086!4 "\u0027")))
(define-const var518 var830 (var3095_bootstrap$/-1861192601 var1857)) ; Statement: r6 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r5) 
(define-const var30 var9 (session/1113605720 var1857)) ; Statement: $r8 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var3258 var9 (session/1113605720 var1857)) ; Statement: $r7 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var863 var2035 (var9_getMessageBuilder/-309714565 var3258)) ; Statement: $r10 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>() 
(assert true)
(define-const var1949 String (toString/-2075883882 var3086!5)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2451 var1474 (var2035_buildSqlStatement/-1780795808 var863 var1949)) ; Statement: $r12 = interfaceinvoke $r10.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r9) 
(define-const var1237 var1164 var3641_toList/714215649) ; Statement: $r11 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var3739 var3615 (var9_query/1761462541 var30 var2451 null-var2417 var518 var1237)) ; Statement: $r13 = interfaceinvoke $r8.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r12, null, r6, $r11) 
(define-const var279 var2116 (cast-from-var3615-to-var2116 var3739)) ; Statement: r14 = (java.util.List) $r13 
(define-const var2812 var3615 (var2116_get/-1216255739 var279 0)) ; Statement: $r15 = interfaceinvoke r14.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1230 Int (cast-from-var3615-to-Int var2812)) ; Statement: $r16 = (java.lang.Long) $r15 
(assert true)
(define-const var1061 Int (longValue/1313863450 var1230)) ; Statement: $l0 = virtualinvoke $r16.<java.lang.Long: long longValue()>() 
(define-const var2752 Int (ite (> 1 var1061) 1 (ite (< 1 var1061) (- 1) 0))) ; Statement: $b1 = 1L cmp $l0 
 ; Statement: if $b1 != 0 goto $z0 = 0 
(assert (not (not (= var2752 0)))) ; Negate: Cond: $b1 != 0  
(define-const var951 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3095_bootstrap$/-1861192601=([com.mysql.cj.DataStoreMetadataImpl], java.util.function.Function), session/1113605720=([com.mysql.cj.DataStoreMetadataImpl], com.mysql.cj.Session), var9_getMessageBuilder/-309714565=([com.mysql.cj.Session], com.mysql.cj.MessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2035_buildSqlStatement/-1780795808=([com.mysql.cj.MessageBuilder, java.lang.String], com.mysql.cj.protocol.Message), var3641_toList/714215649=([], java.util.stream.Collector), var9_query/1761462541=([com.mysql.cj.Session, com.mysql.cj.protocol.Message, java.util.function.Predicate, java.util.function.Function, java.util.stream.Collector], java.lang.Object), cast-from-var3615-to-var2116=([java.lang.Object], java.util.List), var2116_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3615-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long)}
; {var1647=com.mysql.cj.DataStoreMetadataImpl, var1857=r5, var1953=r1, var925=null_type, var856=r3, var3086=$r0, var2312=$r2, var1730=$r4, var830=java.util.function.Function, var3095=com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4, var518=r6, var9=com.mysql.cj.Session, var30=$r8, var3258=$r7, var2035=com.mysql.cj.MessageBuilder, var863=$r10, var1949=$r9, var1474=com.mysql.cj.protocol.Message, var2451=$r12, var1164=java.util.stream.Collector, var3641=java.util.stream.Collectors, var1237=$r11, var3615=java.lang.Object, var2417=java.util.function.Predicate, var3739=$r13, var2116=java.util.List, var279=r14, var2812=$r15, var1230=$r16, var1061=$l0, var2752=$b1, var951=$z0}
; {com.mysql.cj.DataStoreMetadataImpl=var1647, r5=var1857, r1=var1953, null_type=var925, r3=var856, $r0=var3086, $r2=var2312, $r4=var1730, java.util.function.Function=var830, com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4=var3095, r6=var518, com.mysql.cj.Session=var9, $r8=var30, $r7=var3258, com.mysql.cj.MessageBuilder=var2035, $r10=var863, $r9=var1949, com.mysql.cj.protocol.Message=var1474, $r12=var2451, java.util.stream.Collector=var1164, java.util.stream.Collectors=var3641, $r11=var1237, java.lang.Object=var3615, java.util.function.Predicate=var2417, $r13=var3739, java.util.List=var2116, r14=var279, $r15=var2812, $r16=var1230, $l0=var1061, $b1=var2752, $z0=var951}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.DataStoreMetadataImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.tables where table_schema = \'");	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' and table_name = \'");	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r6 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_tableExists_1__4: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r5);	$r8 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r7 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r10 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>();	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = interfaceinvoke $r10.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r9);	$r11 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r13 = interfaceinvoke $r8.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r12, null, r6, $r11);	r14 = (java.util.List) $r13;	$r15 = interfaceinvoke r14.<java.util.List: java.lang.Object get(int)>(0);	$r16 = (java.lang.Long) $r15;	$l0 = virtualinvoke $r16.<java.lang.Long: long longValue()>();	$b1 = 1L cmp $l0;	if $b1 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3