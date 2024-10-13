(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3581 0)
(declare-sort var892 0)
(declare-sort var327 0)
(declare-sort var2729 0)
(declare-sort var1419 0)
(declare-sort var3308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAllAppenders/688334887 (var327) var2729)
(declare-fun getLevel/-350490789 (var327) var1419)
(declare-fun var2729_hasMoreElements/-1180312480 (var2729) Bool)
(declare-fun var3308_getRootLogger/730146975 () var3308)
(declare-fun cast-from-var3308-to-var327 (var3308) var327)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1326171653 (var327) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun getAdditivity/331408444 (var327) Bool)
(declare-const null-var3581 var3581)
(declare-const null-var892 var892)
(declare-const null-var327 var327)
(declare-const null-var1419 var1419)
(declare-const var2983 var3581) ; Statement: r22 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var2983 null-var3581)))
(declare-const var3225 var892) ; Statement: r9 := @parameter0: java.io.PrintWriter 
(assert (not (= var3225 null-var892)))
(declare-const var2618 var327) ; Statement: r0 := @parameter1: org.apache.log4j.Category 
(assert (not (= var2618 null-var327)))
(assert true)
(define-const var2787 var2729 (getAllAppenders/688334887 var2618)) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.Enumeration getAllAppenders()>() 
(assert true)
(define-const var1852 var1419 (getLevel/-350490789 var2618)) ; Statement: r2 = virtualinvoke r0.<org.apache.log4j.Category: org.apache.log4j.Level getLevel()>() 
 ; Statement: if r2 != null goto $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert (not (not (= var1852 null-var1419)))) ; Negate: Cond: r2 != null  
(define-const var1736 String "") ; Statement: $r33 = "" 
 ; Statement: goto [?= r34 = $r33] 
(assert true) ; Non Conditional
(define-const var151 String var1736) ; Statement: r34 = $r33 
(assert true) ; Non Conditional
(define-const var1828 Bool (var2729_hasMoreElements/-1180312480 var2787)) ; Statement: $z2 = interfaceinvoke r1.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z2 == 0 goto $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>() 
(assert (= (ite var1828 1 0) 0)) ; Cond: $z2 == 0 
(define-const var459 var3308 var3308_getRootLogger/730146975) ; Statement: $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>() 
 ; Statement: if r0 != $r3 goto $r4 = new java.lang.StringBuffer 
(assert (not (= var2618 (cast-from-var3308-to-var327 var459)))) ; Cond: r0 != $r3 
(define-const var3867 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3867)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3867!1 String)
(assert true)
(define-const var1070 String (append/1560614132 var3867!1 "log4j.logger.")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.logger.") 
(declare-const var3867!2 String)
(assert (str.prefixof var3867!1 var3867!2))
(assert true)
(define-const var1683 String (getName/1326171653 var2618)) ; Statement: $r5 = virtualinvoke r0.<org.apache.log4j.Category: java.lang.String getName()>() 
(assert true)
(define-const var2860 String (append/1560614132 var1070 var1683)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var1070!1 String)
(assert (str.prefixof var1070 var1070!1))
(assert true)
(define-const var1363 String (toString/-222306083 var2860)) ; Statement: $r47 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: if r34 == "" goto $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>() 
(assert (= var151 "")) ; Cond: r34 == "" 
(assert true)
(define-const var1876 Bool (getAdditivity/331408444 var2618)) ; Statement: $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1876 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAllAppenders/688334887=([org.apache.log4j.Category], java.util.Enumeration), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), var2729_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), var3308_getRootLogger/730146975=([], org.apache.log4j.Logger), cast-from-var3308-to-var327=([org.apache.log4j.Logger], org.apache.log4j.Category), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1326171653=([org.apache.log4j.Category], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), getAdditivity/331408444=([org.apache.log4j.Category], boolean)}
; {var3581=org.apache.log4j.config.PropertyPrinter, var2983=r22, var892=java.io.PrintWriter, var3225=r9, var327=org.apache.log4j.Category, var2618=r0, var2729=java.util.Enumeration, var2787=r1, var1419=org.apache.log4j.Level, var1852=r2, var1736=$r33, var151=r34, var1828=$z2, var3308=org.apache.log4j.Logger, var459=$r3, var3867=$r4, var1070=$r6, var1683=$r5, var2860=$r7, var1363=$r47, var1876=$z0}
; {org.apache.log4j.config.PropertyPrinter=var3581, r22=var2983, java.io.PrintWriter=var892, r9=var3225, org.apache.log4j.Category=var327, r0=var2618, java.util.Enumeration=var2729, r1=var2787, org.apache.log4j.Level=var1419, r2=var1852, $r33=var1736, r34=var151, $z2=var1828, org.apache.log4j.Logger=var3308, $r3=var459, $r4=var3867, $r6=var1070, $r5=var1683, $r7=var2860, $r47=var1363, $z0=var1876}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r22 := @this: org.apache.log4j.config.PropertyPrinter;	r9 := @parameter0: java.io.PrintWriter;	r0 := @parameter1: org.apache.log4j.Category;	r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.Enumeration getAllAppenders()>();	r2 = virtualinvoke r0.<org.apache.log4j.Category: org.apache.log4j.Level getLevel()>();	if r2 != null goto $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>();	$r33 = "";	goto [?= r34 = $r33];	r34 = $r33;	$z2 = interfaceinvoke r1.<java.util.Enumeration: boolean hasMoreElements()>();	if $z2 == 0 goto $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>();	$r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>();	if r0 != $r3 goto $r4 = new java.lang.StringBuffer;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.logger.");	$r5 = virtualinvoke r0.<org.apache.log4j.Category: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r47 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	if r34 == "" goto $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>();	$z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>();	if $z0 != 0 goto return;	return
;block_num 9