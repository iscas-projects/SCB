(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2606 0)
(declare-sort var282 0)
(declare-sort var1892 0)
(declare-sort var2759 0)
(declare-sort var754 0)
(declare-sort var2216 0)
(declare-sort var1102 0)
(declare-sort var1428 0)
(declare-sort var3256 0)
(declare-sort var676 0)
(declare-sort var3809 0)
(declare-sort var2811 0)
(declare-sort var779 0)
(declare-sort var1142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/396980478 (var2759) void)
(declare-fun cast-from-var2606-to-var2759 (var2606) var2759)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getScheme/1149584850 (var754) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2216_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun originalConnStr/-1210071563 (var2759) String)
(declare-fun getKeyName/-200443258 (var1102) String)
(declare-fun var1892_containsKey/1715618542 (var1892 var1428) Bool)
(declare-fun cast-from-String-to-var1428 (String) var1428)
(declare-fun var1892_get/1088891777 (var1892 var1428) var1428)
(declare-fun cast-from-var1428-to-String (var1428) String)
(declare-fun originalDatabase/-1210071563 (var2759) String)
(declare-fun type/-1210071563 (var2759) var754)
(declare-fun properties/-1210071563 (var2759) var1892)
(declare-fun var1892_putAll/1656389889 (var1892 var1892) void)
(declare-fun injectPerTypeProperties/-201993202 (var2606 var1892) void)
(declare-fun setupPropertiesTransformer/-722295513 (var2759) void)
(declare-fun var676_stream/-1288525013 (var676) var3256)
(declare-fun cast-from-var282-to-var676 (var282) var676)
(declare-fun var2811_bootstrap$/-1665457242 (var2606) var3809)
(declare-fun var3256_map/130902797 (var3256 var3809) var3256)
(declare-fun hosts/-1210071563 (var2759) var282)
(declare-fun getClass/1258963082 (var1428) ClassObject)
(declare-fun cast-from-var282-to-var1428 (var282) var1428)
(declare-fun var1142_bootstrap$/-1092220645 (var282) var779)
(declare-fun var3256_forEach/1037804367 (var3256 var779) void)
(declare-const null-var2606 var2606)
(declare-const null-var282 var282)
(declare-const null-var1892 var1892)
(declare-const var754-LOADBALANCE_CONNECTION var754)
(declare-const var1102-DBNAME var1102)
(declare-const var3673 var2606) ; Statement: r0 := @this: com.mysql.cj.conf.url.LoadBalanceConnectionUrl 
(assert (not (= var3673 null-var2606)))
(declare-const var1694 var282) ; Statement: r15 := @parameter0: java.util.List 
(assert (not (= var1694 null-var282)))
(declare-const var767 var1892) ; Statement: r9 := @parameter1: java.util.Map 
(assert (not (= var767 null-var1892)))
(assert true)
;(assert (<init>/396980478 (cast-from-var2606-to-var2759 var3673))) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>() 

