(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var1797 0)
(declare-sort var3462 0)
(declare-sort var194 0)
(declare-sort var3582 0)
(declare-sort var2595 0)
(declare-sort var3169 0)
(declare-sort var612 0)
(declare-sort var75 0)
(declare-sort var3074 0)
(declare-sort var616 0)
(declare-sort var2320 0)
(declare-sort var2199 0)
(declare-sort var2612 0)
(declare-sort var2512 0)
(declare-sort var1156 0)
(declare-sort var1690 0)
(declare-sort var219 0)
(declare-sort var172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/396980478 (var194) void)
(declare-fun cast-from-var2298-to-var194 (var2298) var194)
(declare-fun var3582-init () var3582)
(declare-fun <init>/-325640736 (var3582) void)
(declare-fun cast-from-var3582-to-var1797 (var3582) var1797)
(declare-fun sourceHosts/1667275808 (var2298) var1797)
(declare-fun replicaHosts/1667275808 (var2298) var1797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getScheme/1149584850 (var2595) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3169_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun originalConnStr/-1210071563 (var194) String)
(declare-fun getKeyName/-200443258 (var612) String)
(declare-fun var3462_containsKey/1715618542 (var3462 var75) Bool)
(declare-fun cast-from-String-to-var75 (String) var75)
(declare-fun var3462_get/1088891777 (var3462 var75) var75)
(declare-fun cast-from-var75-to-String (var75) String)
(declare-fun originalDatabase/-1210071563 (var194) String)
(declare-fun type/-1210071563 (var194) var2595)
(declare-fun properties/-1210071563 (var194) var3462)
(declare-fun var3462_putAll/1656389889 (var3462 var3462) void)
(declare-fun injectPerTypeProperties/106079669 (var194 var3462) void)
(declare-fun setupPropertiesTransformer/-722295513 (var194) void)
(declare-fun var616_stream/-1288525013 (var616) var3074)
(declare-fun cast-from-var1797-to-var616 (var1797) var616)
(declare-fun var2199_bootstrap$/1963260975 (var2298) var2320)
(declare-fun var3074_map/130902797 (var3074 var2320) var3074)
(declare-fun getClass/1258963082 (var75) ClassObject)
(declare-fun cast-from-var1797-to-var75 (var1797) var75)
(declare-fun var2512_bootstrap$/-896066386 (var1797) var2612)
(declare-fun var3074_peek/-1564289730 (var3074 var2612) var3074)
(declare-fun hosts/-1210071563 (var194) var1797)
(declare-fun var1156_bootstrap$/13715350 (var1797) var2612)
(declare-fun var3074_forEach/1037804367 (var3074 var2612) void)
(declare-fun var1690_bootstrap$/1931501583 (var2298) var2320)
(declare-fun var219_bootstrap$/-1483174669 (var1797) var2612)
(declare-fun var172_bootstrap$/-1049445583 (var1797) var2612)
(declare-const null-var2298 var2298)
(declare-const null-var1797 var1797)
(declare-const null-var3462 var3462)
(declare-const var2595-REPLICATION_CONNECTION var2595)
(declare-const var612-DBNAME var612)
(declare-const var1978 var2298) ; Statement: r0 := @this: com.mysql.cj.conf.url.ReplicationConnectionUrl 
(assert (not (= var1978 null-var2298)))
(declare-const var3261 var1797) ; Statement: r17 := @parameter0: java.util.List 
(assert (not (= var3261 null-var1797)))
(declare-const var2692 var1797) ; Statement: r26 := @parameter1: java.util.List 
(assert (not (= var2692 null-var1797)))
(declare-const var1505 var3462) ; Statement: r11 := @parameter2: java.util.Map 
(assert (not (= var1505 null-var3462)))
(assert true)
;(assert (<init>/396980478 (cast-from-var2298-to-var194 var1978))) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>() 

