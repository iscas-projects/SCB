(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var2828-separatorChar Int)
(define-const var593 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var593!1 String)
(assert (= var593!1 ""))
(assert true)
(define-const var1431 String (append/672562846 var593!1 ".ant")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".ant") 
(declare-const var593!2 String)
(assert (= var593!2 (str.++ var593!1 ".ant")))
(define-const var3178 Int var2828-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var707 String (append/-1166366385 var1431 var3178)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var1431!1 String)
(assert (str.prefixof var1431 var1431!1))
(assert true)
(define-const var3186 String (append/672562846 var707 "lib")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib") 
(declare-const var707!1 String)
(assert (= var707!1 (str.++ var707 "lib")))
(assert true)
(define-const var1352 String (toString/-2075883882 var3186)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2697 String var1352) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var593=$r0, var1431=$r1, var2828=java.io.File, var3178=$c0, var707=$r2, var3186=$r3, var1352=$r4, var2697=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>}
; {$r0=var593, $r1=var1431, java.io.File=var2828, $c0=var3178, $r2=var707, $r3=var3186, $r4=var1352, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>=var2697}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".ant");	$c0 = <java.io.File: char separatorChar>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lib");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> = $r4;	return
;block_num 1