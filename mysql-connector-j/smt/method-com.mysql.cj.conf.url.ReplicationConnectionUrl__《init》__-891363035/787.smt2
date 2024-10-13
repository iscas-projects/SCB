(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var854 0)
(declare-sort var2826 0)
(declare-sort var140 0)
(declare-sort var3482 0)
(declare-sort var2927 0)
(declare-sort var3987 0)
(declare-sort var3971 0)
(declare-sort var1227 0)
(declare-sort var885 0)
(declare-sort var3126 0)
(declare-sort var3647 0)
(declare-sort var2874 0)
(declare-sort var546 0)
(declare-sort var46 0)
(declare-sort var3937 0)
(declare-sort var1773 0)
(declare-sort var2312 0)
(declare-sort var2203 0)
(declare-sort var1566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/396980478 (var3482) void)
(declare-fun cast-from-var854-to-var3482 (var854) var3482)
(declare-fun var2927-init () var2927)
(declare-fun <init>/-325640736 (var2927) void)
(declare-fun cast-from-var2927-to-var2826 (var2927) var2826)
(declare-fun sourceHosts/1667275808 (var854) var2826)
(declare-fun replicaHosts/1667275808 (var854) var2826)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getScheme/1149584850 (var3987) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3971_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun originalConnStr/-1210071563 (var3482) String)
(declare-fun getKeyName/-200443258 (var1227) String)
(declare-fun var140_containsKey/1715618542 (var140 var885) Bool)
(declare-fun cast-from-String-to-var885 (String) var885)
(declare-fun originalDatabase/-1210071563 (var3482) String)
(declare-fun type/-1210071563 (var3482) var3987)
(declare-fun properties/-1210071563 (var3482) var140)
(declare-fun var140_putAll/1656389889 (var140 var140) void)
(declare-fun injectPerTypeProperties/106079669 (var3482 var140) void)
(declare-fun setupPropertiesTransformer/-722295513 (var3482) void)
(declare-fun var3647_stream/-1288525013 (var3647) var3126)
(declare-fun cast-from-var2826-to-var3647 (var2826) var3647)
(declare-fun var546_bootstrap$/1963260975 (var854) var2874)
(declare-fun var3126_map/130902797 (var3126 var2874) var3126)
(declare-fun getClass/1258963082 (var885) ClassObject)
(declare-fun cast-from-var2826-to-var885 (var2826) var885)
(declare-fun var3937_bootstrap$/-896066386 (var2826) var46)
(declare-fun var3126_peek/-1564289730 (var3126 var46) var3126)
(declare-fun hosts/-1210071563 (var3482) var2826)
(declare-fun var1773_bootstrap$/13715350 (var2826) var46)
(declare-fun var3126_forEach/1037804367 (var3126 var46) void)
(declare-fun var2312_bootstrap$/1931501583 (var854) var2874)
(declare-fun var2203_bootstrap$/-1483174669 (var2826) var46)
(declare-fun var1566_bootstrap$/-1049445583 (var2826) var46)
(declare-const null-var854 var854)
(declare-const null-var2826 var2826)
(declare-const null-var140 var140)
(declare-const var3987-REPLICATION_CONNECTION var3987)
(declare-const var1227-DBNAME var1227)
(declare-const var2091 var854) ; Statement: r0 := @this: com.mysql.cj.conf.url.ReplicationConnectionUrl 
(assert (not (= var2091 null-var854)))
(declare-const var1991 var2826) ; Statement: r17 := @parameter0: java.util.List 
(assert (not (= var1991 null-var2826)))
(declare-const var1164 var2826) ; Statement: r26 := @parameter1: java.util.List 
(assert (not (= var1164 null-var2826)))
(declare-const var2464 var140) ; Statement: r11 := @parameter2: java.util.Map 
(assert (not (= var2464 null-var140)))
(assert true)
;(assert (<init>/396980478 (cast-from-var854-to-var3482 var2091))) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>() 

