(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3412 0)
(declare-sort var1349 0)
(declare-sort var3194 0)
(declare-sort var772 0)
(declare-sort var1944 0)
(declare-sort var916 0)
(declare-sort var935 0)
(declare-sort var3535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var772-init () var772)
(declare-fun <init>/964458484 (var772) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var916) String)
(declare-fun cast-from-var1349-to-var916 (var1349) var916)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var935_error/1978659241 (String var3535) void)
(declare-fun cast-from-var1944-to-var3535 (var1944) var3535)
(declare-fun var935_error/-402343703 (String) void)
(declare-const null-var3412 var3412)
(declare-const null-var1349 var1349)
(declare-const null-var3194 var3194)
(declare-const null-var1944 var1944)
(declare-const var3715 var3412) ; Statement: r2 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var3715 null-var3412)))
(declare-const var705 var1349) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var705 null-var1349)))
(declare-const var679 var3194) ; Statement: r3 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var679 null-var3194)))
(define-const var2889 var772 var772-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var2889)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var2889!1 var772)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var504 var1944) ; Statement: $r4 := @caughtexception 
(assert (not (= var504 null-var1944)))
(define-const var3501 Bool false) ; Statement: $z0 = $r4 instanceof java.io.InterruptedIOException 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuffer 
(assert (= (ite var3501 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3760 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3760)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3760!1 String)
(assert true)
(define-const var3840 String (append/1560614132 var3760!1 "Could not read configuration file from InputStream [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not read configuration file from InputStream [") 
(declare-const var3760!2 String)
(assert (str.prefixof var3760!1 var3760!2))
(assert true)
(define-const var530 String (append/-143899486 var3840 (cast-from-var1349-to-var916 var705))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 
(assert true)
(define-const var604 String (append/1560614132 var530 "].")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var530!1 String)
(assert (str.prefixof var530 var530!1))
(assert true)
(define-const var923 String (toString/-222306083 var604)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var935_error/1978659241 var923 (cast-from-var1944-to-var3535 var504))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var923!1 String)
(declare-const var504!1 var1944)
(define-const var1434 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1434)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1434!1 String)
(assert true)
(define-const var2194 String (append/1560614132 var1434!1 "Ignoring configuration InputStream [")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Ignoring configuration InputStream [") 
(declare-const var1434!2 String)
(assert (str.prefixof var1434!1 var1434!2))
(assert true)
(define-const var2126 String (append/-143899486 var2194 (cast-from-var1349-to-var916 var705))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 
(assert true)
(define-const var2980 String (append/1560614132 var2126 "].")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2126!1 String)
(assert (str.prefixof var2126 var2126!1))
(assert true)
(define-const var3319 String (toString/-222306083 var2980)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var935_error/-402343703 var3319)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r14) 

(declare-const var3319!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var772-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var1349-to-var916=([java.io.InputStream], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var935_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1944-to-var3535=([java.io.IOException], java.lang.Throwable), var935_error/-402343703=([java.lang.String], void)}
; {var3412=org.apache.log4j.PropertyConfigurator, var3715=r2, var1349=java.io.InputStream, var705=r1, var3194=org.apache.log4j.spi.LoggerRepository, var679=r3, var772=java.util.Properties, var2889=$r0, var1944=java.io.IOException, var504=$r4, var3501=$z0, var3760=$r5, var3840=$r6, var916=java.lang.Object, var530=$r7, var604=$r8, var923=$r9, var935=org.apache.log4j.helpers.LogLog, var3535=java.lang.Throwable, var1434=$r10, var2194=$r11, var2126=$r12, var2980=$r13, var3319=$r14}
; {org.apache.log4j.PropertyConfigurator=var3412, r2=var3715, java.io.InputStream=var1349, r1=var705, org.apache.log4j.spi.LoggerRepository=var3194, r3=var679, java.util.Properties=var772, $r0=var2889, java.io.IOException=var1944, $r4=var504, $z0=var3501, $r5=var3760, $r6=var3840, java.lang.Object=var916, $r7=var530, $r8=var604, $r9=var923, org.apache.log4j.helpers.LogLog=var935, java.lang.Throwable=var3535, $r10=var1434, $r11=var2194, $r12=var2126, $r13=var2980, $r14=var3319}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r2 := @this: org.apache.log4j.PropertyConfigurator;	r1 := @parameter0: java.io.InputStream;	r3 := @parameter1: org.apache.log4j.spi.LoggerRepository;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r4 := @caughtexception;	$z0 = $r4 instanceof java.io.InterruptedIOException;	if $z0 == 0 goto $r5 = new java.lang.StringBuffer;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not read configuration file from InputStream [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r9, $r4);	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Ignoring configuration InputStream [");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r14);	return
;block_num 3