(declare-const var1978!1 var2298)
(define-const var2148 var3582 var3582-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2148)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var2148!1 var3582)
(declare-const var1978!2 var2298)
(assert (not (= var1978!2 null-var2298)))
(assert (= (sourceHosts/1667275808 var1978!2) (cast-from-var3582-to-var1797 var2148!1))) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts> = $r1 
(define-const var3392 var3582 var3582-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3392)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var3392!1 var3582)
(declare-const var1978!3 var2298)
(assert (not (= var1978!3 null-var2298)))
(assert (= (replicaHosts/1667275808 var1978!3) (cast-from-var3582-to-var1797 var3392!1))) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts> = $r2 
(define-const var742 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var742)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var742!1 String)
(assert (= var742!1 ""))
(define-const var833 var2595 var2595-REPLICATION_CONNECTION) ; Statement: $r4 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION> 
(assert true)
(define-const var1063 String (getScheme/1149584850 var833)) ; Statement: $r5 = virtualinvoke $r4.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>() 
(assert true)
(define-const var3147 String (append/672562846 var742!1 var1063)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var742!2 String)
(assert (= var742!2 (str.++ var742!1 var1063)))
(assert true)
(define-const var1816 String (append/672562846 var3147 "//**internally_generated**")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**") 
(declare-const var3147!1 String)
(assert (= var3147!1 (str.++ var3147 "//**internally_generated**")))
(define-const var2659 Int var3169_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var1105 String (append/-901862667 var1816 var2659)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1816!1 String)
(assert (str.prefixof var1816 var1816!1))
(assert true)
(define-const var1585 String (append/672562846 var1105 "**")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**") 
(declare-const var1105!1 String)
(assert (= var1105!1 (str.++ var1105 "**")))
(assert true)
(define-const var78 String (toString/-2075883882 var1585)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1978!4 var2298)
(assert (not (= var1978!4 null-var2298)))
(assert (= (originalConnStr/-1210071563 (cast-from-var2298-to-var194 var1978!4)) var78)) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalConnStr> = $r10 
(define-const var1950 var612 var612-DBNAME) ; Statement: $r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME> 
(assert true)
(define-const var104 String (getKeyName/-200443258 var1950)) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var3961 Bool (var3462_containsKey/1715618542 var1505 (cast-from-String-to-var75 var104))) ; Statement: $z0 = interfaceinvoke r11.<java.util.Map: boolean containsKey(java.lang.Object)>($r13) 
 ; Statement: if $z0 == 0 goto $r38 = "" 
(assert (not (= (ite var3961 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1831 var612 var612-DBNAME) ; Statement: $r35 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME> 
(assert true)
(define-const var2411 String (getKeyName/-200443258 var1831)) ; Statement: $r36 = virtualinvoke $r35.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var2116 var75 (var3462_get/1088891777 var1505 (cast-from-String-to-var75 var2411))) ; Statement: $r37 = interfaceinvoke r11.<java.util.Map: java.lang.Object get(java.lang.Object)>($r36) 
(define-const var3803 String (cast-from-var75-to-String var2116)) ; Statement: $r38 = (java.lang.String) $r37 
 ; Statement: goto [?= r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalDatabase> = $r38] 
(assert true) ; Non Conditional
(declare-const var1978!5 var2298)
(assert (not (= var1978!5 null-var2298)))
(assert (= (originalDatabase/-1210071563 (cast-from-var2298-to-var194 var1978!5)) var3803)) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalDatabase> = $r38 
(define-const var3383 var2595 var2595-REPLICATION_CONNECTION) ; Statement: $r14 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION> 
(declare-const var1978!6 var2298)
(assert (not (= var1978!6 null-var2298)))
(assert (= (type/-1210071563 (cast-from-var2298-to-var194 var1978!6)) var3383)) ; Statement: r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r14 
(define-const var3874 var3462 (properties/-1210071563 (cast-from-var2298-to-var194 var1978!6))) ; Statement: $r15 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties> 
;(assert (var3462_putAll/1656389889 var3874 var1505)) ; Statement: interfaceinvoke $r15.<java.util.Map: void putAll(java.util.Map)>(r11) 

(declare-const var3874!1 var3462)
(declare-const var1505!1 var3462)
(define-const var2186 var3462 (properties/-1210071563 (cast-from-var2298-to-var194 var1978!6))) ; Statement: $r16 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties> 
(assert true)
;(assert (injectPerTypeProperties/106079669 (cast-from-var2298-to-var194 var1978!6) var2186)) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r16) 

(declare-const var1978!7 var2298)
(declare-const var2186!1 var3462)
(assert true)
;(assert (setupPropertiesTransformer/-722295513 (cast-from-var2298-to-var194 var1978!7))) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void setupPropertiesTransformer()>() 

(declare-const var1978!8 var2298)
(define-const var3469 var3074 (var616_stream/-1288525013 (cast-from-var1797-to-var616 var3261))) ; Statement: $r19 = interfaceinvoke r17.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var650 var2320 (var2199_bootstrap$/1963260975 var1978!8)) ; Statement: $r18 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0) 
(define-const var4 var3074 (var3074_map/130902797 var3469 var650)) ; Statement: $r22 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18) 
(define-const var2607 var1797 (sourceHosts/1667275808 var1978!8)) ; Statement: $r20 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var1797-to-var75 var2607))) ; Statement: virtualinvoke $r20.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var2607!1 var1797)
(define-const var1898 var2612 (var2512_bootstrap$/-896066386 var2607!1)) ; Statement: $r21 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48: java.util.function.Consumer bootstrap$(java.util.List)>($r20) 
(define-const var931 var3074 (var3074_peek/-1564289730 var4 var1898)) ; Statement: $r25 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r21) 
(define-const var3327 var1797 (hosts/-1210071563 (cast-from-var2298-to-var194 var1978!8))) ; Statement: $r23 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var1797-to-var75 var3327))) ; Statement: virtualinvoke $r23.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3327!1 var1797)
(define-const var2469 var2612 (var1156_bootstrap$/13715350 var3327!1)) ; Statement: $r24 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51: java.util.function.Consumer bootstrap$(java.util.List)>($r23) 
;(assert (var3074_forEach/1037804367 var931 var2469)) ; Statement: interfaceinvoke $r25.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r24) 

