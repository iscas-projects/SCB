(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3702 0)
(declare-sort var2784 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1599) void)
(declare-fun cast-from-var3702-to-var1599 (var3702) var1599)
(declare-fun message/-434834169 (var3702) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun fullMessage/-434834169 (var3702) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3702 var3702)
(declare-const null-String String)
(declare-const var2174 var3702) ; Statement: r0 := @this: org.apache.log4j.NDC$DiagnosticContext 
(assert (not (= var2174 null-var3702)))
(declare-const var2460 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2460 null-String)))
(declare-const var406 var3702) ; Statement: r2 := @parameter1: org.apache.log4j.NDC$DiagnosticContext 
(assert (not (= var406 null-var3702)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3702-to-var1599 var2174))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2174!1 var3702)
(declare-const var2174!2 var3702)
(assert (not (= var2174!2 null-var3702)))
(assert (= (message/-434834169 var2174!2) var2460)) ; Statement: r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String message> = r1 
 ; Statement: if r2 == null goto r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = r1 
(assert (not (= var406 null-var3702))) ; Negate: Cond: r2 == null  
(define-const var3006 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3006)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3006!1 String)
(define-const var3892 String (fullMessage/-434834169 var406)) ; Statement: $r4 = r2.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> 
(assert true)
(define-const var1247 String (append/1560614132 var3006!1 var3892)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3006!2 String)
(assert (str.prefixof var3006!1 var3006!2))
(assert true)
(define-const var951 String (append/1183289509 var1247 32)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var3300 String (append/1560614132 var951 var2460)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var951!1 String)
(assert (str.prefixof var951 var951!1))
(assert true)
(define-const var1985 String (toString/-222306083 var3300)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(declare-const var2174!3 var3702)
(assert (not (= var2174!3 null-var3702)))
(assert (= (fullMessage/-434834169 var2174!3) var1985)) ; Statement: r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = $r8 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3702-to-var1599=([org.apache.log4j.NDC$DiagnosticContext], java.lang.Object), message/-434834169=([org.apache.log4j.NDC$DiagnosticContext], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), fullMessage/-434834169=([org.apache.log4j.NDC$DiagnosticContext], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3702=org.apache.log4j.NDC$DiagnosticContext, var2174=r0, var2460=r1, var2784=null_type, var406=r2, var1599=java.lang.Object, var3006=$r3, var3892=$r4, var1247=$r5, var951=$r6, var3300=$r7, var1985=$r8}
; {org.apache.log4j.NDC$DiagnosticContext=var3702, r0=var2174, r1=var2460, null_type=var2784, r2=var406, java.lang.Object=var1599, $r3=var3006, $r4=var3892, $r5=var1247, $r6=var951, $r7=var3300, $r8=var1985}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.NDC$DiagnosticContext;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.log4j.NDC$DiagnosticContext;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String message> = r1;	if r2 == null goto r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = r1;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = r2.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage>;	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = $r8;	goto [?= return];	return
;block_num 3