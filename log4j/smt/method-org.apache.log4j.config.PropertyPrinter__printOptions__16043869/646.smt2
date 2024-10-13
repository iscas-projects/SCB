(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3158 0)
(declare-sort var2103 0)
(declare-sort var2170 0)
(declare-sort var2230 0)
(declare-sort var1085 0)
(declare-sort var3476 0)
(declare-sort var2226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAllAppenders/688334887 (var2170) var2230)
(declare-fun getLevel/-350490789 (var2170) var1085)
(declare-fun toString/2069587822 (var3476) String)
(declare-fun cast-from-var1085-to-var3476 (var1085) var3476)
(declare-fun var2230_hasMoreElements/-1180312480 (var2230) Bool)
(declare-fun var2226_getRootLogger/730146975 () var2226)
(declare-fun cast-from-var2226-to-var2170 (var2226) var2170)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1326171653 (var2170) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun getAdditivity/331408444 (var2170) Bool)
(declare-const null-var3158 var3158)
(declare-const null-var2103 var2103)
(declare-const null-var2170 var2170)
(declare-const null-var1085 var1085)
(declare-const var1532 var3158) ; Statement: r22 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var1532 null-var3158)))
(declare-const var1667 var2103) ; Statement: r9 := @parameter0: java.io.PrintWriter 
(assert (not (= var1667 null-var2103)))
(declare-const var2006 var2170) ; Statement: r0 := @parameter1: org.apache.log4j.Category 
(assert (not (= var2006 null-var2170)))
(assert true)
(define-const var943 var2230 (getAllAppenders/688334887 var2006)) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.Enumeration getAllAppenders()>() 
(assert true)
(define-const var3248 var1085 (getLevel/-350490789 var2006)) ; Statement: r2 = virtualinvoke r0.<org.apache.log4j.Category: org.apache.log4j.Level getLevel()>() 
 ; Statement: if r2 != null goto $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert (not (= var3248 null-var1085))) ; Cond: r2 != null 
(assert true)
(define-const var3480 String (toString/2069587822 (cast-from-var1085-to-var3476 var3248))) ; Statement: $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2319 String var3480) ; Statement: r34 = $r33 
(assert true) ; Non Conditional
(define-const var653 Bool (var2230_hasMoreElements/-1180312480 var943)) ; Statement: $z2 = interfaceinvoke r1.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z2 == 0 goto $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>() 
(assert (= (ite var653 1 0) 0)) ; Cond: $z2 == 0 
(define-const var230 var2226 var2226_getRootLogger/730146975) ; Statement: $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>() 
 ; Statement: if r0 != $r3 goto $r4 = new java.lang.StringBuffer 
(assert (not (= var2006 (cast-from-var2226-to-var2170 var230)))) ; Cond: r0 != $r3 
(define-const var1330 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1330)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1330!1 String)
(assert true)
(define-const var784 String (append/1560614132 var1330!1 "log4j.logger.")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.logger.") 
(declare-const var1330!2 String)
(assert (str.prefixof var1330!1 var1330!2))
(assert true)
(define-const var3443 String (getName/1326171653 var2006)) ; Statement: $r5 = virtualinvoke r0.<org.apache.log4j.Category: java.lang.String getName()>() 
(assert true)
(define-const var3223 String (append/1560614132 var784 var3443)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var784!1 String)
(assert (str.prefixof var784 var784!1))
(assert true)
(define-const var2453 String (toString/-222306083 var3223)) ; Statement: $r47 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: if r34 == "" goto $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>() 
(assert (= var2319 "")) ; Cond: r34 == "" 
(assert true)
(define-const var2372 Bool (getAdditivity/331408444 var2006)) ; Statement: $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2372 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAllAppenders/688334887=([org.apache.log4j.Category], java.util.Enumeration), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), toString/2069587822=([org.apache.log4j.Priority], java.lang.String), cast-from-var1085-to-var3476=([org.apache.log4j.Level], org.apache.log4j.Priority), var2230_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), var2226_getRootLogger/730146975=([], org.apache.log4j.Logger), cast-from-var2226-to-var2170=([org.apache.log4j.Logger], org.apache.log4j.Category), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1326171653=([org.apache.log4j.Category], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), getAdditivity/331408444=([org.apache.log4j.Category], boolean)}
; {var3158=org.apache.log4j.config.PropertyPrinter, var1532=r22, var2103=java.io.PrintWriter, var1667=r9, var2170=org.apache.log4j.Category, var2006=r0, var2230=java.util.Enumeration, var943=r1, var1085=org.apache.log4j.Level, var3248=r2, var3476=org.apache.log4j.Priority, var3480=$r33, var2319=r34, var653=$z2, var2226=org.apache.log4j.Logger, var230=$r3, var1330=$r4, var784=$r6, var3443=$r5, var3223=$r7, var2453=$r47, var2372=$z0}
; {org.apache.log4j.config.PropertyPrinter=var3158, r22=var1532, java.io.PrintWriter=var2103, r9=var1667, org.apache.log4j.Category=var2170, r0=var2006, java.util.Enumeration=var2230, r1=var943, org.apache.log4j.Level=var1085, r2=var3248, org.apache.log4j.Priority=var3476, $r33=var3480, r34=var2319, $z2=var653, org.apache.log4j.Logger=var2226, $r3=var230, $r4=var1330, $r6=var784, $r5=var3443, $r7=var3223, $r47=var2453, $z0=var2372}
;seq <org.apache.log4j.Priority: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r22 := @this: org.apache.log4j.config.PropertyPrinter;	r9 := @parameter0: java.io.PrintWriter;	r0 := @parameter1: org.apache.log4j.Category;	r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.Enumeration getAllAppenders()>();	r2 = virtualinvoke r0.<org.apache.log4j.Category: org.apache.log4j.Level getLevel()>();	if r2 != null goto $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>();	$r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>();	r34 = $r33;	$z2 = interfaceinvoke r1.<java.util.Enumeration: boolean hasMoreElements()>();	if $z2 == 0 goto $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>();	$r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>();	if r0 != $r3 goto $r4 = new java.lang.StringBuffer;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.logger.");	$r5 = virtualinvoke r0.<org.apache.log4j.Category: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r47 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	if r34 == "" goto $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>();	$z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>();	if $z0 != 0 goto return;	return
;block_num 9