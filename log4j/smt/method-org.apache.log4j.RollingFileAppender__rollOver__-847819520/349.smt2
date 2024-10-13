(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3272 0)
(declare-sort var3079 0)
(declare-sort var1938 0)
(declare-sort var1816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun qw/37597956 (var1938) var3079)
(declare-fun cast-from-var3272-to-var1938 (var3272) var1938)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun maxBackupIndex/1738855390 (var3272) Int)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1816_debug/381960894 (String) void)
(declare-const null-var3272 var3272)
(declare-const null-var3079 var3079)
(declare-const var1569 var3272) ; Statement: r0 := @this: org.apache.log4j.RollingFileAppender 
(assert (not (= var1569 null-var3272)))
(define-const var963 var3079 (qw/37597956 (cast-from-var3272-to-var1938 var1569))) ; Statement: $r1 = r0.<org.apache.log4j.RollingFileAppender: org.apache.log4j.helpers.QuietWriter qw> 
 ; Statement: if $r1 == null goto $r73 = new java.lang.StringBuffer 
(assert (= var963 null-var3079)) ; Cond: $r1 == null 
(define-const var1512 String String-init) ; Statement: $r73 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1512)) ; Statement: specialinvoke $r73.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1512!1 String)
(assert true)
(define-const var2758 String (append/1560614132 var1512!1 "maxBackupIndex=")) ; Statement: $r3 = virtualinvoke $r73.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("maxBackupIndex=") 
(declare-const var1512!2 String)
(assert (str.prefixof var1512!1 var1512!2))
(define-const var1649 Int (maxBackupIndex/1738855390 var1569)) ; Statement: $i0 = r0.<org.apache.log4j.RollingFileAppender: int maxBackupIndex> 
(assert true)
(define-const var2801 String (append/1845021834 var2758 var1649)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
(define-const var1912 String (toString/-222306083 var2801)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1816_debug/381960894 var1912)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r5) 

(declare-const var1912!1 String)
(define-const var2413 Bool (ite (= 1 1) true false)) ; Statement: z6 = 1 
(define-const var2412 Int (maxBackupIndex/1738855390 var1569)) ; Statement: $i1 = r0.<org.apache.log4j.RollingFileAppender: int maxBackupIndex> 
 ; Statement: if $i1 <= 0 goto (branch) 
(assert (<= var2412 0)) ; Cond: $i1 <= 0 
 ; Statement: if z6 == 0 goto return 
(assert (= (ite var2413 1 0) 0)) ; Cond: z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {qw/37597956=([org.apache.log4j.WriterAppender], org.apache.log4j.helpers.QuietWriter), cast-from-var3272-to-var1938=([org.apache.log4j.RollingFileAppender], org.apache.log4j.WriterAppender), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), maxBackupIndex/1738855390=([org.apache.log4j.RollingFileAppender], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1816_debug/381960894=([java.lang.String], void)}
; {var3272=org.apache.log4j.RollingFileAppender, var1569=r0, var3079=org.apache.log4j.helpers.QuietWriter, var1938=org.apache.log4j.WriterAppender, var963=$r1, var1512=$r73, var2758=$r3, var1649=$i0, var2801=$r4, var1912=$r5, var1816=org.apache.log4j.helpers.LogLog, var2413=z6, var2412=$i1}
; {org.apache.log4j.RollingFileAppender=var3272, r0=var1569, org.apache.log4j.helpers.QuietWriter=var3079, org.apache.log4j.WriterAppender=var1938, $r1=var963, $r73=var1512, $r3=var2758, $i0=var1649, $r4=var2801, $r5=var1912, org.apache.log4j.helpers.LogLog=var1816, z6=var2413, $i1=var2412}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.RollingFileAppender;	$r1 = r0.<org.apache.log4j.RollingFileAppender: org.apache.log4j.helpers.QuietWriter qw>;	if $r1 == null goto $r73 = new java.lang.StringBuffer;	$r73 = new java.lang.StringBuffer;	specialinvoke $r73.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r73.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("maxBackupIndex=");	$i0 = r0.<org.apache.log4j.RollingFileAppender: int maxBackupIndex>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r5);	z6 = 1;	$i1 = r0.<org.apache.log4j.RollingFileAppender: int maxBackupIndex>;	if $i1 <= 0 goto (branch);	if z6 == 0 goto return;	return
;block_num 4