(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2266 0)
(declare-sort var1091 0)
(declare-sort var2695 0)
(declare-sort var1667 0)
(declare-sort var827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1091_getAttribute/210607306 (var1091 String) String)
(declare-fun subst/-1514982940 (var2266 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2695_debug/381960894 (String) void)
(declare-fun var2695_error/1978659241 (String var827) void)
(declare-fun cast-from-var1667-to-var827 (var1667) var827)
(declare-const null-var2266 var2266)
(declare-const null-var1091 var1091)
(declare-const null-var1667 var1667)
(declare-const var999 var2266) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var999 null-var2266)))
(declare-const var2907 var1091) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2907 null-var1091)))
(define-const var2690 String (var1091_getAttribute/210607306 var2907 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var3567 String (subst/-1514982940 var999 var2690)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1249 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1249)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1249!1 String)
(assert true)
(define-const var773 String (append/1560614132 var1249!1 "Parsing layout of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"") 
(declare-const var1249!2 String)
(assert (str.prefixof var1249!1 var1249!2))
(assert true)
(define-const var3382 String (append/1560614132 var773 var3567)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var773!1 String)
(assert (str.prefixof var773 var773!1))
(assert true)
(define-const var1697 String (append/1560614132 var3382 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var3382!1 String)
(assert (str.prefixof var3382 var3382!1))
(assert true)
(define-const var1176 String (toString/-222306083 var1697)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2695_debug/381960894 var1176)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1176!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var740 var1667) ; Statement: $r17 := @caughtexception 
(assert (not (= var740 null-var1667)))
(define-const var1970 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var1970 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1319 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 
(assert (= (ite var1319 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var2695_error/1978659241 "Could not create the Layout. Reported error follows." (cast-from-var1667-to-var827 var740))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 

(declare-const var3943 String)
(declare-const var740!1 var1667)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1091_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2695_debug/381960894=([java.lang.String], void), var2695_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1667-to-var827=([java.lang.Exception], java.lang.Throwable)}
; {var2266=org.apache.log4j.xml.DOMConfigurator, var999=r0, var1091=org.w3c.dom.Element, var2907=r1, var2690=$r2, var3567=r3, var1249=$r4, var773=$r5, var3382=$r6, var1697=$r7, var1176=$r8, var2695=org.apache.log4j.helpers.LogLog, var1667=java.lang.Exception, var740=$r17, var1970=$z1, var1319=$z2, var827=java.lang.Throwable, var3943="Could not create the Layout. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var2266, r0=var999, org.w3c.dom.Element=var1091, r1=var2907, $r2=var2690, r3=var3567, $r4=var1249, $r5=var773, $r6=var3382, $r7=var1697, $r8=var1176, org.apache.log4j.helpers.LogLog=var2695, java.lang.Exception=var1667, $r17=var740, $z1=var1970, $z2=var1319, java.lang.Throwable=var827, "Could not create the Layout. Reported error follows."=var3943}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	return null
;block_num 4