(declare-const var3673!1 var2606)
(define-const var2528 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2528)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2528!1 String)
(assert (= var2528!1 ""))
(define-const var92 var754 var754-LOADBALANCE_CONNECTION) ; Statement: $r2 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION> 
(assert true)
(define-const var3746 String (getScheme/1149584850 var92)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>() 
(assert true)
(define-const var738 String (append/672562846 var2528!1 var3746)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2528!2 String)
(assert (= var2528!2 (str.++ var2528!1 var3746)))
(assert true)
(define-const var1355 String (append/672562846 var738 "//**internally_generated**")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**") 
(declare-const var738!1 String)
(assert (= var738!1 (str.++ var738 "//**internally_generated**")))
(define-const var2087 Int var2216_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var2032 String (append/-901862667 var1355 var2087)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1355!1 String)
(assert (str.prefixof var1355 var1355!1))
(assert true)
(define-const var2713 String (append/672562846 var2032 "**")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**") 
(declare-const var2032!1 String)
(assert (= var2032!1 (str.++ var2032 "**")))
(assert true)
(define-const var1992 String (toString/-2075883882 var2713)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3673!2 var2606)
(assert (not (= var3673!2 null-var2606)))
(assert (= (originalConnStr/-1210071563 (cast-from-var2606-to-var2759 var3673!2)) var1992)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalConnStr> = $r8 
(define-const var263 var1102 var1102-DBNAME) ; Statement: $r10 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME> 
(assert true)
(define-const var3854 String (getKeyName/-200443258 var263)) ; Statement: $r11 = virtualinvoke $r10.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var1475 Bool (var1892_containsKey/1715618542 var767 (cast-from-String-to-var1428 var3854))) ; Statement: $z0 = interfaceinvoke r9.<java.util.Map: boolean containsKey(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto $r24 = "" 
(assert (not (= (ite var1475 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1842 var1102 var1102-DBNAME) ; Statement: $r21 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME> 
(assert true)
(define-const var1888 String (getKeyName/-200443258 var1842)) ; Statement: $r22 = virtualinvoke $r21.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var3387 var1428 (var1892_get/1088891777 var767 (cast-from-String-to-var1428 var1888))) ; Statement: $r23 = interfaceinvoke r9.<java.util.Map: java.lang.Object get(java.lang.Object)>($r22) 
(define-const var1483 String (cast-from-var1428-to-String var3387)) ; Statement: $r24 = (java.lang.String) $r23 
 ; Statement: goto [?= r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalDatabase> = $r24] 
(assert true) ; Non Conditional
(declare-const var3673!3 var2606)
(assert (not (= var3673!3 null-var2606)))
(assert (= (originalDatabase/-1210071563 (cast-from-var2606-to-var2759 var3673!3)) var1483)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalDatabase> = $r24 
(define-const var2917 var754 var754-LOADBALANCE_CONNECTION) ; Statement: $r12 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION> 
(declare-const var3673!4 var2606)
(assert (not (= var3673!4 null-var2606)))
(assert (= (type/-1210071563 (cast-from-var2606-to-var2759 var3673!4)) var2917)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r12 
(define-const var992 var1892 (properties/-1210071563 (cast-from-var2606-to-var2759 var3673!4))) ; Statement: $r13 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties> 
;(assert (var1892_putAll/1656389889 var992 var767)) ; Statement: interfaceinvoke $r13.<java.util.Map: void putAll(java.util.Map)>(r9) 

(declare-const var992!1 var1892)
(declare-const var767!1 var1892)
(define-const var816 var1892 (properties/-1210071563 (cast-from-var2606-to-var2759 var3673!4))) ; Statement: $r14 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties> 
(assert true)
;(assert (injectPerTypeProperties/-201993202 var3673!4 var816)) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r14) 

(declare-const var3673!5 var2606)
(declare-const var816!1 var1892)
(assert true)
;(assert (setupPropertiesTransformer/-722295513 (cast-from-var2606-to-var2759 var3673!5))) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void setupPropertiesTransformer()>() 

(declare-const var3673!6 var2606)
(define-const var758 var3256 (var676_stream/-1288525013 (cast-from-var282-to-var676 var1694))) ; Statement: $r17 = interfaceinvoke r15.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var830 var3809 (var2811_bootstrap$/-1665457242 var3673!6)) ; Statement: $r16 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.LoadBalanceConnectionUrl)>(r0) 
(define-const var2958 var3256 (var3256_map/130902797 var758 var830)) ; Statement: $r20 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r16) 
(define-const var1583 var282 (hosts/-1210071563 (cast-from-var2606-to-var2759 var3673!6))) ; Statement: $r18 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.List hosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var282-to-var1428 var1583))) ; Statement: virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var1583!1 var282)
(define-const var510 var779 (var1142_bootstrap$/-1092220645 var1583!1)) ; Statement: $r19 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45: java.util.function.Consumer bootstrap$(java.util.List)>($r18) 
;(assert (var3256_forEach/1037804367 var2958 var510)) ; Statement: interfaceinvoke $r20.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r19) 

