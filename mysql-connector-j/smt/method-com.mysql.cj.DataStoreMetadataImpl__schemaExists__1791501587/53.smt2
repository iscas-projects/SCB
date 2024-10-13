(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var662 0)
(declare-sort var3895 0)
(declare-sort var2707 0)
(declare-sort var1191 0)
(declare-sort var3392 0)
(declare-sort var2131 0)
(declare-sort var3677 0)
(declare-sort var1575 0)
(declare-sort var2586 0)
(declare-sort var335 0)
(declare-sort var1161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2707_bootstrap$/-1152363476 (var2224) var3895)
(declare-fun session/1113605720 (var2224) var1191)
(declare-fun var1191_getMessageBuilder/-309714565 (var1191) var3392)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3392_buildSqlStatement/-1780795808 (var3392 String) var2131)
(declare-fun var1575_toList/714215649 () var3677)
(declare-fun var1191_query/1761462541 (var1191 var2131 var335 var3895 var3677) var2586)
(declare-fun cast-from-var2586-to-var1161 (var2586) var1161)
(declare-fun var1161_get/-1216255739 (var1161 Int) var2586)
(declare-fun cast-from-var2586-to-Int (var2586) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-const null-var2224 var2224)
(declare-const null-String String)
(declare-const null-var335 var335)
(declare-const var1993 var2224) ; Statement: r3 := @this: com.mysql.cj.DataStoreMetadataImpl 
(assert (not (= var1993 null-var2224)))
(declare-const var3357 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3357 null-String)))
(define-const var565 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var565 "select count(*) from information_schema.schemata where schema_name = \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'") 
(declare-const var565!1 String)
(assert (= var565!1 "select count(*) from information_schema.schemata where schema_name = \u0027"))
(assert true)
(define-const var3101 String (replaceAll/1692887130 var3357 "\u0027" "\u005c\u0027")) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'") 
(assert (= (replaceAll/1692887130 var3357 "\u0027" "\u005c\u0027") (str.replace_re_all var3357 (str.to_re "\u{0027}") "\u005c\u0027")))
(assert true)
;(assert (append/672562846 var565!1 var3101)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var565!2 String)
(assert (= var565!2 (str.++ var565!1 var3101)))
(assert true)
;(assert (append/672562846 var565!2 "\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var565!3 String)
(assert (= var565!3 (str.++ var565!2 "\u0027")))
(define-const var1596 var3895 (var2707_bootstrap$/-1152363476 var1993)) ; Statement: r4 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r3) 
(define-const var1833 var1191 (session/1113605720 var1993)) ; Statement: $r6 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var2931 var1191 (session/1113605720 var1993)) ; Statement: $r5 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session> 
(define-const var2005 var3392 (var1191_getMessageBuilder/-309714565 var2931)) ; Statement: $r8 = interfaceinvoke $r5.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>() 
(assert true)
(define-const var1917 String (toString/-2075883882 var565!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2491 var2131 (var3392_buildSqlStatement/-1780795808 var2005 var1917)) ; Statement: $r10 = interfaceinvoke $r8.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r7) 
(define-const var937 var3677 var1575_toList/714215649) ; Statement: $r9 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var3727 var2586 (var1191_query/1761462541 var1833 var2491 null-var335 var1596 var937)) ; Statement: $r11 = interfaceinvoke $r6.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r10, null, r4, $r9) 
(define-const var175 var1161 (cast-from-var2586-to-var1161 var3727)) ; Statement: r12 = (java.util.List) $r11 
(define-const var2326 var2586 (var1161_get/-1216255739 var175 0)) ; Statement: $r13 = interfaceinvoke r12.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var681 Int (cast-from-var2586-to-Int var2326)) ; Statement: $r14 = (java.lang.Long) $r13 
(assert true)
(define-const var2637 Int (longValue/1313863450 var681)) ; Statement: $l0 = virtualinvoke $r14.<java.lang.Long: long longValue()>() 
(define-const var2192 Int (ite (> 1 var2637) 1 (ite (< 1 var2637) (- 1) 0))) ; Statement: $b1 = 1L cmp $l0 
 ; Statement: if $b1 != 0 goto $z0 = 0 
