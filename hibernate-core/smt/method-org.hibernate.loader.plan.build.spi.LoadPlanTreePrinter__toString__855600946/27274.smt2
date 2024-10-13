(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2069 0)
(declare-sort var1074 0)
(declare-sort var3439 0)
(declare-sort var2157 0)
(declare-sort var2636 0)
(declare-sort var2109 0)
(declare-sort var912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2157-init () var2157)
(declare-fun <init>/-707998177 (var2157) void)
(declare-fun var2636-init () var2636)
(declare-fun <init>/-1917080009 (var2636 var2109) void)
(declare-fun cast-from-var2157-to-var2109 (var2157) var2109)
(declare-fun var912-init () var912)
(declare-fun <init>/815973802 (var912 var2109) void)
(declare-fun cast-from-var2636-to-var2109 (var2636) var2109)
(declare-fun logTree/353277361 (var2069 var1074 var3439 var912) void)
(declare-fun flush/-1073200041 (var912) void)
(declare-fun flush/1759018410 (var2636) void)
(declare-fun String-init () String)
(declare-fun toByteArray/1343874077 (var2157) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-var2069 var2069)
(declare-const null-var1074 var1074)
(declare-const null-var3439 var3439)
(declare-const var1374 var2069) ; Statement: r3 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter 
(assert (not (= var1374 null-var2069)))
(declare-const var1492 var1074) ; Statement: r4 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan 
(assert (not (= var1492 null-var1074)))
(declare-const var1891 var3439) ; Statement: r5 := @parameter1: org.hibernate.loader.plan.exec.spi.AliasResolutionContext 
(assert (not (= var1891 null-var3439)))
(define-const var1712 var2157 var2157-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var1712)) ; Statement: specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var1712!1 var2157)
(define-const var2781 var2636 var2636-init) ; Statement: $r1 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var2781 (cast-from-var2157-to-var2109 var1712!1))) ; Statement: specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var2781!1 var2636)
(declare-const var1712!2 var2157)
(define-const var3713 var912 var912-init) ; Statement: $r2 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/815973802 var3713 (cast-from-var2636-to-var2109 var2781!1))) ; Statement: specialinvoke $r2.<java.io.PrintWriter: void <init>(java.io.OutputStream)>($r1) 

(declare-const var3713!1 var912)
(declare-const var2781!2 var2636)
(assert true)
;(assert (logTree/353277361 var1374 var1492 var1891 var3713!1)) ; Statement: specialinvoke r3.<org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter: void logTree(org.hibernate.loader.plan.spi.LoadPlan,org.hibernate.loader.plan.exec.spi.AliasResolutionContext,java.io.PrintWriter)>(r4, r5, $r2) 

(declare-const var1374!1 var2069)
(declare-const var1492!1 var1074)
(declare-const var1891!1 var3439)
(declare-const var3713!2 var912)
(assert true)
;(assert (flush/-1073200041 var3713!2)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void flush()>() 

(declare-const var3713!3 var912)
(assert true)
;(assert (flush/1759018410 var2781!2)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void flush()>() 

(declare-const var2781!3 var2636)
(define-const var3923 String String-init) ; Statement: $r6 = new java.lang.String 
(assert true)
(define-const var3960 (Array Int Int) (toByteArray/1343874077 var1712!2)) ; Statement: $r7 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/76075152 var3923 var3960)) ; Statement: specialinvoke $r6.<java.lang.String: void <init>(byte[])>($r7) 

(declare-const var3923!1 String)
(declare-const var3960!1 (Array Int Int))
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2157-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), var2636-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var2157-to-var2109=([java.io.ByteArrayOutputStream], java.io.OutputStream), var912-init=([], java.io.PrintWriter), <init>/815973802=([java.io.PrintWriter, java.io.OutputStream], void), cast-from-var2636-to-var2109=([java.io.PrintStream], java.io.OutputStream), logTree/353277361=([org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, org.hibernate.loader.plan.spi.LoadPlan, org.hibernate.loader.plan.exec.spi.AliasResolutionContext, java.io.PrintWriter], void), flush/-1073200041=([java.io.PrintWriter], void), flush/1759018410=([java.io.PrintStream], void), String-init=([], java.lang.String), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var2069=org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter, var1374=r3, var1074=org.hibernate.loader.plan.spi.LoadPlan, var1492=r4, var3439=org.hibernate.loader.plan.exec.spi.AliasResolutionContext, var1891=r5, var2157=java.io.ByteArrayOutputStream, var1712=$r0, var2636=java.io.PrintStream, var2781=$r1, var2109=java.io.OutputStream, var912=java.io.PrintWriter, var3713=$r2, var3923=$r6, var3960=$r7}
; {org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter=var2069, r3=var1374, org.hibernate.loader.plan.spi.LoadPlan=var1074, r4=var1492, org.hibernate.loader.plan.exec.spi.AliasResolutionContext=var3439, r5=var1891, java.io.ByteArrayOutputStream=var2157, $r0=var1712, java.io.PrintStream=var2636, $r1=var2781, java.io.OutputStream=var2109, java.io.PrintWriter=var912, $r2=var3713, $r6=var3923, $r7=var3960}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r3 := @this: org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter;	r4 := @parameter0: org.hibernate.loader.plan.spi.LoadPlan;	r5 := @parameter1: org.hibernate.loader.plan.exec.spi.AliasResolutionContext;	$r0 = new java.io.ByteArrayOutputStream;	specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>();	$r1 = new java.io.PrintStream;	specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	$r2 = new java.io.PrintWriter;	specialinvoke $r2.<java.io.PrintWriter: void <init>(java.io.OutputStream)>($r1);	specialinvoke r3.<org.hibernate.loader.plan.build.spi.LoadPlanTreePrinter: void logTree(org.hibernate.loader.plan.spi.LoadPlan,org.hibernate.loader.plan.exec.spi.AliasResolutionContext,java.io.PrintWriter)>(r4, r5, $r2);	virtualinvoke $r2.<java.io.PrintWriter: void flush()>();	virtualinvoke $r1.<java.io.PrintStream: void flush()>();	$r6 = new java.lang.String;	$r7 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	specialinvoke $r6.<java.lang.String: void <init>(byte[])>($r7);	return $r6
;block_num 1