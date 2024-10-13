(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1652 0)
(declare-sort var1788 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var474-init () var474)
(declare-fun <init>/209158305 (var474 String) void)
(declare-const null-String String)
(declare-const null-var1788 var1788)
(declare-const var838 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var838 null-String)))
(define-const var1048 var1788 null-var1788) ; Statement: r15 = null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var838 null-String)) ; Cond: r14 == null 
 ; Statement: if r15 != null goto (branch) 
(assert (not (= var1048 null-var1788))) ; Cond: r15 != null 
 ; Statement: if r15 != null goto return r15 
(assert (not (not (= var1048 null-var1788)))) ; Negate: Cond: r15 != null  
(define-const var1077 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1077)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1077!1 String)
(define-const var2410 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2410)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2410!1 String)
(assert true)
(define-const var1574 String (append/1560614132 var2410!1 "Error while trying to parse (")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while trying to parse (") 
(declare-const var2410!2 String)
(assert (str.prefixof var2410!1 var2410!2))
(assert true)
(define-const var2162 String (append/1560614132 var1574 var838)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r14) 
(declare-const var1574!1 String)
(assert (str.prefixof var1574 var1574!1))
(assert true)
(define-const var1583 String (append/1560614132 var2162 ") into")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") into") 
(declare-const var2162!1 String)
(assert (str.prefixof var2162 var2162!1))
(assert true)
(define-const var2999 String (toString/-222306083 var1583)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1077!1 var2999)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var1077!2 String)
(assert (str.prefixof var1077!1 var1077!2))
(assert true)
;(assert (append/1560614132 var1077!2 " a LogLevel.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" a LogLevel.") 
(declare-const var1077!3 String)
(assert (str.prefixof var1077!2 var1077!3))
(define-const var3589 var474 var474-init) ; Statement: $r6 = new org.apache.log4j.lf5.LogLevelFormatException 
(assert true)
(define-const var2404 String (toString/-222306083 var1077!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/209158305 var3589 var2404)) ; Statement: specialinvoke $r6.<org.apache.log4j.lf5.LogLevelFormatException: void <init>(java.lang.String)>($r7) 

(declare-const var3589!1 var474)
(declare-const var2404!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var474-init=([], org.apache.log4j.lf5.LogLevelFormatException), <init>/209158305=([org.apache.log4j.lf5.LogLevelFormatException, java.lang.String], void)}
; {var838=r14, var1652=null_type, var1788=org.apache.log4j.lf5.LogLevel, var1048=r15, var1077=$r0, var2410=$r1, var1574=$r2, var2162=$r3, var1583=$r4, var2999=$r5, var474=org.apache.log4j.lf5.LogLevelFormatException, var3589=$r6, var2404=$r7}
; {r14=var838, null_type=var1652, org.apache.log4j.lf5.LogLevel=var1788, r15=var1048, $r0=var1077, $r1=var2410, $r2=var1574, $r3=var2162, $r4=var1583, $r5=var2999, org.apache.log4j.lf5.LogLevelFormatException=var474, $r6=var3589, $r7=var2404}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r14 := @parameter0: java.lang.String;	r15 = null;	if r14 == null goto (branch);	if r15 != null goto (branch);	if r15 != null goto return r15;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while trying to parse (");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r14);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") into");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" a LogLevel.");	$r6 = new org.apache.log4j.lf5.LogLevelFormatException;	$r7 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r6.<org.apache.log4j.lf5.LogLevelFormatException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 4