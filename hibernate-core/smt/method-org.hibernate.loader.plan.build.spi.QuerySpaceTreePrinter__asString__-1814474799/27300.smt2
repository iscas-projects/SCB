(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1227 0)
(declare-sort var929 0)
(declare-sort var2563 0)
(declare-sort var3874 0)
(declare-sort var622 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3874-init () var3874)
(declare-fun <init>/-707998177 (var3874) void)
(declare-fun var622-init () var622)
(declare-fun <init>/-1917080009 (var622 var2253) void)
(declare-fun cast-from-var3874-to-var2253 (var3874) var2253)
(declare-fun write/-1835316905 (var1227 var929 Int var2563 var622) void)
(declare-fun flush/1759018410 (var622) void)
(declare-fun String-init () String)
(declare-fun toByteArray/1343874077 (var3874) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-var1227 var1227)
(declare-const null-var929 var929)
(declare-const null-Int Int)
(declare-const null-var2563 var2563)
(declare-const var1852 var1227) ; Statement: r2 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter 
(assert (not (= var1852 null-var1227)))
(declare-const var3442 var929) ; Statement: r3 := @parameter0: org.hibernate.loader.plan.spi.QuerySpaces 
(assert (not (= var3442 null-var929)))
(declare-const var3441 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3441 null-Int)))
(declare-const var1312 var2563) ; Statement: r4 := @parameter2: org.hibernate.loader.plan.exec.spi.AliasResolutionContext 
(assert (not (= var1312 null-var2563)))
(define-const var2825 var3874 var3874-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var2825)) ; Statement: specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var2825!1 var3874)
(define-const var3579 var622 var622-init) ; Statement: $r1 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var3579 (cast-from-var3874-to-var2253 var2825!1))) ; Statement: specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var3579!1 var622)
(declare-const var2825!2 var3874)
(assert true)
;(assert (write/-1835316905 var1852 var3442 var3441 var1312 var3579!1)) ; Statement: virtualinvoke r2.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: void write(org.hibernate.loader.plan.spi.QuerySpaces,int,org.hibernate.loader.plan.exec.spi.AliasResolutionContext,java.io.PrintStream)>(r3, i0, r4, $r1) 

(declare-const var1852!1 var1227)
(declare-const var3442!1 var929)
(declare-const var3441!1 Int)
(declare-const var1312!1 var2563)
(declare-const var3579!2 var622)
(assert true)
;(assert (flush/1759018410 var3579!2)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void flush()>() 

(declare-const var3579!3 var622)
(define-const var2569 String String-init) ; Statement: $r5 = new java.lang.String 
(assert true)
(define-const var455 (Array Int Int) (toByteArray/1343874077 var2825!2)) ; Statement: $r6 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/76075152 var2569 var455)) ; Statement: specialinvoke $r5.<java.lang.String: void <init>(byte[])>($r6) 

(declare-const var2569!1 String)
(declare-const var455!1 (Array Int Int))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3874-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), var622-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var3874-to-var2253=([java.io.ByteArrayOutputStream], java.io.OutputStream), write/-1835316905=([org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, org.hibernate.loader.plan.spi.QuerySpaces, int, org.hibernate.loader.plan.exec.spi.AliasResolutionContext, java.io.PrintStream], void), flush/1759018410=([java.io.PrintStream], void), String-init=([], java.lang.String), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var1227=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var1852=r2, var929=org.hibernate.loader.plan.spi.QuerySpaces, var3442=r3, var3441=i0, var2563=org.hibernate.loader.plan.exec.spi.AliasResolutionContext, var1312=r4, var3874=java.io.ByteArrayOutputStream, var2825=$r0, var622=java.io.PrintStream, var3579=$r1, var2253=java.io.OutputStream, var2569=$r5, var455=$r6}
; {org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var1227, r2=var1852, org.hibernate.loader.plan.spi.QuerySpaces=var929, r3=var3442, i0=var3441, org.hibernate.loader.plan.exec.spi.AliasResolutionContext=var2563, r4=var1312, java.io.ByteArrayOutputStream=var3874, $r0=var2825, java.io.PrintStream=var622, $r1=var3579, java.io.OutputStream=var2253, $r5=var2569, $r6=var455}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r2 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;	r3 := @parameter0: org.hibernate.loader.plan.spi.QuerySpaces;	i0 := @parameter1: int;	r4 := @parameter2: org.hibernate.loader.plan.exec.spi.AliasResolutionContext;	$r0 = new java.io.ByteArrayOutputStream;	specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>();	$r1 = new java.io.PrintStream;	specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke r2.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: void write(org.hibernate.loader.plan.spi.QuerySpaces,int,org.hibernate.loader.plan.exec.spi.AliasResolutionContext,java.io.PrintStream)>(r3, i0, r4, $r1);	virtualinvoke $r1.<java.io.PrintStream: void flush()>();	$r5 = new java.lang.String;	$r6 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	specialinvoke $r5.<java.lang.String: void <init>(byte[])>($r6);	return $r5
;block_num 1