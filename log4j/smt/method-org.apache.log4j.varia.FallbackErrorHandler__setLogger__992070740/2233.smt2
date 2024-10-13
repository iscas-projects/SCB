(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort var653 0)
(declare-sort var410 0)
(declare-sort var1403 0)
(declare-sort var1868 0)
(declare-sort var3632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1326171653 (var410) String)
(declare-fun cast-from-var653-to-var410 (var653) var410)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1403_debug/381960894 (String) void)
(declare-fun loggers/-2057649827 (var345) var1868)
(declare-fun addElement/-1717065458 (var1868 var3632) void)
(declare-fun cast-from-var653-to-var3632 (var653) var3632)
(declare-const null-var345 var345)
(declare-const null-var653 var653)
(declare-const null-var1868 var1868)
(declare-const var2962 var345) ; Statement: r7 := @this: org.apache.log4j.varia.FallbackErrorHandler 
(assert (not (= var2962 null-var345)))
(declare-const var131 var653) ; Statement: r1 := @parameter0: org.apache.log4j.Logger 
(assert (not (= var131 null-var653)))
(define-const var3665 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3665)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3665!1 String)
(assert true)
(define-const var485 String (append/1560614132 var3665!1 "FB: Adding logger [")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: Adding logger [") 
(declare-const var3665!2 String)
(assert (str.prefixof var3665!1 var3665!2))
(assert true)
(define-const var2303 String (getName/1326171653 (cast-from-var653-to-var410 var131))) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.Logger: java.lang.String getName()>() 
(assert true)
(define-const var1664 String (append/1560614132 var485 var2303)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var485!1 String)
(assert (str.prefixof var485 var485!1))
(assert true)
(define-const var1886 String (append/1560614132 var1664 "].")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1664!1 String)
(assert (str.prefixof var1664 var1664!1))
(assert true)
(define-const var2241 String (toString/-222306083 var1886)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1403_debug/381960894 var2241)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6) 

(declare-const var2241!1 String)
(define-const var3615 var1868 (loggers/-2057649827 var2962)) ; Statement: $r8 = r7.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers> 
 ; Statement: if $r8 != null goto $r9 = r7.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers> 
(assert (not (= var3615 null-var1868))) ; Cond: $r8 != null 
(define-const var929 var1868 (loggers/-2057649827 var2962)) ; Statement: $r9 = r7.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers> 
(assert true)
;(assert (addElement/-1717065458 var929 (cast-from-var653-to-var3632 var131))) ; Statement: virtualinvoke $r9.<java.util.Vector: void addElement(java.lang.Object)>(r1) 

(declare-const var929!1 var1868)
(declare-const var131!1 var653)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var653-to-var410=([org.apache.log4j.Logger], org.apache.log4j.Category), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1403_debug/381960894=([java.lang.String], void), loggers/-2057649827=([org.apache.log4j.varia.FallbackErrorHandler], java.util.Vector), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-var653-to-var3632=([org.apache.log4j.Logger], java.lang.Object)}
; {var345=org.apache.log4j.varia.FallbackErrorHandler, var2962=r7, var653=org.apache.log4j.Logger, var131=r1, var3665=$r0, var485=$r3, var410=org.apache.log4j.Category, var2303=$r2, var1664=$r4, var1886=$r5, var2241=$r6, var1403=org.apache.log4j.helpers.LogLog, var1868=java.util.Vector, var3615=$r8, var929=$r9, var3632=java.lang.Object}
; {org.apache.log4j.varia.FallbackErrorHandler=var345, r7=var2962, org.apache.log4j.Logger=var653, r1=var131, $r0=var3665, $r3=var485, org.apache.log4j.Category=var410, $r2=var2303, $r4=var1664, $r5=var1886, $r6=var2241, org.apache.log4j.helpers.LogLog=var1403, java.util.Vector=var1868, $r8=var3615, $r9=var929, java.lang.Object=var3632}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.varia.FallbackErrorHandler;	r1 := @parameter0: org.apache.log4j.Logger;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: Adding logger [");	$r2 = virtualinvoke r1.<org.apache.log4j.Logger: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6);	$r8 = r7.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers>;	if $r8 != null goto $r9 = r7.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers>;	$r9 = r7.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers>;	virtualinvoke $r9.<java.util.Vector: void addElement(java.lang.Object)>(r1);	return
;block_num 2