(assert (not (= var2192 0))) ; Cond: $b1 != 0 
(define-const var3772 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2707_bootstrap$/-1152363476=([com.mysql.cj.DataStoreMetadataImpl], java.util.function.Function), session/1113605720=([com.mysql.cj.DataStoreMetadataImpl], com.mysql.cj.Session), var1191_getMessageBuilder/-309714565=([com.mysql.cj.Session], com.mysql.cj.MessageBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3392_buildSqlStatement/-1780795808=([com.mysql.cj.MessageBuilder, java.lang.String], com.mysql.cj.protocol.Message), var1575_toList/714215649=([], java.util.stream.Collector), var1191_query/1761462541=([com.mysql.cj.Session, com.mysql.cj.protocol.Message, java.util.function.Predicate, java.util.function.Function, java.util.stream.Collector], java.lang.Object), cast-from-var2586-to-var1161=([java.lang.Object], java.util.List), var1161_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2586-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long)}
; {var2224=com.mysql.cj.DataStoreMetadataImpl, var1993=r3, var3357=r1, var662=null_type, var565=$r0, var3101=$r2, var3895=java.util.function.Function, var2707=com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1, var1596=r4, var1191=com.mysql.cj.Session, var1833=$r6, var2931=$r5, var3392=com.mysql.cj.MessageBuilder, var2005=$r8, var1917=$r7, var2131=com.mysql.cj.protocol.Message, var2491=$r10, var3677=java.util.stream.Collector, var1575=java.util.stream.Collectors, var937=$r9, var2586=java.lang.Object, var335=java.util.function.Predicate, var3727=$r11, var1161=java.util.List, var175=r12, var2326=$r13, var681=$r14, var2637=$l0, var2192=$b1, var3772=$z0}
; {com.mysql.cj.DataStoreMetadataImpl=var2224, r3=var1993, r1=var3357, null_type=var662, $r0=var565, $r2=var3101, java.util.function.Function=var3895, com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1=var2707, r4=var1596, com.mysql.cj.Session=var1191, $r6=var1833, $r5=var2931, com.mysql.cj.MessageBuilder=var3392, $r8=var2005, $r7=var1917, com.mysql.cj.protocol.Message=var2131, $r10=var2491, java.util.stream.Collector=var3677, java.util.stream.Collectors=var1575, $r9=var937, java.lang.Object=var2586, java.util.function.Predicate=var335, $r11=var3727, java.util.List=var1161, r12=var175, $r13=var2326, $r14=var681, $l0=var2637, $b1=var2192, $z0=var3772}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.mysql.cj.DataStoreMetadataImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("select count(*) from information_schema.schemata where schema_name = \'");	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\'", "\\\'");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r4 = staticinvoke <com.mysql.cj.DataStoreMetadataImpl$lambda_schemaExists_0__1: java.util.function.Function bootstrap$(com.mysql.cj.DataStoreMetadataImpl)>(r3);	$r6 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r5 = r3.<com.mysql.cj.DataStoreMetadataImpl: com.mysql.cj.Session session>;	$r8 = interfaceinvoke $r5.<com.mysql.cj.Session: com.mysql.cj.MessageBuilder getMessageBuilder()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = interfaceinvoke $r8.<com.mysql.cj.MessageBuilder: com.mysql.cj.protocol.Message buildSqlStatement(java.lang.String)>($r7);	$r9 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r11 = interfaceinvoke $r6.<com.mysql.cj.Session: java.lang.Object query(com.mysql.cj.protocol.Message,java.util.function.Predicate,java.util.function.Function,java.util.stream.Collector)>($r10, null, r4, $r9);	r12 = (java.util.List) $r11;	$r13 = interfaceinvoke r12.<java.util.List: java.lang.Object get(int)>(0);	$r14 = (java.lang.Long) $r13;	$l0 = virtualinvoke $r14.<java.lang.Long: long longValue()>();	$b1 = 1L cmp $l0;	if $b1 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3