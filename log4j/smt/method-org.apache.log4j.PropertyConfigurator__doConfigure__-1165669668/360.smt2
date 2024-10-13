(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2793 0)
(declare-sort var2038 0)
(declare-sort var2623 0)
(declare-sort var3214 0)
(declare-sort var3830 0)
(declare-sort var3490 0)
(declare-sort var1596 0)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3214-init () var3214)
(declare-fun <init>/964458484 (var3214) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var3830) String)
(declare-fun cast-from-var2038-to-var3830 (var2038) var3830)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3490_debug/381960894 (String) void)
(declare-const null-var2793 var2793)
(declare-const null-var2038 var2038)
(declare-const null-var2623 var2623)
(declare-const null-var1596 var1596)
(declare-const null-var438 var438)
(declare-const var3429 var2793) ; Statement: r6 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var3429 null-var2793)))
(declare-const var146 var2038) ; Statement: r2 := @parameter0: java.net.URL 
(assert (not (= var146 null-var2038)))
(declare-const var1473 var2623) ; Statement: r7 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var1473 null-var2623)))
(define-const var3600 var3214 var3214-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3600)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var3600!1 var3214)
(define-const var3401 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3401)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3401!1 String)
(assert true)
(define-const var725 String (append/1560614132 var3401!1 "Reading configuration from URL ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Reading configuration from URL ") 
(declare-const var3401!2 String)
(assert (str.prefixof var3401!1 var3401!2))
(assert true)
(define-const var3510 String (append/-143899486 var725 (cast-from-var2038-to-var3830 var146))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2) 
(assert true)
(define-const var2059 String (toString/-222306083 var3510)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3490_debug/381960894 var2059)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r5) 

(declare-const var2059!1 String)
(define-const var1025 var1596 null-var1596) ; Statement: r23 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2297 var438) ; Statement: $r12 := @caughtexception 
(assert (not (= var2297 null-var438)))
(assert true) ; Non Conditional
 ; Statement: if r23 == null goto throw $r12 
(assert (= var1025 null-var1596)) ; Cond: r23 == null 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3214-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2038-to-var3830=([java.net.URL], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3490_debug/381960894=([java.lang.String], void)}
; {var2793=org.apache.log4j.PropertyConfigurator, var3429=r6, var2038=java.net.URL, var146=r2, var2623=org.apache.log4j.spi.LoggerRepository, var1473=r7, var3214=java.util.Properties, var3600=$r0, var3401=$r1, var725=$r3, var3830=java.lang.Object, var3510=$r4, var2059=$r5, var3490=org.apache.log4j.helpers.LogLog, var1596=java.io.InputStream, var1025=r23, var438=java.lang.Throwable, var2297=$r12}
; {org.apache.log4j.PropertyConfigurator=var2793, r6=var3429, java.net.URL=var2038, r2=var146, org.apache.log4j.spi.LoggerRepository=var2623, r7=var1473, java.util.Properties=var3214, $r0=var3600, $r1=var3401, $r3=var725, java.lang.Object=var3830, $r4=var3510, $r5=var2059, org.apache.log4j.helpers.LogLog=var3490, java.io.InputStream=var1596, r23=var1025, java.lang.Throwable=var438, $r12=var2297}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.log4j.PropertyConfigurator;	r2 := @parameter0: java.net.URL;	r7 := @parameter1: org.apache.log4j.spi.LoggerRepository;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Reading configuration from URL ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r5);	r23 = null;	$r12 := @caughtexception;	if r23 == null goto throw $r12;	throw $r12
;block_num 4