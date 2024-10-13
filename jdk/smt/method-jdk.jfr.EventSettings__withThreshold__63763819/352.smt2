(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3861 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toNanos/-1386218734 (var1048) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun with/-1791438915 (var3861 String String) var3861)
(declare-const null-var3861 var3861)
(declare-const null-var1048 var1048)
(declare-const var1832 var3861) ; Statement: r1 := @this: jdk.jfr.EventSettings 
(assert (not (= var1832 null-var3861)))
(declare-const var340 var1048) ; Statement: r0 := @parameter0: java.time.Duration 
(assert (not (= var340 null-var1048)))
 ; Statement: if r0 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var340 null-var1048))) ; Cond: r0 != null 
(define-const var1170 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1170)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1170!1 String)
(assert (= var1170!1 ""))
(assert true)
(define-const var1778 Int (toNanos/-1386218734 var340)) ; Statement: $l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>() 
(assert true)
(define-const var2773 String (append/-901862667 var1170!1 var1778)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1170!2 String)
(assert (str.prefixof var1170!1 var1170!2))
(assert true)
(define-const var2323 String (append/672562846 var2773 " ns")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ns") 
(declare-const var2773!1 String)
(assert (= var2773!1 (str.++ var2773 " ns")))
(assert true)
(define-const var1586 String (toString/-2075883882 var2323)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3585 var3861 (with/-1791438915 var1832 "threshold" var1586)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.EventSettings: jdk.jfr.EventSettings 'with'(java.lang.String,java.lang.String)>("threshold", $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toNanos/-1386218734=([java.time.Duration], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), with/-1791438915=([jdk.jfr.EventSettings, java.lang.String, java.lang.String], jdk.jfr.EventSettings)}
; {var3861=jdk.jfr.EventSettings, var1832=r1, var1048=java.time.Duration, var340=r0, var1170=$r2, var1778=$l0, var2773=$r3, var2323=$r4, var1586=$r5, var3585=$r6}
; {jdk.jfr.EventSettings=var3861, r1=var1832, java.time.Duration=var1048, r0=var340, $r2=var1170, $l0=var1778, $r3=var2773, $r4=var2323, $r5=var1586, $r6=var3585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.EventSettings;	r0 := @parameter0: java.time.Duration;	if r0 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$l0 = virtualinvoke r0.<java.time.Duration: long toNanos()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ns");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r1.<jdk.jfr.EventSettings: jdk.jfr.EventSettings 'with'(java.lang.String,java.lang.String)>("threshold", $r5);	return $r6
;block_num 2