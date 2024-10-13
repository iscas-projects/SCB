(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort var512 0)
(declare-sort var576 0)
(declare-sort var2061 0)
(declare-sort var1724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1326171653 (var512) String)
(declare-fun var576_getName/-564791716 (var576) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var512 var1724) void)
(declare-fun cast-from-var2061-to-var512 (var2061) var512)
(declare-fun cast-from-String-to-var1724 (String) var1724)
(declare-const null-var55 var55)
(declare-const null-var512 var512)
(declare-const null-var576 var576)
(declare-const var55-log var2061)
(declare-const var1175 var55) ; Statement: r11 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean 
(assert (not (= var1175 null-var55)))
(declare-const var1978 var512) ; Statement: r2 := @parameter0: org.apache.log4j.Category 
(assert (not (= var1978 null-var512)))
(declare-const var2917 var576) ; Statement: r6 := @parameter1: org.apache.log4j.Appender 
(assert (not (= var2917 null-var576)))
(define-const var1391 var2061 var55-log) ; Statement: $r1 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log> 
(define-const var522 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var522)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var522!1 String)
(assert true)
(define-const var2761 String (append/1560614132 var522!1 "removeAppenderCalled: logger=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("removeAppenderCalled: logger=") 
(declare-const var522!2 String)
(assert (str.prefixof var522!1 var522!2))
(assert true)
(define-const var1995 String (getName/1326171653 var1978)) ; Statement: $r3 = virtualinvoke r2.<org.apache.log4j.Category: java.lang.String getName()>() 
(assert true)
(define-const var419 String (append/1560614132 var2761 var1995)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2761!1 String)
(assert (str.prefixof var2761 var2761!1))
(assert true)
(define-const var3658 String (append/1560614132 var419 ", appender=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", appender=") 
(declare-const var419!1 String)
(assert (str.prefixof var419 var419!1))
(define-const var1205 String (var576_getName/-564791716 var2917)) ; Statement: $r7 = interfaceinvoke r6.<org.apache.log4j.Appender: java.lang.String getName()>() 
(assert true)
(define-const var1397 String (append/1560614132 var3658 var1205)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3658!1 String)
(assert (str.prefixof var3658 var3658!1))
(assert true)
(define-const var2026 String (toString/-222306083 var1397)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var2061-to-var512 var1391) (cast-from-String-to-var1724 var2026))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r10) 

(declare-const var1391!1 var2061)
(declare-const var2026!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1326171653=([org.apache.log4j.Category], java.lang.String), var576_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var2061-to-var512=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1724=([java.lang.String], java.lang.Object)}
; {var55=org.apache.log4j.jmx.HierarchyDynamicMBean, var1175=r11, var512=org.apache.log4j.Category, var1978=r2, var576=org.apache.log4j.Appender, var2917=r6, var2061=org.apache.log4j.Logger, var1391=$r1, var522=$r0, var2761=$r4, var1995=$r3, var419=$r5, var3658=$r8, var1205=$r7, var1397=$r9, var2026=$r10, var1724=java.lang.Object}
; {org.apache.log4j.jmx.HierarchyDynamicMBean=var55, r11=var1175, org.apache.log4j.Category=var512, r2=var1978, org.apache.log4j.Appender=var576, r6=var2917, org.apache.log4j.Logger=var2061, $r1=var1391, $r0=var522, $r4=var2761, $r3=var1995, $r5=var419, $r8=var3658, $r7=var1205, $r9=var1397, $r10=var2026, java.lang.Object=var1724}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.log4j.jmx.HierarchyDynamicMBean;	r2 := @parameter0: org.apache.log4j.Category;	r6 := @parameter1: org.apache.log4j.Appender;	$r1 = <org.apache.log4j.jmx.HierarchyDynamicMBean: org.apache.log4j.Logger log>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("removeAppenderCalled: logger=");	$r3 = virtualinvoke r2.<org.apache.log4j.Category: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", appender=");	$r7 = interfaceinvoke r6.<org.apache.log4j.Appender: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r10);	return
;block_num 1