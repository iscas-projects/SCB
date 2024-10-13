(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2909 0)
(declare-sort var1113 0)
(declare-sort var989 0)
(declare-sort var2590 0)
(declare-sort var2794 0)
(declare-sort var3480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2794_debug/381960894 (String) void)
(declare-fun var3480-init () var3480)
(declare-fun <init>/1909349671 (var3480 String String) void)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun hasMoreTokens/711654492 (var3480) Bool)
(declare-const null-var2909 var2909)
(declare-const null-var1113 var1113)
(declare-const null-var989 var989)
(declare-const null-String String)
(declare-const var2795 var2909) ; Statement: r18 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var2795 null-var2909)))
(declare-const var1756 var1113) ; Statement: r19 := @parameter0: java.util.Properties 
(assert (not (= var1756 null-var1113)))
(declare-const var2568 var989) ; Statement: r10 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var2568 null-var989)))
(declare-const var3756 String) ; Statement: r29 := @parameter2: java.lang.String 
(assert (not (= var3756 null-String)))
(declare-const var1545 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1545 null-String)))
(declare-const var59 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var59 null-String)))
(define-const var544 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var544)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var544!1 String)
(assert true)
(define-const var2630 String (append/1560614132 var544!1 "Parsing for [")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing for [") 
(declare-const var544!2 String)
(assert (str.prefixof var544!1 var544!2))
(assert true)
(define-const var2062 String (append/1560614132 var2630 var1545)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2630!1 String)
(assert (str.prefixof var2630 var2630!1))
(assert true)
(define-const var2604 String (append/1560614132 var2062 "] with value=[")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] with value=[") 
(declare-const var2062!1 String)
(assert (str.prefixof var2062 var2062!1))
(assert true)
(define-const var3399 String (append/1560614132 var2604 var59)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var2604!1 String)
(assert (str.prefixof var2604 var2604!1))
(assert true)
(define-const var264 String (append/1560614132 var3399 "].")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3399!1 String)
(assert (str.prefixof var3399 var3399!1))
(assert true)
(define-const var2506 String (toString/-222306083 var264)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2794_debug/381960894 var2506)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2506!1 String)
(define-const var1100 var3480 var3480-init) ; Statement: $r9 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var1100 var59 ",")) ; Statement: specialinvoke $r9.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, ",") 

(declare-const var1100!1 var3480)
(declare-const var59!1 String)
(declare-const var1515 String)
(assert true)
(define-const var3206 Bool (startsWith/-1785782452 var59!1 ",")) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z0 != 0 goto virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>() 
(assert (not (not (= (ite var3206 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3957 Bool (= var59!1 "")) ; Statement: $z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z2 != 0 goto virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>() 
(assert (not (not (= (ite var3957 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(assert true)
(define-const var2446 Bool (hasMoreTokens/711654492 var1100!1)) ; Statement: $z3 = virtualinvoke $r9.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z3 != 0 goto r30 = virtualinvoke $r9.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert (not (not (= (ite var2446 1 0) 0)))) ; Negate: Cond: $z3 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2794_debug/381960894=([java.lang.String], void), var3480-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean)}
; {var2909=org.apache.log4j.PropertyConfigurator, var2795=r18, var1113=java.util.Properties, var1756=r19, var989=org.apache.log4j.Logger, var2568=r10, var3756=r29, var2590=null_type, var1545=r1, var59=r4, var544=$r0, var2630=$r2, var2062=$r3, var2604=$r5, var3399=$r6, var264=$r7, var2506=$r8, var2794=org.apache.log4j.helpers.LogLog, var3480=java.util.StringTokenizer, var1100=$r9, var1515=",", var3206=$z0, var3957=$z2, var2446=$z3}
; {org.apache.log4j.PropertyConfigurator=var2909, r18=var2795, java.util.Properties=var1113, r19=var1756, org.apache.log4j.Logger=var989, r10=var2568, r29=var3756, null_type=var2590, r1=var1545, r4=var59, $r0=var544, $r2=var2630, $r3=var2062, $r5=var2604, $r6=var3399, $r7=var264, $r8=var2506, org.apache.log4j.helpers.LogLog=var2794, java.util.StringTokenizer=var3480, $r9=var1100, ","=var1515, $z0=var3206, $z2=var3957, $z3=var2446}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r18 := @this: org.apache.log4j.PropertyConfigurator;	r19 := @parameter0: java.util.Properties;	r10 := @parameter1: org.apache.log4j.Logger;	r29 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing for [");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] with value=[");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = new java.util.StringTokenizer;	specialinvoke $r9.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, ",");	$z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z0 != 0 goto virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>();	$z2 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z2 != 0 goto virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>();	$z3 = virtualinvoke $r9.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z3 != 0 goto r30 = virtualinvoke $r9.<java.util.StringTokenizer: java.lang.String nextToken()>();	return
;block_num 4