(declare-const var931!1 var3074)
(declare-const var2469!1 var2612)
(define-const var949 var3074 (var616_stream/-1288525013 (cast-from-var1797-to-var616 var2692))) ; Statement: $r28 = interfaceinvoke r26.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var964 var2320 (var1690_bootstrap$/1931501583 var1978!8)) ; Statement: $r27 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0) 
(define-const var1854 var3074 (var3074_map/130902797 var949 var964)) ; Statement: $r31 = interfaceinvoke $r28.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r27) 
(define-const var2065 var1797 (replicaHosts/1667275808 var1978!8)) ; Statement: $r29 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var1797-to-var75 var2065))) ; Statement: virtualinvoke $r29.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var2065!1 var1797)
(define-const var3457 var2612 (var219_bootstrap$/-1483174669 var2065!1)) ; Statement: $r30 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54: java.util.function.Consumer bootstrap$(java.util.List)>($r29) 
(define-const var2158 var3074 (var3074_peek/-1564289730 var1854 var3457)) ; Statement: $r34 = interfaceinvoke $r31.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r30) 
(define-const var2201 var1797 (hosts/-1210071563 (cast-from-var2298-to-var194 var1978!8))) ; Statement: $r32 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var1797-to-var75 var2201))) ; Statement: virtualinvoke $r32.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var2201!1 var1797)
(define-const var3519 var2612 (var172_bootstrap$/-1049445583 var2201!1)) ; Statement: $r33 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56: java.util.function.Consumer bootstrap$(java.util.List)>($r32) 
;(assert (var3074_forEach/1037804367 var2158 var3519)) ; Statement: interfaceinvoke $r34.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r33) 

