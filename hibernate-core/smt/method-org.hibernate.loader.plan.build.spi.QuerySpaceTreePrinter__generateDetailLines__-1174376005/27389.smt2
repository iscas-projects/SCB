(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort var2574 0)
(declare-sort var293 0)
(declare-sort var2092 0)
(declare-sort var2488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun generateNodePrefix/1551097630 (var2488 Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun extractDetails/1996824615 (var3742 var2574) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var2092 String) void)
(declare-const null-var3742 var3742)
(declare-const null-var2574 var2574)
(declare-const null-Int Int)
(declare-const null-var293 var293)
(declare-const null-var2092 var2092)
(declare-const var2488-INSTANCE var2488)
(declare-const var1915 var3742) ; Statement: r4 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter 
(assert (not (= var1915 null-var3742)))
(declare-const var65 var2574) ; Statement: r5 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace 
(assert (not (= var65 null-var2574)))
(declare-const var2148 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2148 null-Int)))
(declare-const var1960 var293) ; Statement: r10 := @parameter2: org.hibernate.loader.plan.exec.spi.AliasResolutionContext 
(assert (not (= var1960 null-var293)))
(declare-const var981 var2092) ; Statement: r0 := @parameter3: java.io.PrintWriter 
(assert (not (= var981 null-var2092)))
(define-const var1179 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1179)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1179!1 String)
(assert (= var1179!1 ""))
(define-const var2319 var2488 var2488-INSTANCE) ; Statement: $r2 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE> 
(assert true)
(define-const var1749 String (generateNodePrefix/1551097630 var2319 var2148)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>(i0) 
(assert true)
(define-const var1595 String (append/672562846 var1179!1 var1749)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1179!2 String)
(assert (= var1179!2 (str.++ var1179!1 var1749)))
(assert true)
(define-const var3160 String (extractDetails/1996824615 var1915 var65)) ; Statement: $r6 = virtualinvoke r4.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: java.lang.String extractDetails(org.hibernate.loader.plan.spi.QuerySpace)>(r5) 
(assert true)
(define-const var2725 String (append/672562846 var1595 var3160)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1595!1 String)
(assert (= var1595!1 (str.++ var1595 var3160)))
(assert true)
(define-const var3681 String (toString/-2075883882 var2725)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var981 var3681)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var981!1 var2092)
(declare-const var3681!1 String)
 ; Statement: if r10 != null goto $r11 = new java.lang.StringBuilder 
(assert (not (not (= var1960 null-var293)))) ; Negate: Cond: r10 != null  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), generateNodePrefix/1551097630=([org.hibernate.loader.plan.build.spi.TreePrinterHelper, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), extractDetails/1996824615=([org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var3742=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var1915=r4, var2574=org.hibernate.loader.plan.spi.QuerySpace, var65=r5, var2148=i0, var293=org.hibernate.loader.plan.exec.spi.AliasResolutionContext, var1960=r10, var2092=java.io.PrintWriter, var981=r0, var1179=$r1, var2488=org.hibernate.loader.plan.build.spi.TreePrinterHelper, var2319=$r2, var1749=$r3, var1595=$r7, var3160=$r6, var2725=$r8, var3681=$r9}
; {org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var3742, r4=var1915, org.hibernate.loader.plan.spi.QuerySpace=var2574, r5=var65, i0=var2148, org.hibernate.loader.plan.exec.spi.AliasResolutionContext=var293, r10=var1960, java.io.PrintWriter=var2092, r0=var981, $r1=var1179, org.hibernate.loader.plan.build.spi.TreePrinterHelper=var2488, $r2=var2319, $r3=var1749, $r7=var1595, $r6=var3160, $r8=var2725, $r9=var3681}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;	r5 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace;	i0 := @parameter1: int;	r10 := @parameter2: org.hibernate.loader.plan.exec.spi.AliasResolutionContext;	r0 := @parameter3: java.io.PrintWriter;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE>;	$r3 = virtualinvoke $r2.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>(i0);	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke r4.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: java.lang.String extractDetails(org.hibernate.loader.plan.spi.QuerySpace)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r9);	if r10 != null goto $r11 = new java.lang.StringBuilder;	return
;block_num 2