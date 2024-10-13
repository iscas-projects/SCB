(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var3818 0)
(declare-sort var2174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3818 String) void)
(declare-const null-String String)
(declare-const var2174-out var3818)
(declare-const var1607 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1607 null-String)))
(define-const var2546 var3818 var2174-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1592 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1592)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1592!1 String)
(assert (= var1592!1 ""))
(assert true)
(define-const var3378 String (append/672562846 var1592!1 "Invalid \u0027OUTPUT_LANGUAGE\u0027 specified : ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid \'OUTPUT_LANGUAGE\' specified : ") 
(declare-const var1592!2 String)
(assert (= var1592!2 (str.++ var1592!1 "Invalid \u0027OUTPUT_LANGUAGE\u0027 specified : ")))
(assert true)
(define-const var3940 String (append/672562846 var3378 var1607)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3378!1 String)
(assert (= var3378!1 (str.++ var3378 var1607)))
(assert true)
(define-const var3552 String (toString/-2075883882 var3940)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2546 var3552)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var2546!1 var3818)
(declare-const var3552!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1607=r2, var233=null_type, var3818=java.io.PrintStream, var2174=java.lang.System, var2546=$r1, var1592=$r0, var3378=$r3, var3940=$r4, var3552=$r5}
; {r2=var1607, null_type=var233, java.io.PrintStream=var3818, java.lang.System=var2174, $r1=var2546, $r0=var1592, $r3=var3378, $r4=var3940, $r5=var3552}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid \'OUTPUT_LANGUAGE\' specified : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	return 1
;block_num 1