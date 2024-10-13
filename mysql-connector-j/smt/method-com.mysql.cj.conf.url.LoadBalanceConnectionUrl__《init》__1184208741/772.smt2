(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort var561 0)
(declare-sort var619 0)
(declare-sort var655 0)
(declare-sort var1498 0)
(declare-sort var119 0)
(declare-sort var2134 0)
(declare-sort var2095 0)
(declare-sort var2951 0)
(declare-sort var1857 0)
(declare-sort var2835 0)
(declare-sort var868 0)
(declare-sort var492 0)
(declare-sort var296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/396980478 (var655) void)
(declare-fun cast-from-var3349-to-var655 (var3349) var655)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getScheme/1149584850 (var1498) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var119_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun originalConnStr/-1210071563 (var655) String)
(declare-fun getKeyName/-200443258 (var2134) String)
(declare-fun var619_containsKey/1715618542 (var619 var2095) Bool)
(declare-fun cast-from-String-to-var2095 (String) var2095)
(declare-fun originalDatabase/-1210071563 (var655) String)
(declare-fun type/-1210071563 (var655) var1498)
(declare-fun properties/-1210071563 (var655) var619)
(declare-fun var619_putAll/1656389889 (var619 var619) void)
(declare-fun injectPerTypeProperties/-201993202 (var3349 var619) void)
(declare-fun setupPropertiesTransformer/-722295513 (var655) void)
(declare-fun var1857_stream/-1288525013 (var1857) var2951)
(declare-fun cast-from-var561-to-var1857 (var561) var1857)
(declare-fun var868_bootstrap$/-1665457242 (var3349) var2835)
(declare-fun var2951_map/130902797 (var2951 var2835) var2951)
(declare-fun hosts/-1210071563 (var655) var561)
(declare-fun getClass/1258963082 (var2095) ClassObject)
(declare-fun cast-from-var561-to-var2095 (var561) var2095)
(declare-fun var296_bootstrap$/-1092220645 (var561) var492)
(declare-fun var2951_forEach/1037804367 (var2951 var492) void)
(declare-const null-var3349 var3349)
(declare-const null-var561 var561)
(declare-const null-var619 var619)
(declare-const var1498-LOADBALANCE_CONNECTION var1498)
(declare-const var2134-DBNAME var2134)
(declare-const var405 var3349) ; Statement: r0 := @this: com.mysql.cj.conf.url.LoadBalanceConnectionUrl 
(assert (not (= var405 null-var3349)))
(declare-const var253 var561) ; Statement: r15 := @parameter0: java.util.List 
(assert (not (= var253 null-var561)))
(declare-const var260 var619) ; Statement: r9 := @parameter1: java.util.Map 
(assert (not (= var260 null-var619)))
(assert true)
;(assert (<init>/396980478 (cast-from-var3349-to-var655 var405))) ; Statement: specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>() 

