(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var626 0)
(declare-sort var2739 0)
(declare-sort var2414 0)
(declare-sort var3436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2739_getProperty/258823597 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var626 String) void)
(declare-fun var3436_listLibraries/2072333625 () (Array Int var2414))
(declare-fun var3436_printLibraries/-420489325 ((Array Int var2414) var626) void)
(declare-const null-var626 var626)
(declare-const var1977 var626) ; Statement: r0 := @parameter0: java.io.PrintStream 
(assert (not (= var1977 null-var626)))
(define-const var3574 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3574)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3574!1 String)
(assert (= var3574!1 ""))
(assert true)
(define-const var1955 String (append/672562846 var3574!1 "ant.home: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ") 
(declare-const var3574!2 String)
(assert (= var3574!2 (str.++ var3574!1 "ant.home: ")))
(define-const var485 String (var2739_getProperty/258823597 "ant.home")) ; Statement: $r2 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home") 
(assert true)
(define-const var1559 String (append/672562846 var1955 var485)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1955!1 String)
(assert (= var1955!1 (str.++ var1955 var485)))
(assert true)
(define-const var82 String (toString/-2075883882 var1559)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1977 var82)) ; Statement: virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var1977!1 var626)
(declare-const var82!1 String)
(define-const var3898 (Array Int var2414) var3436_listLibraries/2072333625) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.io.File[] listLibraries()>() 
;(assert (var3436_printLibraries/-420489325 var3898 var1977!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void printLibraries(java.io.File[],java.io.PrintStream)>($r6, r0) 

(declare-const var3898!1 (Array Int var2414))
(declare-const var1977!2 var626)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2739_getProperty/258823597=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3436_listLibraries/2072333625=([], java.io.File[]), var3436_printLibraries/-420489325=([java.io.File[], java.io.PrintStream], void)}
; {var626=java.io.PrintStream, var1977=r0, var3574=$r1, var1955=$r3, var2739=java.lang.System, var485=$r2, var1559=$r4, var82=$r5, var2414=java.io.File, var3436=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics, var3898=$r6}
; {java.io.PrintStream=var626, r0=var1977, $r1=var3574, $r3=var1955, java.lang.System=var2739, $r2=var485, $r4=var1559, $r5=var82, java.io.File=var2414, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics=var3436, $r6=var3898}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.PrintStream;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.home: ");	$r2 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.home");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintStream: void println(java.lang.String)>($r5);	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.io.File[] listLibraries()>();	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void printLibraries(java.io.File[],java.io.PrintStream)>($r6, r0);	return
;block_num 1