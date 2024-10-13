(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var134 0)
(declare-sort var3377 0)
(declare-sort var1139 0)
(declare-sort var3839 0)
(declare-sort var500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printStackTrace/885456489 (var1139) void)
(declare-fun cast-from-var3377-to-var1139 (var3377) var1139)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3839_usage/-1118954944 (String) void)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var500_configure/-1964612118 (String) void)
(declare-const null-String String)
(declare-const null-var3377 var3377)
(declare-const var3944 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3944 null-String)))
(declare-const var2679 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2679 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var186 var3377) ; Statement: $r2 := @caughtexception 
(assert (not (= var186 null-var3377)))
(assert true)
;(assert (printStackTrace/885456489 (cast-from-var3377-to-var1139 var186))) ; Statement: virtualinvoke $r2.<java.lang.NumberFormatException: void printStackTrace()>() 

(declare-const var186!1 var3377)
(define-const var1079 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1079)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1079!1 String)
(assert true)
(define-const var2278 String (append/1560614132 var1079!1 "Could not interpret port number [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not interpret port number [") 
(declare-const var1079!2 String)
(assert (str.prefixof var1079!1 var1079!2))
(assert true)
(define-const var2249 String (append/1560614132 var2278 var3944)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var2278!1 String)
(assert (str.prefixof var2278 var2278!1))
(assert true)
(define-const var3390 String (append/1560614132 var2249 "].")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2249!1 String)
(assert (str.prefixof var2249 var2249!1))
(assert true)
(define-const var1075 String (toString/-222306083 var3390)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3839_usage/-1118954944 var1075)) ; Statement: staticinvoke <org.apache.log4j.net.SimpleSocketServer: void usage(java.lang.String)>($r7) 

(declare-const var1075!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2992 Bool (endsWith/985337093 var2679 ".xml")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".xml") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1) 
(assert (= (ite var2992 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var500_configure/-1964612118 var2679)) ; Statement: staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1) 

(declare-const var2679!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {printStackTrace/885456489=([java.lang.Throwable], void), cast-from-var3377-to-var1139=([java.lang.NumberFormatException], java.lang.Throwable), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3839_usage/-1118954944=([java.lang.String], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var500_configure/-1964612118=([java.lang.String], void)}
; {var3944=r0, var134=null_type, var2679=r1, var3377=java.lang.NumberFormatException, var186=$r2, var1139=java.lang.Throwable, var1079=$r3, var2278=$r4, var2249=$r5, var3390=$r6, var1075=$r7, var3839=org.apache.log4j.net.SimpleSocketServer, var2992=$z0, var500=org.apache.log4j.PropertyConfigurator}
; {r0=var3944, null_type=var134, r1=var2679, java.lang.NumberFormatException=var3377, $r2=var186, java.lang.Throwable=var1139, $r3=var1079, $r4=var2278, $r5=var2249, $r6=var3390, $r7=var1075, org.apache.log4j.net.SimpleSocketServer=var3839, $z0=var2992, org.apache.log4j.PropertyConfigurator=var500}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 := @caughtexception;	virtualinvoke $r2.<java.lang.NumberFormatException: void printStackTrace()>();	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not interpret port number [");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.net.SimpleSocketServer: void usage(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".xml");	if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1);	staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1);	return
;block_num 5