(declare-const var405!1 var3349)
(define-const var2777 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2777)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2777!1 String)
(assert (= var2777!1 ""))
(define-const var1904 var1498 var1498-LOADBALANCE_CONNECTION) ; Statement: $r2 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION> 
(assert true)
(define-const var202 String (getScheme/1149584850 var1904)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>() 
(assert true)
(define-const var628 String (append/672562846 var2777!1 var202)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2777!2 String)
(assert (= var2777!2 (str.++ var2777!1 var202)))
(assert true)
(define-const var3328 String (append/672562846 var628 "//**internally_generated**")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**") 
(declare-const var628!1 String)
(assert (= var628!1 (str.++ var628 "//**internally_generated**")))
(define-const var3343 Int var119_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var1643 String (append/-901862667 var3328 var3343)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3328!1 String)
(assert (str.prefixof var3328 var3328!1))
(assert true)
(define-const var330 String (append/672562846 var1643 "**")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**") 
(declare-const var1643!1 String)
(assert (= var1643!1 (str.++ var1643 "**")))
(assert true)
(define-const var2785 String (toString/-2075883882 var330)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var405!2 var3349)
(assert (not (= var405!2 null-var3349)))
(assert (= (originalConnStr/-1210071563 (cast-from-var3349-to-var655 var405!2)) var2785)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalConnStr> = $r8 
(define-const var1423 var2134 var2134-DBNAME) ; Statement: $r10 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME> 
(assert true)
(define-const var343 String (getKeyName/-200443258 var1423)) ; Statement: $r11 = virtualinvoke $r10.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(define-const var1169 Bool (var619_containsKey/1715618542 var260 (cast-from-String-to-var2095 var343))) ; Statement: $z0 = interfaceinvoke r9.<java.util.Map: boolean containsKey(java.lang.Object)>($r11) 
 ; Statement: if $z0 == 0 goto $r24 = "" 
(assert (= (ite var1169 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1268 String "") ; Statement: $r24 = "" 
(assert true) ; Non Conditional
(declare-const var405!3 var3349)
(assert (not (= var405!3 null-var3349)))
(assert (= (originalDatabase/-1210071563 (cast-from-var3349-to-var655 var405!3)) var1268)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalDatabase> = $r24 
(define-const var3894 var1498 var1498-LOADBALANCE_CONNECTION) ; Statement: $r12 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION> 
(declare-const var405!4 var3349)
(assert (not (= var405!4 null-var3349)))
(assert (= (type/-1210071563 (cast-from-var3349-to-var655 var405!4)) var3894)) ; Statement: r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r12 
(define-const var3534 var619 (properties/-1210071563 (cast-from-var3349-to-var655 var405!4))) ; Statement: $r13 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties> 
;(assert (var619_putAll/1656389889 var3534 var260)) ; Statement: interfaceinvoke $r13.<java.util.Map: void putAll(java.util.Map)>(r9) 

(declare-const var3534!1 var619)
(declare-const var260!1 var619)
(define-const var785 var619 (properties/-1210071563 (cast-from-var3349-to-var655 var405!4))) ; Statement: $r14 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties> 
(assert true)
;(assert (injectPerTypeProperties/-201993202 var405!4 var785)) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r14) 

(declare-const var405!5 var3349)
(declare-const var785!1 var619)
(assert true)
;(assert (setupPropertiesTransformer/-722295513 (cast-from-var3349-to-var655 var405!5))) ; Statement: virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void setupPropertiesTransformer()>() 

(declare-const var405!6 var3349)
(define-const var1055 var2951 (var1857_stream/-1288525013 (cast-from-var561-to-var1857 var253))) ; Statement: $r17 = interfaceinvoke r15.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var2629 var2835 (var868_bootstrap$/-1665457242 var405!6)) ; Statement: $r16 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.LoadBalanceConnectionUrl)>(r0) 
(define-const var789 var2951 (var2951_map/130902797 var1055 var2629)) ; Statement: $r20 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r16) 
(define-const var1052 var561 (hosts/-1210071563 (cast-from-var3349-to-var655 var405!6))) ; Statement: $r18 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.List hosts> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var561-to-var2095 var1052))) ; Statement: virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var1052!1 var561)
(define-const var3186 var492 (var296_bootstrap$/-1092220645 var1052!1)) ; Statement: $r19 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45: java.util.function.Consumer bootstrap$(java.util.List)>($r18) 
;(assert (var2951_forEach/1037804367 var789 var3186)) ; Statement: interfaceinvoke $r20.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r19) 

