(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2357 0)
(declare-sort var949 0)
(declare-sort var2404 0)
(declare-sort var1763 0)
(declare-sort var317 0)
(declare-sort var2041 0)
(declare-sort var1606 0)
(declare-sort var1209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/862705079 (var2357) var949)
(declare-fun getPropertySet/92288684 (var1763) var2404)
(declare-fun cast-from-var949-to-var1763 (var949) var1763)
(declare-fun String-init () String)
(declare-fun getScheme/1149584850 (var317) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProcessHost/707658293 (var949) String)
(declare-fun getPort/2039562443 (var949) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun defaultSchemaName/862705079 (var2357) String)
(declare-fun var2041_keySet/-712633290 (var2041) var1209)
(declare-fun var1209_iterator/1911472585 (var1209) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2357 var2357)
(declare-const var317-XDEVAPI_SESSION var317)
(declare-const var1606-PROPERTY_KEY_TO_PROPERTY_DEFINITION var2041)
(declare-const var3165 var2357) ; Statement: r0 := @this: com.mysql.cj.xdevapi.SessionImpl 
(assert (not (= var3165 null-var2357)))
(define-const var1962 var949 (session/862705079 var3165)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session> 
(assert true)
(define-const var549 var2404 (getPropertySet/92288684 (cast-from-var949-to-var1763 var1962))) ; Statement: r2 = virtualinvoke $r1.<com.mysql.cj.MysqlxSession: com.mysql.cj.conf.PropertySet getPropertySet()>() 
(define-const var3455 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var925 var317 var317-XDEVAPI_SESSION) ; Statement: $r4 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type XDEVAPI_SESSION> 
(assert true)
(define-const var1072 String (getScheme/1149584850 var925)) ; Statement: $r5 = virtualinvoke $r4.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>() 
(assert true)
;(assert (<init>/-1061048412 var3455 var1072)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var3455!1 String)
(assert (= var3455!1 var1072))
(assert true)
(define-const var2715 String (append/672562846 var3455!1 "//")) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//") 
(declare-const var3455!2 String)
(assert (= var3455!2 (str.++ var3455!1 "//")))
(define-const var3758 var949 (session/862705079 var3165)) ; Statement: $r6 = r0.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session> 
(assert true)
(define-const var940 String (getProcessHost/707658293 var3758)) ; Statement: $r7 = virtualinvoke $r6.<com.mysql.cj.MysqlxSession: java.lang.String getProcessHost()>() 
(assert true)
(define-const var551 String (append/672562846 var2715 var940)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2715!1 String)
(assert (= var2715!1 (str.++ var2715 var940)))
(assert true)
(define-const var2660 String (append/672562846 var551 ":")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var551!1 String)
(assert (= var551!1 (str.++ var551 ":")))
(define-const var1154 var949 (session/862705079 var3165)) ; Statement: $r10 = r0.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session> 
(assert true)
(define-const var907 Int (getPort/2039562443 var1154)) ; Statement: $i0 = virtualinvoke $r10.<com.mysql.cj.MysqlxSession: int getPort()>() 
(assert true)
(define-const var1573 String (append/-1001720160 var2660 var907)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2660!1 String)
(assert (str.prefixof var2660 var2660!1))
(assert true)
(define-const var3860 String (append/672562846 var1573 "/")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1573!1 String)
(assert (= var1573!1 (str.++ var1573 "/")))
(define-const var3195 String (defaultSchemaName/862705079 var3165)) ; Statement: $r13 = r0.<com.mysql.cj.xdevapi.SessionImpl: java.lang.String defaultSchemaName> 
(assert true)
(define-const var2551 String (append/672562846 var3860 var3195)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 var3195)))
(assert true)
;(assert (append/672562846 var2551 "?")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2551!1 String)
(assert (= var2551!1 (str.++ var2551 "?")))
(define-const var2782 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var510 var2041 var1606-PROPERTY_KEY_TO_PROPERTY_DEFINITION) ; Statement: $r16 = <com.mysql.cj.conf.PropertyDefinitions: java.util.Map PROPERTY_KEY_TO_PROPERTY_DEFINITION> 
(define-const var2550 var1209 (var2041_keySet/-712633290 var510)) ; Statement: $r17 = interfaceinvoke $r16.<java.util.Map: java.util.Set keySet()>() 
(define-const var2201 Iterator (var1209_iterator/1911472585 var2550)) ; Statement: r18 = interfaceinvoke $r17.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var362 Bool (Iterator_hasNext/-1669924200 var2201)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r19 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var362 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2089 String (toString/-2075883882 var3455!2)) ; Statement: $r19 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {session/862705079=([com.mysql.cj.xdevapi.SessionImpl], com.mysql.cj.MysqlxSession), getPropertySet/92288684=([com.mysql.cj.CoreSession], com.mysql.cj.conf.PropertySet), cast-from-var949-to-var1763=([com.mysql.cj.MysqlxSession], com.mysql.cj.CoreSession), String-init=([], java.lang.StringBuilder), getScheme/1149584850=([com.mysql.cj.conf.ConnectionUrl$Type], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProcessHost/707658293=([com.mysql.cj.MysqlxSession], java.lang.String), getPort/2039562443=([com.mysql.cj.MysqlxSession], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), defaultSchemaName/862705079=([com.mysql.cj.xdevapi.SessionImpl], java.lang.String), var2041_keySet/-712633290=([java.util.Map], java.util.Set), var1209_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2357=com.mysql.cj.xdevapi.SessionImpl, var3165=r0, var949=com.mysql.cj.MysqlxSession, var1962=$r1, var2404=com.mysql.cj.conf.PropertySet, var1763=com.mysql.cj.CoreSession, var549=r2, var3455=$r3, var317=com.mysql.cj.conf.ConnectionUrl$Type, var925=$r4, var1072=$r5, var2715=$r8, var3758=$r6, var940=$r7, var551=$r9, var2660=$r11, var1154=$r10, var907=$i0, var1573=$r12, var3860=$r14, var3195=$r13, var2551=$r15, var2782=z4, var2041=java.util.Map, var1606=com.mysql.cj.conf.PropertyDefinitions, var510=$r16, var1209=java.util.Set, var2550=$r17, var2201=r18, var362=$z0, var2089=$r19}
; {com.mysql.cj.xdevapi.SessionImpl=var2357, r0=var3165, com.mysql.cj.MysqlxSession=var949, $r1=var1962, com.mysql.cj.conf.PropertySet=var2404, com.mysql.cj.CoreSession=var1763, r2=var549, $r3=var3455, com.mysql.cj.conf.ConnectionUrl$Type=var317, $r4=var925, $r5=var1072, $r8=var2715, $r6=var3758, $r7=var940, $r9=var551, $r11=var2660, $r10=var1154, $i0=var907, $r12=var1573, $r14=var3860, $r13=var3195, $r15=var2551, z4=var2782, java.util.Map=var2041, com.mysql.cj.conf.PropertyDefinitions=var1606, $r16=var510, java.util.Set=var1209, $r17=var2550, r18=var2201, $z0=var362, $r19=var2089}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.SessionImpl;	$r1 = r0.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session>;	r2 = virtualinvoke $r1.<com.mysql.cj.MysqlxSession: com.mysql.cj.conf.PropertySet getPropertySet()>();	$r3 = new java.lang.StringBuilder;	$r4 = <com.mysql.cj.conf.ConnectionUrl$Type: com.mysql.cj.conf.ConnectionUrl$Type XDEVAPI_SESSION>;	$r5 = virtualinvoke $r4.<com.mysql.cj.conf.ConnectionUrl$Type: java.lang.String getScheme()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("//");	$r6 = r0.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session>;	$r7 = virtualinvoke $r6.<com.mysql.cj.MysqlxSession: java.lang.String getProcessHost()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r10 = r0.<com.mysql.cj.xdevapi.SessionImpl: com.mysql.cj.MysqlxSession session>;	$i0 = virtualinvoke $r10.<com.mysql.cj.MysqlxSession: int getPort()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r13 = r0.<com.mysql.cj.xdevapi.SessionImpl: java.lang.String defaultSchemaName>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	z4 = 1;	$r16 = <com.mysql.cj.conf.PropertyDefinitions: java.util.Map PROPERTY_KEY_TO_PROPERTY_DEFINITION>;	$r17 = interfaceinvoke $r16.<java.util.Map: java.util.Set keySet()>();	r18 = interfaceinvoke $r17.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r19 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 3