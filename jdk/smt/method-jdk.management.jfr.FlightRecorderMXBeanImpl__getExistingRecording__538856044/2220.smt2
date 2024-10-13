(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3444 0)
(declare-sort var3887 0)
(declare-sort var3054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3887_isInitialized/235401904 () Bool)
(declare-fun var3054-init () var3054)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3054 String) void)
(declare-const null-var3444 var3444)
(declare-const null-Int Int)
(declare-const var3773 var3444) ; Statement: r5 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl 
(assert (not (= var3773 null-var3444)))
(declare-const var713 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var713 null-Int)))
(define-const var2857 Bool var3887_isInitialized/235401904) ; Statement: $z0 = staticinvoke <jdk.jfr.FlightRecorder: boolean isInitialized()>() 
 ; Statement: if $z0 == 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (= (ite var2857 1 0) 0)) ; Cond: $z0 == 0 
(define-const var230 var3054 var3054-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var2976 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2976)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2976!1 String)
(assert (= var2976!1 ""))
(assert true)
(define-const var1299 String (append/672562846 var2976!1 "No recording available with id ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No recording available with id ") 
(declare-const var2976!2 String)
(assert (= var2976!2 (str.++ var2976!1 "No recording available with id ")))
(assert true)
(define-const var3854 String (append/-901862667 var1299 var713)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1299!1 String)
(assert (str.prefixof var1299 var1299!1))
(assert true)
(define-const var319 String (toString/-2075883882 var3854)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var230 var319)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var230!1 var3054)
(declare-const var319!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3887_isInitialized/235401904=([], boolean), var3054-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3444=jdk.management.jfr.FlightRecorderMXBeanImpl, var3773=r5, var713=l0, var3887=jdk.jfr.FlightRecorder, var2857=$z0, var3054=java.lang.IllegalArgumentException, var230=$r0, var2976=$r1, var1299=$r2, var3854=$r3, var319=$r4}
; {jdk.management.jfr.FlightRecorderMXBeanImpl=var3444, r5=var3773, l0=var713, jdk.jfr.FlightRecorder=var3887, $z0=var2857, java.lang.IllegalArgumentException=var3054, $r0=var230, $r1=var2976, $r2=var1299, $r3=var3854, $r4=var319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl;	l0 := @parameter0: long;	$z0 = staticinvoke <jdk.jfr.FlightRecorder: boolean isInitialized()>();	if $z0 == 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No recording available with id ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2