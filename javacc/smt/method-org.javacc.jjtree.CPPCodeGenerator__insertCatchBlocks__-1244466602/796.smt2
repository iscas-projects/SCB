(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var299 0)
(declare-sort var2286 0)
(declare-sort var2389 0)
(declare-sort var2044 0)
(declare-sort var3011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var2389 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2286) Bool)
(declare-const null-var299 var299)
(declare-const null-var2286 var2286)
(declare-const null-var2389 var2389)
(declare-const null-var2044 var2044)
(declare-const null-String String)
(declare-const var1546 var299) ; Statement: r40 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var1546 null-var299)))
(declare-const var3936 var2286) ; Statement: r6 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var3936 null-var2286)))
(declare-const var1160 var2389) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var1160 null-var2389)))
(declare-const var720 var2044) ; Statement: r41 := @parameter2: java.util.Enumeration 
(assert (not (= var720 null-var2044)))
(declare-const var3960 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var3960 null-String)))
(define-const var161 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var161)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var161!1 String)
(assert (= var161!1 ""))
(assert true)
(define-const var2115 String (append/672562846 var161!1 var3960)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var161!2 String)
(assert (= var161!2 (str.++ var161!1 var3960)))
(assert true)
(define-const var1662 String (append/672562846 var2115 "} catch (...) {")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} catch (...) {") 
(declare-const var2115!1 String)
(assert (= var2115!1 (str.++ var2115 "} catch (...) {")))
(assert true)
(define-const var2599 String (toString/-2075883882 var1662)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1160 var2599)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var1160!1 var2389)
(declare-const var2599!1 String)
(assert true)
(define-const var3414 Bool (usesCloseNodeVar/-1769174946 var3936)) ; Statement: $z0 = virtualinvoke r6.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3414 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean)}
; {var299=org.javacc.jjtree.CPPCodeGenerator, var1546=r40, var2286=org.javacc.jjtree.NodeScope, var3936=r6, var2389=org.javacc.jjtree.IO, var1160=r0, var2044=java.util.Enumeration, var720=r41, var3960=r2, var3011=null_type, var161=$r1, var2115=$r3, var1662=$r4, var2599=$r5, var3414=$z0}
; {org.javacc.jjtree.CPPCodeGenerator=var299, r40=var1546, org.javacc.jjtree.NodeScope=var2286, r6=var3936, org.javacc.jjtree.IO=var2389, r0=var1160, java.util.Enumeration=var2044, r41=var720, r2=var3960, null_type=var3011, $r1=var161, $r3=var2115, $r4=var1662, $r5=var2599, $z0=var3414}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r40 := @this: org.javacc.jjtree.CPPCodeGenerator;	r6 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r41 := @parameter2: java.util.Enumeration;	r2 := @parameter3: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("} catch (...) {");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	$z0 = virtualinvoke r6.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto return;	return
;block_num 2