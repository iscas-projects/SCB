(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var1230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toNanos/-1386218734 (var1230) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun with/-1791438915 (var1211 String String) var1211)
(declare-const null-var1211 var1211)
(declare-const null-var1230 var1230)
(declare-const var3691 var1211) ; Statement: r0 := @this: jdk.jfr.EventSettings 
(assert (not (= var3691 null-var1211)))
(declare-const var3204 var1230) ; Statement: r2 := @parameter0: java.time.Duration 
(assert (not (= var3204 null-var1230)))
(define-const var1501 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1501)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1501!1 String)
(assert (= var1501!1 ""))
(assert true)
(define-const var1548 Int (toNanos/-1386218734 var3204)) ; Statement: $l0 = virtualinvoke r2.<java.time.Duration: long toNanos()>() 
(assert true)
(define-const var3971 String (append/-901862667 var1501!1 var1548)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1501!2 String)
(assert (str.prefixof var1501!1 var1501!2))
(assert true)
(define-const var2657 String (append/672562846 var3971 " ns")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ns") 
(declare-const var3971!1 String)
(assert (= var3971!1 (str.++ var3971 " ns")))
(assert true)
(define-const var286 String (toString/-2075883882 var2657)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var108 var1211 (with/-1791438915 var3691 "period" var286)) ; Statement: $r6 = virtualinvoke r0.<jdk.jfr.EventSettings: jdk.jfr.EventSettings 'with'(java.lang.String,java.lang.String)>("period", $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toNanos/-1386218734=([java.time.Duration], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), with/-1791438915=([jdk.jfr.EventSettings, java.lang.String, java.lang.String], jdk.jfr.EventSettings)}
; {var1211=jdk.jfr.EventSettings, var3691=r0, var1230=java.time.Duration, var3204=r2, var1501=$r1, var1548=$l0, var3971=$r3, var2657=$r4, var286=$r5, var108=$r6}
; {jdk.jfr.EventSettings=var1211, r0=var3691, java.time.Duration=var1230, r2=var3204, $r1=var1501, $l0=var1548, $r3=var3971, $r4=var2657, $r5=var286, $r6=var108}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.EventSettings;	r2 := @parameter0: java.time.Duration;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$l0 = virtualinvoke r2.<java.time.Duration: long toNanos()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ns");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<jdk.jfr.EventSettings: jdk.jfr.EventSettings 'with'(java.lang.String,java.lang.String)>("period", $r5);	return $r6
;block_num 1