(declare-const var2091!1 var854)
(define-const var170 var2927 var2927-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var170)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var170!1 var2927)
(declare-const var2091!2 var854)
(assert (not (= var2091!2 null-var854)))
(assert (= (sourceHosts/1667275808 var2091!2) (cast-from-var2927-to-var2826 var170!1))) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts> = $r1 
(define-const var3247 var2927 var2927-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3247)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var3247!1 var2927)
(declare-const var2091!3 var854)
(assert (not (= var2091!3 null-var854)))
(assert (= (replicaHosts/1667275808 var2091!3) (cast-from-var2927-to-var2826 var3247!1))) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts> = $r2 
(define-const var57 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var57)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var57!1 String)
(assert (= var57!1 ""))
(define-const var1519 var3987 var3987-REPLICATION_CONNECTION) ; Statement: $r4 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION> 
(assert true)
(define-const var1855 String (getScheme/1149584850 var1519)) ; Statement: $r5 = virtualinvoke $r4.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>() 
(assert true)
(define-const var936 String (append/672562846 var57!1 var1855)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var57!2 String)
(assert (= var57!2 (str.++ var57!1 var1855)))
(assert true)
(define-const var795 String (append/672562846 var936 "//**internally_generated**")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**") 
(declare-const var936!1 String)
(assert (= var936!1 (str.++ var936 "//**internally_generated**")))
(define-const var1470 Int var3971_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var2358 String (append/-901862667 var795 var1470)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var795!1 String)
(assert (str.prefixof var795 var795!1))
(assert true)
(define-const var1817 String (append/672562846 var2358 "**")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**") 
(declare-const var2358!1 String)
(assert (= var2358!1 (str.++ var2358 "**")))
(assert true)
(define-const var781 String (toString/-2075883882 var1817)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2091!4 var854)
(assert (not (= var2091!4 null-var854)))
(assert (= (originalConnStr/-1210071563 (cast-from-var854-to-var3482 var2091!4)) var781)) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalConnStr> = $r10 
(define-const var2832 var1227 var1227-DBNAME) ; Statement: $r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME> 
(assert true)
(define-const var3587 String (getKeyName/-200443258 var2832)) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var3065 Bool (var140_containsKey/1715618542 var2464 (cast-from-String-to-var885 var3587))) ; Statement: $z0 = interfaceinvoke r11.<java.util.Map: boolean containsKey(java.lang.Object)>($r13) 
 ; Statement: if $z0 == 0 goto $r38 = "" 
(assert (= (ite var3065 1 0) 0)) ; Cond: $z0 == 0 
(define-const var378 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(declare-const var2091!5 var854)
(assert (not (= var2091!5 null-var854)))
(assert (= (originalDatabase/-1210071563 (cast-from-var854-to-var3482 var2091!5)) var378)) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalDatabase> = $r38 
(define-const var3503 var3987 var3987-REPLICATION_CONNECTION) ; Statement: $r14 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION> 
(declare-const var2091!6 var854)
(assert (not (= var2091!6 null-var854)))
(assert (= (type/-1210071563 (cast-from-var854-to-var3482 var2091!6)) var3503)) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r14 
(define-const var3556 var140 (properties/-1210071563 (cast-from-var854-to-var3482 var2091!6))) ; Statement: $r15 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties> 
;(assert (var140_putAll/1656389889 var3556 var2464)) ; Statement: interfaceinvoke $r15.<java.util.Map: void putAll(java.util.Map)>(r11) 

(declare-const var3556!1 var140)
(declare-const var2464!1 var140)
(define-const var2757 var140 (properties/-1210071563 (cast-from-var854-to-var3482 var2091!6))) ; Statement: $r16 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties> 
(assert true)
;(assert (injectPerTypeProperties/106079669 (cast-from-var854-to-var3482 var2091!6) var2757)) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r16) 

(declare-const var2091!7 var854)
(declare-const var2757!1 var140)
(assert true)
;(assert (setupPropertiesTransformer/-722295513 (cast-from-var854-to-var3482 var2091!7))) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void setupPropertiesTransformer()>() 

(declare-const var2091!8 var854)
(define-const var3165 var3126 (var3647_stream/-1288525013 (cast-from-var2826-to-var3647 var1991))) ; Statement: $r19 = interfaceinvoke r17.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var3902 var2874 (var546_bootstrap$/1963260975 var2091!8)) ; Statement: $r18 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0) 
(define-const var1580 var3126 (var3126_map/130902797 var3165 var3902)) ; Statement: $r22 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18) 
(define-const var237 var2826 (sourceHosts/1667275808 var2091!8)) ; Statement: $r20 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var2826-to-var885 var237))) ; Statement: virtualinvoke $r20.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var237!1 var2826)
(define-const var387 var46 (var3937_bootstrap$/-896066386 var237!1)) ; Statement: $r21 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48: java.util.function.Consumer bootstrap$(java.util.List)>($r20) 
(define-const var2799 var3126 (var3126_peek/-1564289730 var1580 var387)) ; Statement: $r25 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r21) 
(define-const var2261 var2826 (hosts/-1210071563 (cast-from-var854-to-var3482 var2091!8))) ; Statement: $r23 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var2826-to-var885 var2261))) ; Statement: virtualinvoke $r23.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var2261!1 var2826)
(define-const var67 var46 (var1773_bootstrap$/13715350 var2261!1)) ; Statement: $r24 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51: java.util.function.Consumer bootstrap$(java.util.List)>($r23) 
;(assert (var3126_forEach/1037804367 var2799 var67)) ; Statement: interfaceinvoke $r25.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r24) 