(declare-const var2158!1 var3074)
(declare-const var3519!1 var2612)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/396980478=([com.mysql.cj.conf.ConnectionUrl], void), cast-from-var2298-to-var194=([com.mysql.cj.conf.url.ReplicationConnectionUrl], com.mysql.cj.conf.ConnectionUrl), var3582-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3582-to-var1797=([java.util.ArrayList], java.util.List), sourceHosts/1667275808=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.List), replicaHosts/1667275808=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getScheme/1149584850=([com.mysql.cj.conf.ConnectionUrl$Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3169_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), originalConnStr/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), var3462_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var75=([java.lang.String], java.lang.Object), var3462_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var75-to-String=([java.lang.Object], java.lang.String), originalDatabase/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), properties/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.Map), var3462_putAll/1656389889=([java.util.Map, java.util.Map], void), injectPerTypeProperties/106079669=([com.mysql.cj.conf.ConnectionUrl, java.util.Map], void), setupPropertiesTransformer/-722295513=([com.mysql.cj.conf.ConnectionUrl], void), var616_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var1797-to-var616=([java.util.List], java.util.Collection), var2199_bootstrap$/1963260975=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.function.Function), var3074_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1797-to-var75=([java.util.List], java.lang.Object), var2512_bootstrap$/-896066386=([java.util.List], java.util.function.Consumer), var3074_peek/-1564289730=([java.util.stream.Stream, java.util.function.Consumer], java.util.stream.Stream), hosts/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.List), var1156_bootstrap$/13715350=([java.util.List], java.util.function.Consumer), var3074_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), var1690_bootstrap$/1931501583=([com.mysql.cj.conf.url.ReplicationConnectionUrl], java.util.function.Function), var219_bootstrap$/-1483174669=([java.util.List], java.util.function.Consumer), var172_bootstrap$/-1049445583=([java.util.List], java.util.function.Consumer)}
; {var2298=com.mysql.cj.conf.url.ReplicationConnectionUrl, var1978=r0, var1797=java.util.List, var3261=r17, var2692=r26, var3462=java.util.Map, var1505=r11, var194=com.mysql.cj.conf.ConnectionUrl, var3582=java.util.ArrayList, var2148=$r1, var3392=$r2, var742=$r3, var2595=com.mysql.cj.conf.ConnectionUrl$Type, var833=$r4, var1063=$r5, var3147=$r6, var1816=$r7, var3169=java.lang.System, var2659=$l0, var1105=$r8, var1585=$r9, var78=$r10, var612=com.mysql.cj.conf.PropertyKey, var1950=$r12, var104=$r13, var75=java.lang.Object, var3961=$z0, var1831=$r35, var2411=$r36, var2116=$r37, var3803=$r38, var3383=$r14, var3874=$r15, var2186=$r16, var3074=java.util.stream.Stream, var616=java.util.Collection, var3469=$r19, var2320=java.util.function.Function, var2199=com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41, var650=$r18, var4=$r22, var2607=$r20, var2612=java.util.function.Consumer, var2512=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48, var1898=$r21, var931=$r25, var3327=$r23, var1156=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51, var2469=$r24, var949=$r28, var1690=com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52, var964=$r27, var1854=$r31, var2065=$r29, var219=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54, var3457=$r30, var2158=$r34, var2201=$r32, var172=com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56, var3519=$r33}
; {com.mysql.cj.conf.url.ReplicationConnectionUrl=var2298, r0=var1978, java.util.List=var1797, r17=var3261, r26=var2692, java.util.Map=var3462, r11=var1505, com.mysql.cj.conf.ConnectionUrl=var194, java.util.ArrayList=var3582, $r1=var2148, $r2=var3392, $r3=var742, com.mysql.cj.conf.ConnectionUrl$Type=var2595, $r4=var833, $r5=var1063, $r6=var3147, $r7=var1816, java.lang.System=var3169, $l0=var2659, $r8=var1105, $r9=var1585, $r10=var78, com.mysql.cj.conf.PropertyKey=var612, $r12=var1950, $r13=var104, java.lang.Object=var75, $z0=var3961, $r35=var1831, $r36=var2411, $r37=var2116, $r38=var3803, $r14=var3383, $r15=var3874, $r16=var2186, java.util.stream.Stream=var3074, java.util.Collection=var616, $r19=var3469, java.util.function.Function=var2320, com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41=var2199, $r18=var650, $r22=var4, $r20=var2607, java.util.function.Consumer=var2612, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48=var2512, $r21=var1898, $r25=var931, $r23=var3327, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51=var1156, $r24=var2469, $r28=var949, com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52=var1690, $r27=var964, $r31=var1854, $r29=var2065, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54=var219, $r30=var3457, $r34=var2158, $r32=var2201, com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56=var172, $r33=var3519}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.ReplicationConnectionUrl;	r17 := @parameter0: java.util.List;	r26 := @parameter1: java.util.List;	r11 := @parameter2: java.util.Map;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION>;	$r5 = virtualinvoke $r4.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**");	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalConnStr> = $r10;	$r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME>;	$r13 = virtualinvoke $r12.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$z0 = interfaceinvoke r11.<java.util.Map: boolean containsKey(java.lang.Object)>($r13);	if $z0 == 0 goto $r38 = "";	$r35 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME>;	$r36 = virtualinvoke $r35.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r37 = interfaceinvoke r11.<java.util.Map: java.lang.Object get(java.lang.Object)>($r36);	$r38 = (java.lang.String) $r37;	goto [?= r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalDatabase> = $r38];	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.lang.String originalDatabase> = $r38;	$r14 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type REPLICATION_CONNECTION>;	r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r14;	$r15 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties>;	interfaceinvoke $r15.<java.util.Map: void putAll(java.util.Map)>(r11);	$r16 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.Map properties>;	virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r16);	virtualinvoke r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: void setupPropertiesTransformer()>();	$r19 = interfaceinvoke r17.<java.util.List: java.util.stream.Stream stream()>();	$r18 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__41: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0);	$r22 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18);	$r20 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List sourceHosts>;	virtualinvoke $r20.<java.lang.Object: java.lang.Class getClass()>();	$r21 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__48: java.util.function.Consumer bootstrap$(java.util.List)>($r20);	$r25 = interfaceinvoke $r22.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r21);	$r23 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts>;	virtualinvoke $r23.<java.lang.Object: java.lang.Class getClass()>();	$r24 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__51: java.util.function.Consumer bootstrap$(java.util.List)>($r23);	interfaceinvoke $r25.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r24);	$r28 = interfaceinvoke r26.<java.util.List: java.util.stream.Stream stream()>();	$r27 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$fixHostInfo__52: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.ReplicationConnectionUrl)>(r0);	$r31 = interfaceinvoke $r28.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r27);	$r29 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List replicaHosts>;	virtualinvoke $r29.<java.lang.Object: java.lang.Class getClass()>();	$r30 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__54: java.util.function.Consumer bootstrap$(java.util.List)>($r29);	$r34 = interfaceinvoke $r31.<java.util.stream.Stream: java.util.stream.Stream peek(java.util.function.Consumer)>($r30);	$r32 = r0.<com.mysql.cj.conf.url.ReplicationConnectionUrl: java.util.List hosts>;	virtualinvoke $r32.<java.lang.Object: java.lang.Class getClass()>();	$r33 = staticinvoke <com.mysql.cj.conf.url.ReplicationConnectionUrl$add__56: java.util.function.Consumer bootstrap$(java.util.List)>($r32);	interfaceinvoke $r34.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r33);	return
;block_num 3