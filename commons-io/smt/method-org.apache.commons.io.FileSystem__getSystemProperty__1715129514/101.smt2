(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1773 0)
(declare-sort var3352 0)
(declare-sort var3707 0)
(declare-sort var369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3707 String) void)
(declare-const null-String String)
(declare-const null-var3352 var3352)
(declare-const var369-err var3707)
(declare-const var3829 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3829 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2502 var3352) ; Statement: $r2 := @caughtexception 
(assert (not (= var2502 null-var3352)))
(define-const var2963 var3707 var369-err) ; Statement: $r4 = <java.lang.System: java.io.PrintStream err> 
(define-const var1490 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(assert true)
(define-const var3572 String (append/672562846 var1490!1 "Caught a SecurityException reading the system property \u0027")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caught a SecurityException reading the system property \'") 
(declare-const var1490!2 String)
(assert (= var1490!2 (str.++ var1490!1 "Caught a SecurityException reading the system property \u0027")))
(assert true)
(define-const var2890 String (append/672562846 var3572 var3829)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3572!1 String)
(assert (= var3572!1 (str.++ var3572 var3829)))
(assert true)
(define-const var613 String (append/672562846 var2890 "\u0027; the SystemUtils property value will default to null.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'; the SystemUtils property value will default to null.") 
(declare-const var2890!1 String)
(assert (= var2890!1 (str.++ var2890 "\u0027; the SystemUtils property value will default to null.")))
(assert true)
(define-const var831 String (toString/-2075883882 var613)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2963 var831)) ; Statement: virtualinvoke $r4.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var2963!1 var3707)
(declare-const var831!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3829=r0, var1773=null_type, var3352=java.lang.SecurityException, var2502=$r2, var3707=java.io.PrintStream, var369=java.lang.System, var2963=$r4, var1490=$r3, var3572=$r5, var2890=$r6, var613=$r7, var831=$r8}
; {r0=var3829, null_type=var1773, java.lang.SecurityException=var3352, $r2=var2502, java.io.PrintStream=var3707, java.lang.System=var369, $r4=var2963, $r3=var1490, $r5=var3572, $r6=var2890, $r7=var613, $r8=var831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 := @caughtexception;	$r4 = <java.lang.System: java.io.PrintStream err>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Caught a SecurityException reading the system property \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'; the SystemUtils property value will default to null.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<java.io.PrintStream: void println(java.lang.String)>($r8);	return null
;block_num 2