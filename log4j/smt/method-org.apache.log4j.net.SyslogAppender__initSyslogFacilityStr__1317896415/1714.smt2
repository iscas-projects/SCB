(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var466 0)
(declare-sort var158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun syslogFacility/1979222873 (var466) Int)
(declare-fun var466_getFacilityString/2052813326 (Int) String)
(declare-fun facilityStr/1979222873 (var466) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var466 var466)
(declare-const null-String String)
(declare-const var177 var466) ; Statement: r0 := @this: org.apache.log4j.net.SyslogAppender 
(assert (not (= var177 null-var466)))
(define-const var918 Int (syslogFacility/1979222873 var177)) ; Statement: $i0 = r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility> 
(define-const var3866 String (var466_getFacilityString/2052813326 var918)) ; Statement: $r1 = staticinvoke <org.apache.log4j.net.SyslogAppender: java.lang.String getFacilityString(int)>($i0) 
(declare-const var177!1 var466)
(assert (not (= var177!1 null-var466)))
(assert (= (facilityStr/1979222873 var177!1) var3866)) ; Statement: r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = $r1 
(define-const var3532 String (facilityStr/1979222873 var177!1)) ; Statement: $r2 = r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> 
 ; Statement: if $r2 != null goto $r3 = new java.lang.StringBuffer 
(assert (not (= var3532 null-String))) ; Cond: $r2 != null 
(define-const var1570 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1570)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1570!1 String)
(define-const var3715 String (facilityStr/1979222873 var177!1)) ; Statement: $r4 = r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> 
(assert true)
(define-const var3002 String (append/1560614132 var1570!1 var3715)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1570!2 String)
(assert (str.prefixof var1570!1 var1570!2))
(assert true)
(define-const var1963 String (append/1560614132 var3002 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(":") 
(declare-const var3002!1 String)
(assert (str.prefixof var3002 var3002!1))
(assert true)
(define-const var3901 String (toString/-222306083 var1963)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
(declare-const var177!2 var466)
(assert (not (= var177!2 null-var466)))
(assert (= (facilityStr/1979222873 var177!2) var3901)) ; Statement: r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = $r7 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {syslogFacility/1979222873=([org.apache.log4j.net.SyslogAppender], int), var466_getFacilityString/2052813326=([int], java.lang.String), facilityStr/1979222873=([org.apache.log4j.net.SyslogAppender], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var466=org.apache.log4j.net.SyslogAppender, var177=r0, var918=$i0, var3866=$r1, var3532=$r2, var158=null_type, var1570=$r3, var3715=$r4, var3002=$r5, var1963=$r6, var3901=$r7}
; {org.apache.log4j.net.SyslogAppender=var466, r0=var177, $i0=var918, $r1=var3866, $r2=var3532, null_type=var158, $r3=var1570, $r4=var3715, $r5=var3002, $r6=var1963, $r7=var3901}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.SyslogAppender;	$i0 = r0.<org.apache.log4j.net.SyslogAppender: int syslogFacility>;	$r1 = staticinvoke <org.apache.log4j.net.SyslogAppender: java.lang.String getFacilityString(int)>($i0);	r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = $r1;	$r2 = r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr>;	if $r2 != null goto $r3 = new java.lang.StringBuffer;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr>;	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	r0.<org.apache.log4j.net.SyslogAppender: java.lang.String facilityStr> = $r7;	return
;block_num 3