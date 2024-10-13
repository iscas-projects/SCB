(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1036 0)
(declare-sort var2563 0)
(declare-sort var3443 0)
(declare-sort var15 0)
(declare-sort var2099 0)
(declare-sort var3058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2563_getAttribute/210607306 (var2563 String) String)
(declare-fun subst/-1514982940 (var1036 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3443_debug/381960894 (String) void)
(declare-fun var2099_currentThread/-1037784612 () var2099)
(declare-fun interrupt/1189171174 (var2099) void)
(declare-fun var3443_error/1978659241 (String var3058) void)
(declare-fun cast-from-var15-to-var3058 (var15) var3058)
(declare-const null-var1036 var1036)
(declare-const null-var2563 var2563)
(declare-const null-var15 var15)
(declare-const var62 var1036) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var62 null-var1036)))
(declare-const var973 var2563) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var973 null-var2563)))
(define-const var1439 String (var2563_getAttribute/210607306 var973 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var3981 String (subst/-1514982940 var62 var1439)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var773 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var773)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var773!1 String)
(assert true)
(define-const var150 String (append/1560614132 var773!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var773!2 String)
(assert (str.prefixof var773!1 var773!2))
(assert true)
(define-const var3253 String (append/1560614132 var150 var3981)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var150!1 String)
(assert (str.prefixof var150 var150!1))
(assert true)
(define-const var1796 String (append/1560614132 var3253 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var3253!1 String)
(assert (str.prefixof var3253 var3253!1))
(assert true)
(define-const var2174 String (toString/-222306083 var1796)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3443_debug/381960894 var2174)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2174!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var400 var15) ; Statement: $r17 := @caughtexception 
(assert (not (= var400 null-var15)))
(define-const var256 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var256 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3740 var2099 var2099_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var3740)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var3740!1 var2099)
(assert true) ; Non Conditional
;(assert (var3443_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var15-to-var3058 var400))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var3061 String)
(declare-const var400!1 var15)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2563_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3443_debug/381960894=([java.lang.String], void), var2099_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var3443_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var15-to-var3058=([java.lang.Exception], java.lang.Throwable)}
; {var1036=org.apache.log4j.xml.DOMConfigurator, var62=r0, var2563=org.w3c.dom.Element, var973=r1, var1439=$r2, var3981=r3, var773=$r4, var150=$r5, var3253=$r6, var1796=$r7, var2174=$r8, var3443=org.apache.log4j.helpers.LogLog, var15=java.lang.Exception, var400=$r17, var256=$z1, var2099=java.lang.Thread, var3740=$r18, var3058=java.lang.Throwable, var3061="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var1036, r0=var62, org.w3c.dom.Element=var2563, r1=var973, $r2=var1439, r3=var3981, $r4=var773, $r5=var150, $r6=var3253, $r7=var1796, $r8=var2174, org.apache.log4j.helpers.LogLog=var3443, java.lang.Exception=var15, $r17=var400, $z1=var256, java.lang.Thread=var2099, $r18=var3740, java.lang.Throwable=var3058, "Could not create the ThrowableRenderer. Reported error follows."=var3061}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 4