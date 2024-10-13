(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1476 0)
(declare-sort var2406 0)
(declare-sort var3824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3824_getTarget/45029478 () var2406)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2406 String) void)
(declare-const null-String String)
(declare-const var1702 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1702 null-String)))
(define-const var1100 var2406 var3824_getTarget/45029478) ; Statement: $r5 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>() 
(define-const var3161 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3161)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3161!1 String)
(assert (= var3161!1 ""))
(assert true)
(define-const var441 String (append/672562846 var3161!1 "SLF4J(E): ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLF4J(E): ") 
(declare-const var3161!2 String)
(assert (= var3161!2 (str.++ var3161!1 "SLF4J(E): ")))
(assert true)
(define-const var1116 String (append/672562846 var441 var1702)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var441!1 String)
(assert (= var441!1 (str.++ var441 var1702)))
(assert true)
(define-const var3743 String (toString/-2075883882 var1116)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1100 var3743)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r4) 

(declare-const var1100!1 var2406)
(declare-const var3743!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3824_getTarget/45029478=([], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1702=r1, var1476=null_type, var2406=java.io.PrintStream, var3824=org.slf4j.helpers.Reporter, var1100=$r5, var3161=$r0, var441=$r2, var1116=$r3, var3743=$r4}
; {r1=var1702, null_type=var1476, java.io.PrintStream=var2406, org.slf4j.helpers.Reporter=var3824, $r5=var1100, $r0=var3161, $r2=var441, $r3=var1116, $r4=var3743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>();	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLF4J(E): ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r4);	return
;block_num 1