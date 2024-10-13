(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2204 0)
(declare-sort var1786 0)
(declare-sort var2746 0)
(declare-sort var3998 0)
(declare-sort var2398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2398_error/-402343703 (String) void)
(declare-const null-var2204 var2204)
(declare-const null-var1786 var1786)
(declare-const null-String String)
(declare-const null-var3998 var3998)
(declare-const var473 var2204) ; Statement: r9 := @this: org.apache.log4j.net.JMSAppender 
(assert (not (= var473 null-var2204)))
(declare-const var3847 var1786) ; Statement: r0 := @parameter0: javax.naming.Context 
(assert (not (= var3847 null-var1786)))
(declare-const var446 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var446 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2013 var3998) ; Statement: $r3 := @caughtexception 
(assert (not (= var2013 null-var3998)))
(define-const var678 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var678)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var678!1 String)
(assert true)
(define-const var772 String (append/1560614132 var678!1 "Could not find name [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not find name [") 
(declare-const var678!2 String)
(assert (str.prefixof var678!1 var678!2))
(assert true)
(define-const var3105 String (append/1560614132 var772 var446)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var772!1 String)
(assert (str.prefixof var772 var772!1))
(assert true)
(define-const var1216 String (append/1560614132 var3105 "].")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3105!1 String)
(assert (str.prefixof var3105 var3105!1))
(assert true)
(define-const var1146 String (toString/-222306083 var1216)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2398_error/-402343703 var1146)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r8) 

(declare-const var1146!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2398_error/-402343703=([java.lang.String], void)}
; {var2204=org.apache.log4j.net.JMSAppender, var473=r9, var1786=javax.naming.Context, var3847=r0, var446=r1, var2746=null_type, var3998=javax.naming.NameNotFoundException, var2013=$r3, var678=$r4, var772=$r5, var3105=$r6, var1216=$r7, var1146=$r8, var2398=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.net.JMSAppender=var2204, r9=var473, javax.naming.Context=var1786, r0=var3847, r1=var446, null_type=var2746, javax.naming.NameNotFoundException=var3998, $r3=var2013, $r4=var678, $r5=var772, $r6=var3105, $r7=var1216, $r8=var1146, org.apache.log4j.helpers.LogLog=var2398}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.log4j.net.JMSAppender;	r0 := @parameter0: javax.naming.Context;	r1 := @parameter1: java.lang.String;	$r3 := @caughtexception;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not find name [");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r8);	throw $r3
;block_num 2