(declare-const var2799!1 var3126)
(declare-const var67!1 var46)
(define-const var3215 var3126 (var3647_stream/-1288525013 (cast-from-var2826-to-var3647 var1164))) ; Statement: $r28 = interfaceinvoke r26.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var2974 var2874 (var2312_bootstrap$/1931501583 var2091!8)) ; Statement: $r27 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0) 
(define-const var1063 var3126 (var3126_map/130902797 var3215 var2974)) ; Statement: $r31 = interfaceinvoke $r28.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r27) 
(define-const var3520 var2826 (replicaHosts/1667275808 var2091!8)) ; Statement: $r29 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var2826-to-var885 var3520))) ; Statement: virtualinvoke $r29.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3520!1 var2826)
(define-const var1023 var46 (var2203_bootstrap$/-1483174669 var3520!1)) ; Statement: $r30 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54: java.util.function.Consumer bootstrap$(java.util.List)>($r29) 
(define-const var1184 var3126 (var3126_peek/-1564289730 var1063 var1023)) ; Statement: $r34 = interfaceinvoke $r31.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r30) 
(define-const var3939 var2826 (hosts/-1210071563 (cast-from-var854-to-var3482 var2091!8))) ; Statement: $r32 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var2826-to-var885 var3939))) ; Statement: virtualinvoke $r32.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3939!1 var2826)
(define-const var1151 var46 (var1566_bootstrap$/-1049445583 var3939!1)) ; Statement: $r33 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56: java.util.function.Consumer bootstrap$(java.util.List)>($r32) 
;(assert (var3126_forEach/1037804367 var1184 var1151)) ; Statement: interfaceinvoke $r34.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r33) 

