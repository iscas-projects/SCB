(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2456 0)
(declare-sort var2965 0)
(declare-sort var2025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2965_getName/-564791716 (var2965) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2025_debug/381960894 (String) void)
(declare-fun primary/-2057649827 (var2456) var2965)
(declare-const null-var2456 var2456)
(declare-const null-var2965 var2965)
(declare-const var1088 var2456) ; Statement: r7 := @this: org.apache.log4j.varia.FallbackErrorHandler 
(assert (not (= var1088 null-var2456)))
(declare-const var887 var2965) ; Statement: r1 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var887 null-var2965)))
(define-const var3669 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3669)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3669!1 String)
(assert true)
(define-const var195 String (append/1560614132 var3669!1 "FB: Setting primary appender to [")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: Setting primary appender to [") 
(declare-const var3669!2 String)
(assert (str.prefixof var3669!1 var3669!2))
(define-const var1619 String (var2965_getName/-564791716 var887)) ; Statement: $r2 = interfaceinvoke r1.<org.apache.log4j.Appender: java.lang.String getName()>() 
(assert true)
(define-const var1154 String (append/1560614132 var195 var1619)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var195!1 String)
(assert (str.prefixof var195 var195!1))
(assert true)
(define-const var510 String (append/1560614132 var1154 "].")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1154!1 String)
(assert (str.prefixof var1154 var1154!1))
(assert true)
(define-const var3413 String (toString/-222306083 var510)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2025_debug/381960894 var3413)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6) 

(declare-const var3413!1 String)
(declare-const var1088!1 var2456)
(assert (not (= var1088!1 null-var2456)))
(assert (= (primary/-2057649827 var1088!1) var887)) ; Statement: r7.<org.apache.log4j.varia.FallbackErrorHandler: org.apache.log4j.Appender primary> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2965_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2025_debug/381960894=([java.lang.String], void), primary/-2057649827=([org.apache.log4j.varia.FallbackErrorHandler], org.apache.log4j.Appender)}
; {var2456=org.apache.log4j.varia.FallbackErrorHandler, var1088=r7, var2965=org.apache.log4j.Appender, var887=r1, var3669=$r0, var195=$r3, var1619=$r2, var1154=$r4, var510=$r5, var3413=$r6, var2025=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.varia.FallbackErrorHandler=var2456, r7=var1088, org.apache.log4j.Appender=var2965, r1=var887, $r0=var3669, $r3=var195, $r2=var1619, $r4=var1154, $r5=var510, $r6=var3413, org.apache.log4j.helpers.LogLog=var2025}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.varia.FallbackErrorHandler;	r1 := @parameter0: org.apache.log4j.Appender;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: Setting primary appender to [");	$r2 = interfaceinvoke r1.<org.apache.log4j.Appender: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6);	r7.<org.apache.log4j.varia.FallbackErrorHandler: org.apache.log4j.Appender primary> = r1;	return
;block_num 1