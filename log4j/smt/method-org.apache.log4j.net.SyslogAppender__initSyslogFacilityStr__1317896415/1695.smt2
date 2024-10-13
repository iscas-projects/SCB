(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1017 0)
(declare-sort var2459 0)
(declare-sort var2138 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun syslogFacility/1979222873 (var1017) Int)
(declare-fun var1017_getFacilityString/2052813326 (Int) String)
(declare-fun facilityStr/1979222873 (var1017) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/1773605060 (var2138 String) void)
(declare-const null-var1017 var1017)
(declare-const null-String String)
(declare-const var217-err var2138)
(declare-const var634 var1017) ; Statement: r0 := @this: org.apache.log4j.net.SyslogAppender 
(assert (not (= var634 null-var1017)))
(define-const var238 Int (syslogFacility/1979222873 var634)) ; Statement: $i0 = r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility> 
(define-const var750 String (var1017_getFacilityString/2052813326 var238)) ; Statement: $r1 = staticinvoke <org.apache.log4j.net.SyslogAppender: java.lang.String getFacilityString(int)>($i0) 
(declare-const var634!1 var1017)
(assert (not (= var634!1 null-var1017)))
(assert (= (facilityStr/1979222873 var634!1) var750)) ; Statement: r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = $r1 
(define-const var2493 String (facilityStr/1979222873 var634!1)) ; Statement: $r2 = r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> 
 ; Statement: if $r2 != null goto $r3 = new java.lang.StringBuffer 
(assert (not (not (= var2493 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var1830 var2138 var217-err) ; Statement: $r9 = <java.lang.System: java.io.PrintStream err> 
(define-const var264 String String-init) ; Statement: $r8 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var264)) ; Statement: specialinvoke $r8.<java.lang.StringBuffer: void <init>()>() 

(declare-const var264!1 String)
(assert true)
(define-const var2195 String (append/1560614132 var264!1 "\u0022")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var264!2 String)
(assert (str.prefixof var264!1 var264!2))
(define-const var3729 Int (syslogFacility/1979222873 var634!1)) ; Statement: $i1 = r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility> 
(assert true)
(define-const var1898 String (append/1845021834 var2195 var3729)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var1312 String (append/1560614132 var1898 "\u0022 is an unknown syslog facility. Defaulting to \u0022USER\u0022.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" is an unknown syslog facility. Defaulting to \"USER\".") 
(declare-const var1898!1 String)
(assert (str.prefixof var1898 var1898!1))
(assert true)
(define-const var550 String (toString/-222306083 var1312)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1830 var550)) ; Statement: virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>($r13) 

(declare-const var1830!1 var2138)
(declare-const var550!1 String)
(declare-const var634!2 var1017)
(assert (not (= var634!2 null-var1017)))
(assert (= (syslogFacility/1979222873 var634!2) 8)) ; Statement: r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility> = 8 
(declare-const var634!3 var1017)
(assert (not (= var634!3 null-var1017)))
(assert (= (facilityStr/1979222873 var634!3) "user:")) ; Statement: r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = "user:" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {syslogFacility/1979222873=([org.apache.log4j.net.SyslogAppender], int), var1017_getFacilityString/2052813326=([int], java.lang.String), facilityStr/1979222873=([org.apache.log4j.net.SyslogAppender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1017=org.apache.log4j.net.SyslogAppender, var634=r0, var238=$i0, var750=$r1, var2493=$r2, var2459=null_type, var2138=java.io.PrintStream, var217=java.lang.System, var1830=$r9, var264=$r8, var2195=$r10, var3729=$i1, var1898=$r11, var1312=$r12, var550=$r13}
; {org.apache.log4j.net.SyslogAppender=var1017, r0=var634, $i0=var238, $r1=var750, $r2=var2493, null_type=var2459, java.io.PrintStream=var2138, java.lang.System=var217, $r9=var1830, $r8=var264, $r10=var2195, $i1=var3729, $r11=var1898, $r12=var1312, $r13=var550}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.SyslogAppender;	$i0 = r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility>;	$r1 = staticinvoke <org.apache.log4j.net.SyslogAppender: java.lang.String getFacilityString(int)>($i0);	r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = $r1;	$r2 = r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr>;	if $r2 != null goto $r3 = new java.lang.StringBuffer;	$r9 = <java.lang.System: java.io.PrintStream err>;	$r8 = new java.lang.StringBuffer;	specialinvoke $r8.<java.lang.StringBuffer: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$i1 = r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility>;	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" is an unknown syslog facility. Defaulting to \"USER\".");	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>($r13);	r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility> = 8;	r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = "user:";	goto [?= return];	return
;block_num 3