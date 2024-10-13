(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1509 0)
(declare-sort var3179 0)
(declare-sort var3548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3548_getVersionString/-321448853 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1509 String) void)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3179-out var1509)
(declare-const var2547 (Array Int String)) ; Statement: r6 := @parameter0: java.lang.String[] 
(assert (not (= var2547 null-__Array__Int__String__)))
(define-const var3674 var1509 var3179-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var265 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var265)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var265!1 String)
(assert (= var265!1 ""))
(assert true)
(define-const var2727 String (append/672562846 var265!1 "Hibernate ORM core version ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hibernate ORM core version ") 
(declare-const var265!2 String)
(assert (= var265!2 (str.++ var265!1 "Hibernate ORM core version ")))
(define-const var862 String var3548_getVersionString/-321448853) ; Statement: $r2 = staticinvoke <org.hibernate.Version: java.lang.String getVersionString()>() 
(assert true)
(define-const var794 String (append/672562846 var2727 var862)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2727!1 String)
(assert (= var2727!1 (str.++ var2727 var862)))
(assert true)
(define-const var2020 String (toString/-2075883882 var794)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3674 var2020)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var3674!1 var1509)
(declare-const var2020!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3548_getVersionString/-321448853=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2547=r6, var1509=java.io.PrintStream, var3179=java.lang.System, var3674=$r1, var265=$r0, var2727=$r3, var3548=org.hibernate.Version, var862=$r2, var794=$r4, var2020=$r5}
; {r6=var2547, java.io.PrintStream=var1509, java.lang.System=var3179, $r1=var3674, $r0=var265, $r3=var2727, org.hibernate.Version=var3548, $r2=var862, $r4=var794, $r5=var2020}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.String[];	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hibernate ORM core version ");	$r2 = staticinvoke <org.hibernate.Version: java.lang.String getVersionString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	return
;block_num 1