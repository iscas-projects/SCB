(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1832 0)
(declare-sort var3381 0)
(declare-sort var1050 0)
(declare-sort var375 0)
(declare-sort var3668 0)
(declare-sort var558 0)
(declare-sort var337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAllAppenders/688334887 (var1050) var375)
(declare-fun getLevel/-350490789 (var1050) var3668)
(declare-fun toString/2069587822 (var558) String)
(declare-fun cast-from-var3668-to-var558 (var3668) var558)
(declare-fun var375_hasMoreElements/-1180312480 (var375) Bool)
(declare-fun var337_getRootLogger/730146975 () var337)
(declare-fun cast-from-var337-to-var1050 (var337) var1050)
(declare-fun getAdditivity/331408444 (var1050) Bool)
(declare-const null-var1832 var1832)
(declare-const null-var3381 var3381)
(declare-const null-var1050 var1050)
(declare-const null-var3668 var3668)
(declare-const var3833 var1832) ; Statement: r22 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var3833 null-var1832)))
(declare-const var1219 var3381) ; Statement: r9 := @parameter0: java.io.PrintWriter 
(assert (not (= var1219 null-var3381)))
(declare-const var2244 var1050) ; Statement: r0 := @parameter1: org.apache.log4j.Category 
(assert (not (= var2244 null-var1050)))
(assert true)
(define-const var3347 var375 (getAllAppenders/688334887 var2244)) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.Enumeration getAllAppenders()>() 
(assert true)
(define-const var690 var3668 (getLevel/-350490789 var2244)) ; Statement: r2 = virtualinvoke r0.<org.apache.log4j.Category: org.apache.log4j.Level getLevel()>() 
 ; Statement: if r2 != null goto $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert (not (= var690 null-var3668))) ; Cond: r2 != null 
(assert true)
(define-const var3566 String (toString/2069587822 (cast-from-var3668-to-var558 var690))) ; Statement: $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var93 String var3566) ; Statement: r34 = $r33 
(assert true) ; Non Conditional
(define-const var1579 Bool (var375_hasMoreElements/-1180312480 var3347)) ; Statement: $z2 = interfaceinvoke r1.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z2 == 0 goto $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>() 
(assert (= (ite var1579 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2240 var337 var337_getRootLogger/730146975) ; Statement: $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>() 
 ; Statement: if r0 != $r3 goto $r4 = new java.lang.StringBuffer 
(assert (not (not (= var2244 (cast-from-var337-to-var1050 var2240))))) ; Negate: Cond: r0 != $r3  
(define-const var1839 String "log4j.rootLogger") ; Statement: $r47 = "log4j.rootLogger" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r34 == "" goto $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>() 
(assert (= var93 "")) ; Cond: r34 == "" 
(assert true)
(define-const var243 Bool (getAdditivity/331408444 var2244)) ; Statement: $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var243 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAllAppenders/688334887=([org.apache.log4j.Category], java.util.Enumeration), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), toString/2069587822=([org.apache.log4j.Priority], java.lang.String), cast-from-var3668-to-var558=([org.apache.log4j.Level], org.apache.log4j.Priority), var375_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), var337_getRootLogger/730146975=([], org.apache.log4j.Logger), cast-from-var337-to-var1050=([org.apache.log4j.Logger], org.apache.log4j.Category), getAdditivity/331408444=([org.apache.log4j.Category], boolean)}
; {var1832=org.apache.log4j.config.PropertyPrinter, var3833=r22, var3381=java.io.PrintWriter, var1219=r9, var1050=org.apache.log4j.Category, var2244=r0, var375=java.util.Enumeration, var3347=r1, var3668=org.apache.log4j.Level, var690=r2, var558=org.apache.log4j.Priority, var3566=$r33, var93=r34, var1579=$z2, var337=org.apache.log4j.Logger, var2240=$r3, var1839=$r47, var243=$z0}
; {org.apache.log4j.config.PropertyPrinter=var1832, r22=var3833, java.io.PrintWriter=var3381, r9=var1219, org.apache.log4j.Category=var1050, r0=var2244, java.util.Enumeration=var375, r1=var3347, org.apache.log4j.Level=var3668, r2=var690, org.apache.log4j.Priority=var558, $r33=var3566, r34=var93, $z2=var1579, org.apache.log4j.Logger=var337, $r3=var2240, $r47=var1839, $z0=var243}
;seq <org.apache.log4j.Priority: java.lang.String toString()>
;cnt {}
;stmts r22 := @this: org.apache.log4j.config.PropertyPrinter;	r9 := @parameter0: java.io.PrintWriter;	r0 := @parameter1: org.apache.log4j.Category;	r1 = virtualinvoke r0.<org.apache.log4j.Category: java.util.Enumeration getAllAppenders()>();	r2 = virtualinvoke r0.<org.apache.log4j.Category: org.apache.log4j.Level getLevel()>();	if r2 != null goto $r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>();	$r33 = virtualinvoke r2.<org.apache.log4j.Level: java.lang.String toString()>();	r34 = $r33;	$z2 = interfaceinvoke r1.<java.util.Enumeration: boolean hasMoreElements()>();	if $z2 == 0 goto $r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>();	$r3 = staticinvoke <org.apache.log4j.Logger: org.apache.log4j.Logger getRootLogger()>();	if r0 != $r3 goto $r4 = new java.lang.StringBuffer;	$r47 = "log4j.rootLogger";	goto [?= (branch)];	if r34 == "" goto $z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>();	$z0 = virtualinvoke r0.<org.apache.log4j.Category: boolean getAdditivity()>();	if $z0 != 0 goto return;	return
;block_num 9