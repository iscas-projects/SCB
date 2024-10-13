(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1000 0)
(declare-sort var3334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queuedData/-486610935 (var1000) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1000 var1000)
(declare-const null-String String)
(declare-const var2141 var1000) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants 
(assert (not (= var2141 null-var1000)))
(define-const var3534 Int (- 1)) ; Statement: i2 = -1 
(define-const var2966 String (queuedData/-486610935 var2141)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
 ; Statement: if $r1 == null goto $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
(assert (= var2966 null-String)) ; Cond: $r1 == null 
(define-const var2480 String (queuedData/-486610935 var2141)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
 ; Statement: if $r22 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
(assert (not (= var2480 null-String))) ; Cond: $r22 != null 
(define-const var275 String (queuedData/-486610935 var2141)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
(assert (and true (and (> (str.len var275) 0) (<= 0 0))))
(define-const var3534!1 Int (charAt/698050440 var275 0)) ; Statement: i2 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0) 
(define-const var1806 String (queuedData/-486610935 var2141)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
(assert (and true (and (>= 1 0) (>= (str.len var1806) 1))))
(define-const var1266 String (substring/850833817 var1806 1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var2141!1 var1000)
(assert (not (= var2141!1 null-var1000)))
(assert (= (queuedData/-486610935 var2141!1) var1266)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> = $r4 
(define-const var374 String (queuedData/-486610935 var2141!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> 
(assert true)
(define-const var1323 Bool (isEmpty/-1285796103 var374)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return i2 
(assert (= (ite var1323 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {queuedData/-486610935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants], java.lang.String), charAt/698050440=([java.lang.String, int], char), substring/850833817=([java.lang.String, int], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1000=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants, var2141=r0, var3534=i2, var2966=$r1, var3334=null_type, var2480=$r22, var275=$r2, var1806=$r3, var1266=$r4, var374=$r5, var1323=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants=var1000, r0=var2141, i2=var3534, $r1=var2966, null_type=var3334, $r22=var2480, $r2=var275, $r3=var1806, $r4=var1266, $r5=var374, $z0=var1323}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants;	i2 = -1;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	if $r1 == null goto $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	$r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	if $r22 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	i2 = virtualinvoke $r2.<java.lang.String: char charAt(int)>(0);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData> = $r4;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ClassConstants: java.lang.String queuedData>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto return i2;	return i2
;block_num 4