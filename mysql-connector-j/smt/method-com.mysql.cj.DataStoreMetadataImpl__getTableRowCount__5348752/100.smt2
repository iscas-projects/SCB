(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var947 0)
(declare-sort var1094 0)
(declare-sort var2939 0)
(declare-sort var3990 0)
(declare-sort var3046 0)
(declare-sort var3290 0)
(declare-sort var2457 0)
(declare-sort var2586 0)
(declare-sort var3740 0)
(declare-sort var19 0)
(declare-sort var519 0)
(declare-sort var980 0)
(declare-sort var1033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2939_quoteIdentifier/-407364542 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3046_bootstrap$/-1924802660 (var947) var3990)
(declare-fun session/1113605720 (var947) var3290)
(declare-fun var3290_getMessageBuilder/-309714565 (var3290) var2457)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2457_buildSqlStatement/-1780795808 (var2457 String) var2586)
(declare-fun var19_toList/714215649 () var3740)
(declare-fun var3290_query/1761462541 (var3290 var2586 var980 var3990 var3740) var519)
(declare-fun cast-from-var519-to-var1033 (var519) var1033)
(declare-fun var1033_get/-1216255739 (var1033 Int) var519)
(declare-fun cast-from-var519-to-Int (var519) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-const null-var947 var947)
(declare-const null-String String)
(declare-const null-var980 var980)
(declare-const var2572 var947) ; Statement: r5 := @this: com.mysql.cj.DataStoreMetadataImpl 
(assert (not (= var2572 null-var947)))
(declare-const var382 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var382 null-String)))
(declare-const var2394 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2394 null-String)))
(define-const var237 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var237 "select count(*) from ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from ") 
(declare-const var237!1 String)
(assert (= var237!1 "select count(*) from "))
(define-const var2428 String (var2939_quoteIdentifier/-407364542 var382)) ; Statement: $r2 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>(r1) 
(assert true)
;(assert (append/672562846 var237!1 var2428)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var237!2 String)
(assert (= var237!2 (str.++ var237!1 var2428)))
(assert true)
;(assert (append/672562846 var237!2 ".")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var237!3 String)
(assert (= var237!3 (str.++ var237!2 ".")))
(define-const var3146 String (var2939_quoteIdentifier/-407364542 var2394)) ; Statement: $r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>(r3) 
(assert true)
;(assert (append/672562846 var237!3 var3146)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var237!4 String)
(assert (= var237!4 (str.++ var237!3 var3146)))
(define-const var1435 var3990 (var3046_bootstrap$/-1924802660 var2572)) ; Statement: r6 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_getTableRowCount_2__3: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r5) 
(define-const var334 var3290 (session/1113605720 var2572)) ; Statement: $r8 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var3779 var3290 (session/1113605720 var2572)) ; Statement: $r7 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var128 var2457 (var3290_getMessageBuilder/-309714565 var3779)) ; Statement: $r10 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>() 
(assert true)
(define-const var733 String (toString/-2075883882 var237!4)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1859 var2586 (var2457_buildSqlStatement/-1780795808 var128 var733)) ; Statement: $r12 = interfaceinvoke $r10.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r9) 
(define-const var2808 var3740 var19_toList/714215649) ; Statement: $r11 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var366 var519 (var3290_query/1761462541 var334 var1859 null-var980 var1435 var2808)) ; Statement: $r13 = interfaceinvoke $r8.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r12, null, r6, $r11) 
(define-const var2471 var1033 (cast-from-var519-to-var1033 var366)) ; Statement: r14 = (java.util.List) $r13 
(define-const var3849 var519 (var1033_get/-1216255739 var2471 0)) ; Statement: $r15 = interfaceinvoke r14.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var325 Int (cast-from-var519-to-Int var3849)) ; Statement: $r16 = (java.lang.Long) $r15 
(assert true)
(define-const var2502 Int (longValue/1313863450 var325)) ; Statement: $l0 = virtualinvoke $r16.<java.lang.Long: long longValue()>() 
 ; Statement: return $l0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2939_quoteIdentifier/-407364542=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3046_bootstrap$/-1924802660=([com.mysql.cj.DataStoreMetadataImpl], java.util.function.Function), session/1113605720=([com.mysql.cj.DataStoreMetadataImpl], com.mysql.cj.Session), var3290_getMessageBuilder/-309714565=([com.mysql.cj.Session], com.mysql.cj.MessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2457_buildSqlStatement/-1780795808=([com.mysql.cj.MessageBuilder, java.lang.String], com.mysql.cj.protocol.Message), var19_toList/714215649=([], java.util.stream.Collector), var3290_query/1761462541=([com.mysql.cj.Session, com.mysql.cj.protocol.Message, java.util.function.Predicate, java.util.function.Function, java.util.stream.Collector], java.lang.Object), cast-from-var519-to-var1033=([java.lang.Object], java.util.List), var1033_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var519-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long)}
; {var947=com.mysql.cj.DataStoreMetadataImpl, var2572=r5, var382=r1, var1094=null_type, var2394=r3, var237=$r0, var2939=com.mysql.cj.xdevapi.ExprUnparser, var2428=$r2, var3146=$r4, var3990=java.util.function.Function, var3046=com.mysql.cj.DataStoreMetadataImpl$lambda_getTableRowCount_2__3, var1435=r6, var3290=com.mysql.cj.Session, var334=$r8, var3779=$r7, var2457=com.mysql.cj.MessageBuilder, var128=$r10, var733=$r9, var2586=com.mysql.cj.protocol.Message, var1859=$r12, var3740=java.util.stream.Collector, var19=java.util.stream.Collectors, var2808=$r11, var519=java.lang.Object, var980=java.util.function.Predicate, var366=$r13, var1033=java.util.List, var2471=r14, var3849=$r15, var325=$r16, var2502=$l0}
; {com.mysql.cj.DataStoreMetadataImpl=var947, r5=var2572, r1=var382, null_type=var1094, r3=var2394, $r0=var237, com.mysql.cj.xdevapi.ExprUnparser=var2939, $r2=var2428, $r4=var3146, java.util.function.Function=var3990, com.mysql.cj.DataStoreMetadataImpl$lambda_getTableRowCount_2__3=var3046, r6=var1435, com.mysql.cj.Session=var3290, $r8=var334, $r7=var3779, com.mysql.cj.MessageBuilder=var2457, $r10=var128, $r9=var733, com.mysql.cj.protocol.Message=var2586, $r12=var1859, java.util.stream.Collector=var3740, java.util.stream.Collectors=var19, $r11=var2808, java.lang.Object=var519, java.util.function.Predicate=var980, $r13=var366, java.util.List=var1033, r14=var2471, $r15=var3849, $r16=var325, $l0=var2502}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.DataStoreMetadataImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from ");	$r2 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>(r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r6 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_getTableRowCount_2__3: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r5);	$r8 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r7 = r5.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r10 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>();	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = interfaceinvoke $r10.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r9);	$r11 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r13 = interfaceinvoke $r8.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r12, null, r6, $r11);	r14 = (java.util.List) $r13;	$r15 = interfaceinvoke r14.<java.util.List: java.lang.Object get(int)>(0);	$r16 = (java.lang.Long) $r15;	$l0 = virtualinvoke $r16.<java.lang.Long: long longValue()>();	return $l0
;block_num 1