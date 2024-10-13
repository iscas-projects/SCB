(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1561 0)
(declare-sort var240 0)
(declare-sort var2424 0)
(declare-sort var2104 0)
(declare-sort var2172 0)
(declare-sort var844 0)
(declare-sort var328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var2424) ClassObject)
(declare-fun cast-from-var1561-to-var2424 (var1561) var2424)
(declare-fun templateName/1872402743 (var1561) String)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var2104)
(declare-fun var2172-init () var2172)
(declare-fun var844-init () var844)
(declare-fun <init>/393586270 (var844 var2104) void)
(declare-fun <init>/30097470 (var2172 var328) void)
(declare-fun cast-from-var844-to-var328 (var844) var328)
(declare-fun process/-849902221 (var1561 var2172 var240 Bool) void)
(declare-const null-var1561 var1561)
(declare-const null-var240 var240)
(declare-const null-var2104 var2104)
(declare-const var1748 var1561) ; Statement: r0 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var1748 null-var1561)))
(declare-const var3621 var240) ; Statement: r6 := @parameter0: java.io.PrintWriter 
(assert (not (= var3621 null-var240)))
(assert true)
(define-const var1410 ClassObject (getClass/1258963082 (cast-from-var1561-to-var2424 var1748))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var470 String (templateName/1872402743 var1748)) ; Statement: $r1 = r0.<org.javacc.utils.OutputFileGenerator: java.lang.String templateName> 
(assert true)
(define-const var2802 var2104 (getResourceAsStream/2018191724 var1410 var470)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r1) 
 ; Statement: if r3 != null goto $r4 = new java.io.BufferedReader 
(assert (not (= var2802 null-var2104))) ; Cond: r3 != null 
(define-const var2757 var2172 var2172-init) ; Statement: $r4 = new java.io.BufferedReader 
(define-const var2726 var844 var844-init) ; Statement: $r5 = new java.io.InputStreamReader 
(assert true)
;(assert (<init>/393586270 var2726 var2802)) ; Statement: specialinvoke $r5.<java.io.InputStreamReader: void <init>(java.io.InputStream)>(r3) 

(declare-const var2726!1 var844)
(declare-const var2802!1 var2104)
(assert true)
;(assert (<init>/30097470 var2757 (cast-from-var844-to-var328 var2726!1))) ; Statement: specialinvoke $r4.<java.io.BufferedReader: void <init>(java.io.Reader)>($r5) 

(declare-const var2757!1 var2172)
(declare-const var2726!2 var844)
(assert true)
;(assert (process/-849902221 var1748 var2757!1 var3621 (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<org.javacc.utils.OutputFileGenerator: void process(java.io.BufferedReader,java.io.PrintWriter,boolean)>($r4, r6, 0) 

(declare-const var1748!1 var1561)
(declare-const var2757!2 var2172)
(declare-const var3621!1 var240)
(declare-const var3765 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1561-to-var2424=([org.javacc.utils.OutputFileGenerator], java.lang.Object), templateName/1872402743=([org.javacc.utils.OutputFileGenerator], java.lang.String), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), var2172-init=([], java.io.BufferedReader), var844-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var844-to-var328=([java.io.InputStreamReader], java.io.Reader), process/-849902221=([org.javacc.utils.OutputFileGenerator, java.io.BufferedReader, java.io.PrintWriter, boolean], void)}
; {var1561=org.javacc.utils.OutputFileGenerator, var1748=r0, var240=java.io.PrintWriter, var3621=r6, var2424=java.lang.Object, var1410=$r2, var470=$r1, var2104=java.io.InputStream, var2802=r3, var2172=java.io.BufferedReader, var2757=$r4, var844=java.io.InputStreamReader, var2726=$r5, var328=java.io.Reader, var3765=0}
; {org.javacc.utils.OutputFileGenerator=var1561, r0=var1748, java.io.PrintWriter=var240, r6=var3621, java.lang.Object=var2424, $r2=var1410, $r1=var470, java.io.InputStream=var2104, r3=var2802, java.io.BufferedReader=var2172, $r4=var2757, java.io.InputStreamReader=var844, $r5=var2726, java.io.Reader=var328, 0=var3765}
;seq 
;cnt {}
;stmts r0 := @this: org.javacc.utils.OutputFileGenerator;	r6 := @parameter0: java.io.PrintWriter;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = r0.<org.javacc.utils.OutputFileGenerator: java.lang.String templateName>;	r3 = virtualinvoke $r2.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r1);	if r3 != null goto $r4 = new java.io.BufferedReader;	$r4 = new java.io.BufferedReader;	$r5 = new java.io.InputStreamReader;	specialinvoke $r5.<java.io.InputStreamReader: void <init>(java.io.InputStream)>(r3);	specialinvoke $r4.<java.io.BufferedReader: void <init>(java.io.Reader)>($r5);	specialinvoke r0.<org.javacc.utils.OutputFileGenerator: void process(java.io.BufferedReader,java.io.PrintWriter,boolean)>($r4, r6, 0);	return
;block_num 2