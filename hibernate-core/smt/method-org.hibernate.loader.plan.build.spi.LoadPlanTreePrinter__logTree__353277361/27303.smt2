(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var998 0)
(declare-sort var1178 0)
(declare-sort var2239 0)
(declare-sort var1235 0)
(declare-sort var3264 0)
(declare-sort var916 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun extractDetails/-1597291001 (var2171 var998) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var2239 String) void)
(declare-fun generateNodePrefix/1551097630 (var1235 Int) String)
(declare-fun var998_getReturns/594431953 (var998) var3264)
(declare-fun var3264_iterator/-912451715 (var3264) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var998_getQuerySpaces/-772010050 (var998) var592)
(declare-fun write/-1177735798 (var916 var592 Int var1178 var2239) void)
(declare-fun flush/-1073200041 (var2239) void)
(declare-const null-var2171 var2171)
(declare-const null-var998 var998)
(declare-const null-var1178 var1178)
(declare-const null-var2239 var2239)
(declare-const var1235-INSTANCE var1235)
(declare-const var916-INSTANCE var916)
(declare-const var2585 var2171) ; Statement: r2 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter 
(assert (not (= var2585 null-var2171)))
(declare-const var529 var998) ; Statement: r3 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan 
(assert (not (= var529 null-var998)))
(declare-const var393 var1178) ; Statement: r18 := @parameter1: org.hibernate.loader.plan.exec.spi.AliasResolutionContext 
(assert (not (= var393 null-var1178)))
(declare-const var785 var2239) ; Statement: r0 := @parameter2: java.io.PrintWriter 
(assert (not (= var785 null-var2239)))
(define-const var3412 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3412)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3412!1 String)
(assert (= var3412!1 ""))
(assert true)
(define-const var2321 String (append/672562846 var3412!1 "LoadPlan(")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LoadPlan(") 
(declare-const var3412!2 String)
(assert (= var3412!2 (str.++ var3412!1 "LoadPlan(")))
(assert true)
(define-const var831 String (extractDetails/-1597291001 var2585 var529)) ; Statement: $r4 = specialinvoke r2.<org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter: java.lang.String extractDetails(org.hibernate.loader.plan.spi.LoadPlan)>(r3) 
(assert true)
(define-const var3294 String (append/672562846 var2321 var831)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2321!1 String)
(assert (= var2321!1 (str.++ var2321 var831)))
(assert true)
(define-const var2045 String (append/672562846 var3294 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3294!1 String)
(assert (= var3294!1 (str.++ var3294 ")")))
(assert true)
(define-const var1704 String (toString/-2075883882 var2045)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var785 var1704)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r8) 

(declare-const var785!1 var2239)
(declare-const var1704!1 String)
(define-const var525 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var525)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var525!1 String)
(assert (= var525!1 ""))
(define-const var804 var1235 var1235-INSTANCE) ; Statement: $r10 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE> 
(assert true)
(define-const var3817 String (generateNodePrefix/1551097630 var804 1)) ; Statement: $r11 = virtualinvoke $r10.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>(1) 
(assert true)
(define-const var2796 String (append/672562846 var525!1 var3817)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var525!2 String)
(assert (= var525!2 (str.++ var525!1 var3817)))
(assert true)
(define-const var1522 String (append/672562846 var2796 "Returns")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Returns") 
(declare-const var2796!1 String)
(assert (= var2796!1 (str.++ var2796 "Returns")))
(assert true)
(define-const var89 String (toString/-2075883882 var1522)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var785!1 var89)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r14) 

(declare-const var785!2 var2239)
(declare-const var89!1 String)
(define-const var1049 var3264 (var998_getReturns/594431953 var529)) ; Statement: $r15 = interfaceinvoke r3.<org.hibernate.loader.plan.spi.LoadPlan: java.util.List getReturns()>() 
(define-const var2747 Iterator (var3264_iterator/-912451715 var1049)) ; Statement: r16 = interfaceinvoke $r15.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var891 Bool (Iterator_hasNext/-1669924200 var2747)) ; Statement: $z0 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r17 = <org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter INSTANCE> 
(assert (= (ite var891 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2069 var916 var916-INSTANCE) ; Statement: $r17 = <org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter INSTANCE> 
(define-const var3998 var592 (var998_getQuerySpaces/-772010050 var529)) ; Statement: $r19 = interfaceinvoke r3.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.QuerySpaces getQuerySpaces()>() 
(assert true)
;(assert (write/-1177735798 var2069 var3998 1 var393 var785!2)) ; Statement: virtualinvoke $r17.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: void write(org.hibernate.loader.plan.spi.QuerySpaces,int,org.hibernate.loader.plan.exec.spi.AliasResolutionContext,java.io.PrintWriter)>($r19, 1, r18, r0) 

(declare-const var2069!1 var916)
(declare-const var3998!1 var592)
(declare-const var819 Int)
(declare-const var393!1 var1178)
(declare-const var785!3 var2239)
(assert true)
;(assert (flush/-1073200041 var785!3)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void flush()>() 

(declare-const var785!4 var2239)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), extractDetails/-1597291001=([org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, org.hibernate.loader.plan.spi.LoadPlan], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), generateNodePrefix/1551097630=([org.hibernate.loader.plan.build.spi.TreePrinterHelper, int], java.lang.String), var998_getReturns/594431953=([org.hibernate.loader.plan.spi.LoadPlan], java.util.List), var3264_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var998_getQuerySpaces/-772010050=([org.hibernate.loader.plan.spi.LoadPlan], org.hibernate.loader.plan.spi.QuerySpaces), write/-1177735798=([org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, org.hibernate.loader.plan.spi.QuerySpaces, int, org.hibernate.loader.plan.exec.spi.AliasResolutionContext, java.io.PrintWriter], void), flush/-1073200041=([java.io.PrintWriter], void)}
; {var2171=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, var2585=r2, var998=org.hibernate.loader.plan.spi.LoadPlan, var529=r3, var1178=org.hibernate.loader.plan.exec.spi.AliasResolutionContext, var393=r18, var2239=java.io.PrintWriter, var785=r0, var3412=$r1, var2321=$r5, var831=$r4, var3294=$r6, var2045=$r7, var1704=$r8, var525=$r9, var1235=org.hibernate.loader.plan.build.spi.TreePrinterHelper, var804=$r10, var3817=$r11, var2796=$r12, var1522=$r13, var89=$r14, var3264=java.util.List, var1049=$r15, var2747=r16, var891=$z0, var916=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var2069=$r17, var592=org.hibernate.loader.plan.spi.QuerySpaces, var3998=$r19, var819=1}
; {org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter=var2171, r2=var2585, org.hibernate.loader.plan.spi.LoadPlan=var998, r3=var529, org.hibernate.loader.plan.exec.spi.AliasResolutionContext=var1178, r18=var393, java.io.PrintWriter=var2239, r0=var785, $r1=var3412, $r5=var2321, $r4=var831, $r6=var3294, $r7=var2045, $r8=var1704, $r9=var525, org.hibernate.loader.plan.build.spi.TreePrinterHelper=var1235, $r10=var804, $r11=var3817, $r12=var2796, $r13=var1522, $r14=var89, java.util.List=var3264, $r15=var1049, r16=var2747, $z0=var891, org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var916, $r17=var2069, org.hibernate.loader.plan.spi.QuerySpaces=var592, $r19=var3998, 1=var819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter;	r3 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan;	r18 := @parameter1: org.hibernate.loader.plan.exec.spi.AliasResolutionContext;	r0 := @parameter2: java.io.PrintWriter;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LoadPlan(");	$r4 = specialinvoke r2.<org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter: java.lang.String extractDetails(org.hibernate.loader.plan.spi.LoadPlan)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r8);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE>;	$r11 = virtualinvoke $r10.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>(1);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Returns");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r14);	$r15 = interfaceinvoke r3.<org.hibernate.loader.plan.spi.LoadPlan: java.util.List getReturns()>();	r16 = interfaceinvoke $r15.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r17 = <org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter INSTANCE>;	$r17 = <org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter INSTANCE>;	$r19 = interfaceinvoke r3.<org.hibernate.loader.plan.spi.LoadPlan: org.hibernate.loader.plan.spi.QuerySpaces getQuerySpaces()>();	virtualinvoke $r17.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: void write(org.hibernate.loader.plan.spi.QuerySpaces,int,org.hibernate.loader.plan.exec.spi.AliasResolutionContext,java.io.PrintWriter)>($r19, 1, r18, r0);	virtualinvoke r0.<java.io.PrintWriter: void flush()>();	return
;block_num 3