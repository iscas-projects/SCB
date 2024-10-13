(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var78 0)
(declare-sort var667 0)
(declare-sort var2471 0)
(declare-sort var2813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2471) String)
(declare-fun cast-from-var667-to-var2471 (var667) var2471)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2813 String) void)
(declare-fun cast-from-var78-to-var2813 (var78) var2813)
(declare-const null-var78 var78)
(declare-const null-var667 var667)
(declare-const var3061 var78) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils$ReadOnlyTargetFileException 
(assert (not (= var3061 null-var78)))
(declare-const var3216 var667) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var3216 null-var667)))
(define-const var2383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2383)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2383!1 String)
(assert (= var2383!1 ""))
(assert true)
(define-const var2127 String (append/672562846 var2383!1 "can\u0027t write to read-only destination file ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t write to read-only destination file ") 
(declare-const var2383!2 String)
(assert (= var2383!2 (str.++ var2383!1 "can\u0027t write to read-only destination file ")))
(assert true)
(define-const var524 String (append/-1031950772 var2127 (cast-from-var667-to-var2471 var3216))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2127!1 String)
(assert (str.prefixof var2127 var2127!1))
(assert true)
(define-const var3273 String (toString/-2075883882 var524)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 (cast-from-var78-to-var2813 var3061) var3273)) ; Statement: specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var3061!1 var78)
(declare-const var3273!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var667-to-var2471=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void), cast-from-var78-to-var2813=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils$ReadOnlyTargetFileException], java.io.IOException)}
; {var78=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils$ReadOnlyTargetFileException, var3061=r0, var667=java.io.File, var3216=r2, var2383=$r1, var2127=$r3, var2471=java.lang.Object, var524=$r4, var3273=$r5, var2813=java.io.IOException}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils$ReadOnlyTargetFileException=var78, r0=var3061, java.io.File=var667, r2=var3216, $r1=var2383, $r3=var2127, java.lang.Object=var2471, $r4=var524, $r5=var3273, java.io.IOException=var2813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ResourceUtils$ReadOnlyTargetFileException;	r2 := @parameter0: java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t write to read-only destination file ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r5);	return
;block_num 1