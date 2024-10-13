(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1821 0)
(declare-sort var3940 0)
(declare-sort var3913 0)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fileName/-915018355 (var1821) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var3913) String)
(declare-fun cast-from-var1821-to-var3913 (var1821) var3913)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var892_warn/241933037 (String) void)
(declare-const null-var1821 var1821)
(declare-const null-String String)
(declare-const var2792 var1821) ; Statement: r0 := @this: org.apache.log4j.FileAppender 
(assert (not (= var2792 null-var1821)))
(define-const var337 String (fileName/-915018355 var2792)) ; Statement: $r1 = r0.<org.apache.log4j.FileAppender: java.lang.String fileName> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuffer 
(assert (= var337 null-String)) ; Cond: $r1 == null 
(define-const var3364 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3364)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3364!1 String)
(assert true)
(define-const var799 String (append/1560614132 var3364!1 "File option not set for appender [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("File option not set for appender [") 
(declare-const var3364!2 String)
(assert (str.prefixof var3364!1 var3364!2))
(define-const var793 String (name/-1806528418 (cast-from-var1821-to-var3913 var2792))) ; Statement: $r3 = r0.<org.apache.log4j.FileAppender: java.lang.String name> 
(assert true)
(define-const var1133 String (append/1560614132 var799 var793)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var799!1 String)
(assert (str.prefixof var799 var799!1))
(assert true)
(define-const var1795 String (append/1560614132 var1133 "].")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1133!1 String)
(assert (str.prefixof var1133 var1133!1))
(assert true)
(define-const var1401 String (toString/-222306083 var1795)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var892_warn/241933037 var1401)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r7) 

(declare-const var1401!1 String)
;(assert (var892_warn/241933037 "Are you using FileAppender instead of ConsoleAppender?")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>("Are you using FileAppender instead of ConsoleAppender?") 

(declare-const var396 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {fileName/-915018355=([org.apache.log4j.FileAppender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var1821-to-var3913=([org.apache.log4j.FileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var892_warn/241933037=([java.lang.String], void)}
; {var1821=org.apache.log4j.FileAppender, var2792=r0, var337=$r1, var3940=null_type, var3364=$r2, var799=$r4, var3913=org.apache.log4j.AppenderSkeleton, var793=$r3, var1133=$r5, var1795=$r6, var1401=$r7, var892=org.apache.log4j.helpers.LogLog, var396="Are you using FileAppender instead of ConsoleAppender?"}
; {org.apache.log4j.FileAppender=var1821, r0=var2792, $r1=var337, null_type=var3940, $r2=var3364, $r4=var799, org.apache.log4j.AppenderSkeleton=var3913, $r3=var793, $r5=var1133, $r6=var1795, $r7=var1401, org.apache.log4j.helpers.LogLog=var892, "Are you using FileAppender instead of ConsoleAppender?"=var396}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.FileAppender;	$r1 = r0.<org.apache.log4j.FileAppender: java.lang.String fileName>;	if $r1 == null goto $r2 = new java.lang.StringBuffer;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("File option not set for appender [");	$r3 = r0.<org.apache.log4j.FileAppender: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r7);	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>("Are you using FileAppender instead of ConsoleAppender?");	return
;block_num 3