(declare-const var789!1 var2951)
(declare-const var3186!1 var492)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/396980478=([com.mysql.cj.conf.ConnectionUrl], void), cast-from-var3349-to-var655=([com.mysql.cj.conf.url.LoadBalanceConnectionUrl], com.mysql.cj.conf.ConnectionUrl), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getScheme/1149584850=([com.mysql.cj.conf.ConnectionUrl$Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var119_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), originalConnStr/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), var619_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2095=([java.lang.String], java.lang.Object), originalDatabase/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.lang.String), type/-1210071563=([com.mysql.cj.conf.ConnectionUrl], com.mysql.cj.conf.ConnectionUrl$Type), properties/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.Map), var619_putAll/1656389889=([java.util.Map, java.util.Map], void), injectPerTypeProperties/-201993202=([com.mysql.cj.conf.url.LoadBalanceConnectionUrl, java.util.Map], void), setupPropertiesTransformer/-722295513=([com.mysql.cj.conf.ConnectionUrl], void), var1857_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var561-to-var1857=([java.util.List], java.util.Collection), var868_bootstrap$/-1665457242=([com.mysql.cj.conf.url.LoadBalanceConnectionUrl], java.util.function.Function), var2951_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), hosts/-1210071563=([com.mysql.cj.conf.ConnectionUrl], java.util.List), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var561-to-var2095=([java.util.List], java.lang.Object), var296_bootstrap$/-1092220645=([java.util.List], java.util.function.Consumer), var2951_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void)}
; {var3349=com.mysql.cj.conf.url.LoadBalanceConnectionUrl, var405=r0, var561=java.util.List, var253=r15, var619=java.util.Map, var260=r9, var655=com.mysql.cj.conf.ConnectionUrl, var2777=$r1, var1498=com.mysql.cj.conf.ConnectionUrl$Type, var1904=$r2, var202=$r3, var628=$r4, var3328=$r5, var119=java.lang.System, var3343=$l0, var1643=$r6, var330=$r7, var2785=$r8, var2134=com.mysql.cj.conf.PropertyKey, var1423=$r10, var343=$r11, var2095=java.lang.Object, var1169=$z0, var1268=$r24, var3894=$r12, var3534=$r13, var785=$r14, var2951=java.util.stream.Stream, var1857=java.util.Collection, var1055=$r17, var2835=java.util.function.Function, var868=com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39, var2629=$r16, var789=$r20, var1052=$r18, var492=java.util.function.Consumer, var296=com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45, var3186=$r19}
; {com.mysql.cj.conf.url.LoadBalanceConnectionUrl=var3349, r0=var405, java.util.List=var561, r15=var253, java.util.Map=var619, r9=var260, com.mysql.cj.conf.ConnectionUrl=var655, $r1=var2777, com.mysql.cj.conf.ConnectionUrl$Type=var1498, $r2=var1904, $r3=var202, $r4=var628, $r5=var3328, java.lang.System=var119, $l0=var3343, $r6=var1643, $r7=var330, $r8=var2785, com.mysql.cj.conf.PropertyKey=var2134, $r10=var1423, $r11=var343, java.lang.Object=var2095, $z0=var1169, $r24=var1268, $r12=var3894, $r13=var3534, $r14=var785, java.util.stream.Stream=var2951, java.util.Collection=var1857, $r17=var1055, java.util.function.Function=var2835, com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39=var868, $r16=var2629, $r20=var789, $r18=var1052, java.util.function.Consumer=var492, com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45=var296, $r19=var3186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.conf.url.LoadBalanceConnectionUrl;	r15 := @parameter0: java.util.List;	r9 := @parameter1: java.util.Map;	specialinvoke r0.<com.mysql.cj.conf.ConnectionUrl: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION>;	$r3 = virtualinvoke $r2.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//**internally_generated**");	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalConnStr> = $r8;	$r10 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey DBNAME>;	$r11 = virtualinvoke $r10.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$z0 = interfaceinvoke r9.<java.util.Map: boolean containsKey(java.lang.Object)>($r11);	if $z0 == 0 goto $r24 = "";	$r24 = "";	r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.lang.String originalDatabase> = $r24;	$r12 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type LOADBALANCE_CONNECTION>;	r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: com.mysql.cj.conf.ConnectionUrl$Type type> = $r12;	$r13 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties>;	interfaceinvoke $r13.<java.util.Map: void putAll(java.util.Map)>(r9);	$r14 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.Map properties>;	virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void injectPerTypeProperties(java.util.Map)>($r14);	virtualinvoke r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: void setupPropertiesTransformer()>();	$r17 = interfaceinvoke r15.<java.util.List: java.util.stream.Stream stream()>();	$r16 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$fixHostInfo__39: java.util.function.Function bootstrap$(com.mysql.cj.conf.url.LoadBalanceConnectionUrl)>(r0);	$r20 = interfaceinvoke $r17.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r16);	$r18 = r0.<com.mysql.cj.conf.url.LoadBalanceConnectionUrl: java.util.List hosts>;	virtualinvoke $r18.<java.lang.Object: java.lang.Class getClass()>();	$r19 = staticinvoke <com.mysql.cj.conf.url.LoadBalanceConnectionUrl$add__45: java.util.function.Consumer bootstrap$(java.util.List)>($r18);	interfaceinvoke $r20.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r19);	return
;block_num 3