(declare-const var1184!1 var3126)
(declare-const var1151!1 var46)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/396980478=([com.mysql.cj.conf.ConnectionUrl], void), cast-from-var854-to-var3482=([com.mysql.cj.conf.url.ReplicationConnectionUrl], com.mysql.cj.conf.ConnectionUrl), var2927-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2927-to-var2826=([java.util.ArrayList], java.util.List), sourceHosts/1667275808=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.List), replicaHosts/1667275808=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getScheme/1149584850=([com.mysql.cj.conf.ConnectionUrl$Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3971_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), originalConnStr/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), var140_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var885=([java.lang.String], java.lang.Object), originalDatabase/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), properties/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.Map), var140_putAll/1656389889=([java.util.Map, java.util.Map], void), injectPerTypeProperties/106079669=([com.mysql.cj.conf.ConnectionUrl, java.util.Map], void), setupPropertiesTransformer/-722295513=([com.mysql.cj.conf.ConnectionUrl], void), var3647_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var2826-to-var3647=([java.util.List], java.util.Collection), var546_bootstrap$/1963260975=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.function.Function), var3126_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2826-to-var885=([java.util.List], java.lang.Object), var3937_bootstrap$/-896066386=([java.util.List], java.util.function.Consumer), var3126_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), hosts/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.List), var1773_bootstrap$/13715350=([java.util.List], java.util.function.Consumer), var3126_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), var2312_bootstrap$/1931501583=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.function.Function), var2203_bootstrap$/-1483174669=([java.util.List], java.util.function.Consumer), var1566_bootstrap$/-1049445583=([java.util.List], java.util.function.Consumer)}
; {var854=com.mysql.cj.conf.url.ReplicationConnectionUrl, var2091=r0, var2826=java.util.List, var1991=r17, var1164=r26, var140=java.util.Map, var2464=r11, var3482=com.mysql.cj.conf.ConnectionUrl, var2927=java.util.ArrayList, var170=$r1, var3247=$r2, var57=$r3, var3987=com.mysql.cj.conf.ConnectionUrl$Type, var1519=$r4, var1855=$r5, var936=$r6, var795=$r7, var3971=java.lang.System, var1470=$l0, var2358=$r8, var1817=$r9, var781=$r10, var1227=com.mysql.cj.conf.PropertyKey, var2832=$r12, var3587=$r13, var885=java.lang.Object, var3065=$z0, var378=$r38, var3503=$r14, var3556=$r15, var2757=$r16, var3126=java.util.stream.Stream, var3647=java.util.Collection, var3165=$r19, var2874=java.util.function.Function, var546=com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41, var3902=$r18, var1580=$r22, var237=$r20, var46=java.util.function.Consumer, var3937=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48, var387=$r21, var2799=$r25, var2261=$r23, var1773=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51, var67=$r24, var3215=$r28, var2312=com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52, var2974=$r27, var1063=$r31, var3520=$r29, var2203=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54, var1023=$r30, var1184=$r34, var3939=$r32, var1566=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56, var1151=$r33}
; {com.mysql.cj.conf.url.ReplicationConnectionUrl=var854, r0=var2091, java.util.List=var2826, r17=var1991, r26=var1164, java.util.Map=var140, r11=var2464, com.mysql.cj.conf.ConnectionUrl=var3482, java.util.ArrayList=var2927, $r1=var170, $r2=var3247, $r3=var57, com.mysql.cj.conf.ConnectionUrl$Type=var3987, $r4=var1519, $r5=var1855, $r6=var936, $r7=var795, java.lang.System=var3971, $l0=var1470, $r8=var2358, $r9=var1817, $r10=var781, com.mysql.cj.conf.PropertyKey=var1227, $r12=var2832, $r13=var3587, java.lang.Object=var885, $z0=var3065, $r38=var378, $r14=var3503, $r15=var3556, $r16=var2757, java.util.stream.Stream=var3126, java.util.Collection=var3647, $r19=var3165, java.util.function.Function=var2874, com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41=var546, $r18=var3902, $r22=var1580, $r20=var237, java.util.function.Consumer=var46, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48=var3937, $r21=var387, $r25=var2799, $r23=var2261, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51=var1773, $r24=var67, $r28=var3215, com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52=var2312, $r27=var2974, $r31=var1063, $r29=var3520, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54=var2203, $r30=var1023, $r34=var1184, $r32=var3939, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56=var1566, $r33=var1151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.ReplicationConnectionUrl;	r17 := @parameter0: java.util.List;	r26 := @parameter1: java.util.List;	r11 := @parameter2: java.util.Map;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION>;	$r5 = virtualinvoke $r4.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**");	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalConnStr> = $r10;	$r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME>;	$r13 = virtualinvoke $r12.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$z0 = interfaceinvoke r11.<java.util.Map: boolean containsKey(java.lang.Object)>($r13);	if $z0 == 0 goto $r38 = "";	$r38 = "";	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalDatabase> = $r38;	$r14 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION>;	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r14;	$r15 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties>;	interfaceinvoke $r15.<java.util.Map: void putAll(java.util.Map)>(r11);	$r16 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties>;	virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r16);	virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void setupPropertiesTransformer()>();	$r19 = interfaceinvoke r17.<java.util.List: java.util.stream.Stream stream()>();	$r18 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0);	$r22 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18);	$r20 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts>;	virtualinvoke $r20.<java.lang.Object: java.lang.Class getClass()>();	$r21 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48: java.util.function.Consumer bootstrap$(java.util.List)>($r20);	$r25 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r21);	$r23 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts>;	virtualinvoke $r23.<java.lang.Object: java.lang.Class getClass()>();	$r24 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51: java.util.function.Consumer bootstrap$(java.util.List)>($r23);	interfaceinvoke $r25.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r24);	$r28 = interfaceinvoke r26.<java.util.List: java.util.stream.Stream stream()>();	$r27 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0);	$r31 = interfaceinvoke $r28.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r27);	$r29 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts>;	virtualinvoke $r29.<java.lang.Object: java.lang.Class getClass()>();	$r30 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54: java.util.function.Consumer bootstrap$(java.util.List)>($r29);	$r34 = interfaceinvoke $r31.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r30);	$r32 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts>;	virtualinvoke $r32.<java.lang.Object: java.lang.Class getClass()>();	$r33 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56: java.util.function.Consumer bootstrap$(java.util.List)>($r32);	interfaceinvoke $r34.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r33);	return
;block_num 3