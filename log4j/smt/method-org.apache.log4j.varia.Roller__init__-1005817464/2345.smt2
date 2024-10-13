(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort var356 0)
(declare-sort var1351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1351_usage/-39865376 (String) void)
(declare-const null-String String)
(declare-const null-var356 var356)
(declare-const var3470 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3470 null-String)))
(declare-const var3923 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3923 null-String)))
(define-const var2018 String var3470) ; Statement: <org.apache.log4j.varia.Roller: java.lang.String host> = r0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3196 var356) ; Statement: $r2 := @caughtexception 
(assert (not (= var3196 null-var356)))
(define-const var2787 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2787)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2787!1 String)
(assert true)
(define-const var3142 String (append/1560614132 var2787!1 "Second argument ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Second argument ") 
(declare-const var2787!2 String)
(assert (str.prefixof var2787!1 var2787!2))
(assert true)
(define-const var280 String (append/1560614132 var3142 var3923)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3142!1 String)
(assert (str.prefixof var3142 var3142!1))
(assert true)
(define-const var1132 String (append/1560614132 var280 " is not a valid integer.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is not a valid integer.") 
(declare-const var280!1 String)
(assert (str.prefixof var280 var280!1))
(assert true)
(define-const var2716 String (toString/-222306083 var1132)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1351_usage/-39865376 var2716)) ; Statement: staticinvoke <org.apache.log4j.varia.Roller: void usage(java.lang.String)>($r7) 

(declare-const var2716!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1351_usage/-39865376=([java.lang.String], void)}
; {var3470=r0, var1964=null_type, var3923=r1, var2018=<org.apache.log4j.varia.Roller: java.lang.String host>, var356=java.lang.NumberFormatException, var3196=$r2, var2787=$r3, var3142=$r4, var280=$r5, var1132=$r6, var2716=$r7, var1351=org.apache.log4j.varia.Roller}
; {r0=var3470, null_type=var1964, r1=var3923, <org.apache.log4j.varia.Roller: java.lang.String host>=var2018, java.lang.NumberFormatException=var356, $r2=var3196, $r3=var2787, $r4=var3142, $r5=var280, $r6=var1132, $r7=var2716, org.apache.log4j.varia.Roller=var1351}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	<org.apache.log4j.varia.Roller: java.lang.String host> = r0;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Second argument ");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is not a valid integer.");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.varia.Roller: void usage(java.lang.String)>($r7);	return
;block_num 3