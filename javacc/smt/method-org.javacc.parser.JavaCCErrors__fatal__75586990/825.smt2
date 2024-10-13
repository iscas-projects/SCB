(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var707 0)
(declare-sort var1804 0)
(declare-sort var73 0)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1804 String) void)
(declare-fun var3300-init () var3300)
(declare-fun <init>/-1084991535 (var3300 String) void)
(declare-const null-String String)
(declare-const var73-err var1804)
(declare-const var919 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var919 null-String)))
(define-const var3889 var1804 var73-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(define-const var1784 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1784)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1784!1 String)
(assert (= var1784!1 ""))
(assert true)
(define-const var3061 String (append/672562846 var1784!1 "Fatal Error: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fatal Error: ") 
(declare-const var1784!2 String)
(assert (= var1784!2 (str.++ var1784!1 "Fatal Error: ")))
(assert true)
(define-const var1889 String (append/672562846 var3061 var919)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3061!1 String)
(assert (= var3061!1 (str.++ var3061 var919)))
(assert true)
(define-const var3305 String (toString/-2075883882 var1889)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3889 var3305)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var3889!1 var1804)
(declare-const var3305!1 String)
(define-const var1622 var3300 var3300-init) ; Statement: $r6 = new java.lang.RuntimeException 
(define-const var124 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var124)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var124!1 String)
(assert (= var124!1 ""))
(assert true)
(define-const var903 String (append/672562846 var124!1 "Fatal Error: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fatal Error: ") 
(declare-const var124!2 String)
(assert (= var124!2 (str.++ var124!1 "Fatal Error: ")))
(assert true)
(define-const var1047 String (append/672562846 var903 var919)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var903!1 String)
(assert (= var903!1 (str.++ var903 var919)))
(assert true)
(define-const var2990 String (toString/-2075883882 var1047)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1622 var2990)) ; Statement: specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String)>($r10) 

(declare-const var1622!1 var3300)
(declare-const var2990!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3300-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var919=r2, var707=null_type, var1804=java.io.PrintStream, var73=java.lang.System, var3889=$r1, var1784=$r0, var3061=$r3, var1889=$r4, var3305=$r5, var3300=java.lang.RuntimeException, var1622=$r6, var124=$r7, var903=$r8, var1047=$r9, var2990=$r10}
; {r2=var919, null_type=var707, java.io.PrintStream=var1804, java.lang.System=var73, $r1=var3889, $r0=var1784, $r3=var3061, $r4=var1889, $r5=var3305, java.lang.RuntimeException=var3300, $r6=var1622, $r7=var124, $r8=var903, $r9=var1047, $r10=var2990}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fatal Error: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	$r6 = new java.lang.RuntimeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fatal Error: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 1