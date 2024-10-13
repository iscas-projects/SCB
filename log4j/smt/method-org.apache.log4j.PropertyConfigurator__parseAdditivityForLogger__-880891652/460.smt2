(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2347 0)
(declare-sort var1642 0)
(declare-sort var3988 0)
(declare-sort var2392 0)
(declare-sort var983 0)
(declare-sort var1870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var983_findAndSubst/1425145515 (String var1642) String)
(declare-fun var1870_debug/381960894 (String) void)
(declare-const null-var2347 var2347)
(declare-const null-var1642 var1642)
(declare-const null-var3988 var3988)
(declare-const null-String String)
(declare-const var3651 var2347) ; Statement: r21 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var3651 null-var2347)))
(declare-const var220 var1642) ; Statement: r4 := @parameter0: java.util.Properties 
(assert (not (= var220 null-var1642)))
(declare-const var2706 var3988) ; Statement: r20 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var2706 null-var3988)))
(declare-const var3154 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3154 null-String)))
(define-const var3716 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3716)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3716!1 String)
(assert true)
(define-const var2655 String (append/1560614132 var3716!1 "log4j.additivity.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.additivity.") 
(declare-const var3716!2 String)
(assert (str.prefixof var3716!1 var3716!2))
(assert true)
(define-const var2887 String (append/1560614132 var2655 var3154)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2655!1 String)
(assert (str.prefixof var2655 var2655!1))
(assert true)
(define-const var474 String (toString/-222306083 var2887)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var460 String (var983_findAndSubst/1425145515 var474 var220)) ; Statement: r6 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r5, r4) 
(define-const var3207 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3207)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3207!1 String)
(assert true)
(define-const var2096 String (append/1560614132 var3207!1 "Handling log4j.additivity.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Handling log4j.additivity.") 
(declare-const var3207!2 String)
(assert (str.prefixof var3207!1 var3207!2))
(assert true)
(define-const var2606 String (append/1560614132 var2096 var3154)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2096!1 String)
(assert (str.prefixof var2096 var2096!1))
(assert true)
(define-const var2908 String (append/1560614132 var2606 "=[")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=[") 
(declare-const var2606!1 String)
(assert (str.prefixof var2606 var2606!1))
(assert true)
(define-const var1975 String (append/1560614132 var2908 var460)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r6) 
(declare-const var2908!1 String)
(assert (str.prefixof var2908 var2908!1))
(assert true)
(define-const var3718 String (append/1560614132 var1975 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var1975!1 String)
(assert (str.prefixof var1975 var1975!1))
(assert true)
(define-const var3483 String (toString/-222306083 var3718)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1870_debug/381960894 var3483)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r13) 

(declare-const var3483!1 String)
 ; Statement: if r6 == null goto return 
(assert (= var460 null-String)) ; Cond: r6 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var983_findAndSubst/1425145515=([java.lang.String, java.util.Properties], java.lang.String), var1870_debug/381960894=([java.lang.String], void)}
; {var2347=org.apache.log4j.PropertyConfigurator, var3651=r21, var1642=java.util.Properties, var220=r4, var3988=org.apache.log4j.Logger, var2706=r20, var3154=r1, var2392=null_type, var3716=$r0, var2655=$r2, var2887=$r3, var474=$r5, var983=org.apache.log4j.helpers.OptionConverter, var460=r6, var3207=$r7, var2096=$r8, var2606=$r9, var2908=$r10, var1975=$r11, var3718=$r12, var3483=$r13, var1870=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.PropertyConfigurator=var2347, r21=var3651, java.util.Properties=var1642, r4=var220, org.apache.log4j.Logger=var3988, r20=var2706, r1=var3154, null_type=var2392, $r0=var3716, $r2=var2655, $r3=var2887, $r5=var474, org.apache.log4j.helpers.OptionConverter=var983, r6=var460, $r7=var3207, $r8=var2096, $r9=var2606, $r10=var2908, $r11=var1975, $r12=var3718, $r13=var3483, org.apache.log4j.helpers.LogLog=var1870}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r21 := @this: org.apache.log4j.PropertyConfigurator;	r4 := @parameter0: java.util.Properties;	r20 := @parameter1: org.apache.log4j.Logger;	r1 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.additivity.");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	r6 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>($r5, r4);	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Handling log4j.additivity.");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=[");	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r6);	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r13);	if r6 == null goto return;	return
;block_num 2