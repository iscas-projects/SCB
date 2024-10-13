(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentText/-1370994396 (var1319) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1319 var1319)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2738 var1319) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var2738 null-var1319)))
(declare-const var1051 (Array Int Int)) ; Statement: r4 := @parameter0: char[] 
(assert (not (= var1051 null-__Array__Int__Int__)))
(declare-const var1458 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1458 null-Int)))
(declare-const var1029 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1029 null-Int)))
(define-const var697 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var697)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var697!1 String)
(assert (= var697!1 ""))
(define-const var3194 String (currentText/-1370994396 var2738)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> 
(assert true)
(define-const var2268 String (append/672562846 var697!1 var3194)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var697!2 String)
(assert (= var697!2 (str.++ var697!1 var3194)))
(define-const var1717 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1717 var1051)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r4) 

(declare-const var1717!1 String)
(declare-const var1051!1 (Array Int Int))
(define-const var2057 Int (+ var1458 var1029)) ; Statement: $i2 = i0 + i1 
(assert (and true (and (>= var1458 0) (>= (str.len var1717!1) var2057) (>= var2057 var1458))))
(define-const var2103 String (substring/-1240304868 var1717!1 var1458 var2057)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2) 
(assert true)
(define-const var2431 String (append/672562846 var2268 var2103)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2268!1 String)
(assert (= var2268!1 (str.++ var2268 var2103)))
(assert true)
(define-const var2936 String (toString/-2075883882 var2431)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2738!1 var1319)
(assert (not (= var2738!1 null-var1319)))
(assert (= (currentText/-1370994396 var2738!1) var2936)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-915723298=([java.lang.String, char[]], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1319=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var2738=r1, var1051=r4, var1458=i0, var1029=i1, var697=$r0, var3194=$r2, var2268=$r6, var1717=$r3, var2057=$i2, var2103=$r5, var2431=$r7, var2936=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var1319, r1=var2738, r4=var1051, i0=var1458, i1=var1029, $r0=var697, $r2=var3194, $r6=var2268, $r3=var1717, $i2=var2057, $r5=var2103, $r7=var2431, $r8=var2936}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[])>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(char[])>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r4 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r4);	$i2 = i0 + i1;	$r5 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = $r8;	return
;block_num 1