(declare-const var2958!1 var3256)
(declare-const var510!1 var779)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/396980478=([com.mysql.cj.conf.ConnectionUrl], void), cast-from-var2606-to-var2759=([com.mysql.cj.conf.url.LoadBalanceConnectionUrl], com.mysql.cj.conf.ConnectionUrl), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getScheme/1149584850=([com.mysql.cj.conf.ConnectionUrl$Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2216_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), originalConnStr/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), var1892_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1428=([java.lang.String], java.lang.Object), var1892_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1428-to-String=([java.lang.Object], java.lang.String), originalDatabase/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), properties/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.Map), var1892_putAll/1656389889=([java.util.Map, java.util.Map], void), injectPerTypeProperties/-201993202=([com.mysql.cj.conf.url.LoadBalanceConnectionUrl, java.util.Map], void), setupPropertiesTransformer/-722295513=([com.mysql.cj.conf.ConnectionUrl], void), var676_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var282-to-var676=([java.util.List], java.util.Collection), var2811_bootstrap$/-1665457242=([com.mysql.cj.conf.url.LoadBalanceConnectionUrl], java.util.function.Function), var3256_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), hosts/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.List), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var282-to-var1428=([java.util.List], java.lang.Object), var1142_bootstrap$/-1092220645=([java.util.List], java.util.function.Consumer), var3256_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void)}
; {var2606=com.mysql.cj.conf.url.LoadBalanceConnectionUrl, var3673=r0, var282=java.util.List, var1694=r15, var1892=java.util.Map, var767=r9, var2759=com.mysql.cj.conf.ConnectionUrl, var2528=$r1, var754=com.mysql.cj.conf.ConnectionUrl$Type, var92=$r2, var3746=$r3, var738=$r4, var1355=$r5, var2216=java.lang.System, var2087=$l0, var2032=$r6, var2713=$r7, var1992=$r8, var1102=com.mysql.cj.conf.PropertyKey, var263=$r10, var3854=$r11, var1428=java.lang.Object, var1475=$z0, var1842=$r21, var1888=$r22, var3387=$r23, var1483=$r24, var2917=$r12, var992=$r13, var816=$r14, var3256=java.util.stream.Stream, var676=java.util.Collection, var758=$r17, var3809=java.util.function.Function, var2811=com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39, var830=$r16, var2958=$r20, var1583=$r18, var779=java.util.function.Consumer, var1142=com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45, var510=$r19}
; {com.mysql.cj.conf.url.LoadBalanceConnectionUrl=var2606, r0=var3673, java.util.List=var282, r15=var1694, java.util.Map=var1892, r9=var767, com.mysql.cj.conf.ConnectionUrl=var2759, $r1=var2528, com.mysql.cj.conf.ConnectionUrl$Type=var754, $r2=var92, $r3=var3746, $r4=var738, $r5=var1355, java.lang.System=var2216, $l0=var2087, $r6=var2032, $r7=var2713, $r8=var1992, com.mysql.cj.conf.PropertyKey=var1102, $r10=var263, $r11=var3854, java.lang.Object=var1428, $z0=var1475, $r21=var1842, $r22=var1888, $r23=var3387, $r24=var1483, $r12=var2917, $r13=var992, $r14=var816, java.util.stream.Stream=var3256, java.util.Collection=var676, $r17=var758, java.util.function.Function=var3809, com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39=var2811, $r16=var830, $r20=var2958, $r18=var1583, java.util.function.Consumer=var779, com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45=var1142, $r19=var510}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.LoadBalanceConnectionUrl;	r15 := @parameter0: java.util.List;	r9 := @parameter1: java.util.Map;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION>;	$r3 = virtualinvoke $r2.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**");	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalConnStr> = $r8;	$r10 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME>;	$r11 = virtualinvoke $r10.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$z0 = interfaceinvoke r9.<java.util.Map: boolean containsKey(java.lang.Object)>($r11);	if $z0 == 0 goto $r24 = "";	$r21 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME>;	$r22 = virtualinvoke $r21.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r23 = interfaceinvoke r9.<java.util.Map: java.lang.Object get(java.lang.Object)>($r22);	$r24 = (java.lang.String) $r23;	goto [?= r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalDatabase> = $r24];	r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalDatabase> = $r24;	$r12 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION>;	r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r12;	$r13 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties>;	interfaceinvoke $r13.<java.util.Map: void putAll(java.util.Map)>(r9);	$r14 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties>;	virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r14);	virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void setupPropertiesTransformer()>();	$r17 = interfaceinvoke r15.<java.util.List: java.util.stream.Stream stream()>();	$r16 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.LoadBalanceConnectionUrl)>(r0);	$r20 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r16);	$r18 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.List hosts>;	virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>();	$r19 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45: java.util.function.Consumer bootstrap$(java.util.List)>($r18);	interfaceinvoke $r20.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r19);	return
;block_num 3