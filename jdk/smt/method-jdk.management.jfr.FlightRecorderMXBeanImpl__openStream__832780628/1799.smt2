(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1176 0)
(declare-sort var3489 0)
(declare-sort var3849 0)
(declare-sort var3931 0)
(declare-sort var2162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3849_checkControl/2049853312 () void)
(declare-fun var3931_isInitialized/235401904 () Bool)
(declare-fun var2162-init () var2162)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2162 String) void)
(declare-const null-var1176 var1176)
(declare-const null-Int Int)
(declare-const null-var3489 var3489)
(declare-const var3686 var1176) ; Statement: r9 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl 
(assert (not (= var3686 null-var1176)))
(declare-const var2224 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2224 null-Int)))
(declare-const var3285 var3489) ; Statement: r0 := @parameter1: java.util.Map 
(assert (not (= var3285 null-var3489)))
;(assert var3849_checkControl/2049853312) ; Statement: staticinvoke <jdk.management.jfr.MBeanUtils: void checkControl()>() 
(define-const var1530 Bool var3931_isInitialized/235401904) ; Statement: $z0 = staticinvoke <jdk.jfr.FlightRecorder: boolean isInitialized()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var1530 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var99 var2162 var2162-init) ; Statement: $r24 = new java.lang.IllegalArgumentException 
(define-const var1978 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1978)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1978!1 String)
(assert (= var1978!1 ""))
(assert true)
(define-const var1511 String (append/672562846 var1978!1 "No recording available with id ")) ; Statement: $r19 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No recording available with id ") 
(declare-const var1978!2 String)
(assert (= var1978!2 (str.++ var1978!1 "No recording available with id ")))
(assert true)
(define-const var3946 String (append/-901862667 var1511 var2224)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1511!1 String)
(assert (str.prefixof var1511 var1511!1))
(assert true)
(define-const var622 String (toString/-2075883882 var3946)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var99 var622)) ; Statement: specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21) 

(declare-const var99!1 var2162)
(declare-const var622!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var3849_checkControl/2049853312=([], void), var3931_isInitialized/235401904=([], boolean), var2162-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1176=jdk.management.jfr.FlightRecorderMXBeanImpl, var3686=r9, var2224=l0, var3489=java.util.Map, var3285=r0, var3849=jdk.management.jfr.MBeanUtils, var3931=jdk.jfr.FlightRecorder, var1530=$z0, var2162=java.lang.IllegalArgumentException, var99=$r24, var1978=$r23, var1511=$r19, var3946=$r20, var622=$r21}
; {jdk.management.jfr.FlightRecorderMXBeanImpl=var1176, r9=var3686, l0=var2224, java.util.Map=var3489, r0=var3285, jdk.management.jfr.MBeanUtils=var3849, jdk.jfr.FlightRecorder=var3931, $z0=var1530, java.lang.IllegalArgumentException=var2162, $r24=var99, $r23=var1978, $r19=var1511, $r20=var3946, $r21=var622}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl;	l0 := @parameter0: long;	r0 := @parameter1: java.util.Map;	staticinvoke <jdk.management.jfr.MBeanUtils: void checkControl()>();	$z0 = staticinvoke <jdk.jfr.FlightRecorder: boolean isInitialized()>();	if $z0 != 0 goto (branch);	$r24 = new java.lang.IllegalArgumentException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No recording available with id ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21);	throw $r24
;block_num 2