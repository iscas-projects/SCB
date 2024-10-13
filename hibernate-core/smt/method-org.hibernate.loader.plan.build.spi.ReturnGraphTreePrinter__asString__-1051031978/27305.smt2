(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2950 0)
(declare-sort var2771 0)
(declare-sort var3660 0)
(declare-sort var2680 0)
(declare-sort var2887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3660-init () var3660)
(declare-fun <init>/-707998177 (var3660) void)
(declare-fun var2680-init () var2680)
(declare-fun <init>/-1917080009 (var2680 var2887) void)
(declare-fun cast-from-var3660-to-var2887 (var3660) var2887)
(declare-fun write/1448660738 (var2950 var2771 Int var2680) void)
(declare-fun flush/1759018410 (var2680) void)
(declare-fun String-init () String)
(declare-fun toByteArray/1343874077 (var3660) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-var2950 var2950)
(declare-const null-var2771 var2771)
(declare-const null-Int Int)
(declare-const var1439 var2950) ; Statement: r2 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter 
(assert (not (= var1439 null-var2950)))
(declare-const var663 var2771) ; Statement: r3 := @parameter0: org.hibernate.loader.plan.spi.Return 
(assert (not (= var663 null-var2771)))
(declare-const var3556 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3556 null-Int)))
(define-const var3585 var3660 var3660-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var3585)) ; Statement: specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var3585!1 var3660)
(define-const var3512 var2680 var2680-init) ; Statement: $r1 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var3512 (cast-from-var3660-to-var2887 var3585!1))) ; Statement: specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0) 

(declare-const var3512!1 var2680)
(declare-const var3585!2 var3660)
(assert true)
;(assert (write/1448660738 var1439 var663 var3556 var3512!1)) ; Statement: virtualinvoke r2.<org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter: void write(org.hibernate.loader.plan.spi.Return,int,java.io.PrintStream)>(r3, i0, $r1) 

(declare-const var1439!1 var2950)
(declare-const var663!1 var2771)
(declare-const var3556!1 Int)
(declare-const var3512!2 var2680)
(assert true)
;(assert (flush/1759018410 var3512!2)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void flush()>() 

(declare-const var3512!3 var2680)
(define-const var3112 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
(define-const var1258 (Array Int Int) (toByteArray/1343874077 var3585!2)) ; Statement: $r5 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/76075152 var3112 var1258)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(byte[])>($r5) 

(declare-const var3112!1 String)
(declare-const var1258!1 (Array Int Int))
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3660-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), var2680-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), cast-from-var3660-to-var2887=([java.io.ByteArrayOutputStream], java.io.OutputStream), write/1448660738=([org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter, org.hibernate.loader.plan.spi.Return, int, java.io.PrintStream], void), flush/1759018410=([java.io.PrintStream], void), String-init=([], java.lang.String), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var2950=org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter, var1439=r2, var2771=org.hibernate.loader.plan.spi.Return, var663=r3, var3556=i0, var3660=java.io.ByteArrayOutputStream, var3585=$r0, var2680=java.io.PrintStream, var3512=$r1, var2887=java.io.OutputStream, var3112=$r4, var1258=$r5}
; {org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter=var2950, r2=var1439, org.hibernate.loader.plan.spi.Return=var2771, r3=var663, i0=var3556, java.io.ByteArrayOutputStream=var3660, $r0=var3585, java.io.PrintStream=var2680, $r1=var3512, java.io.OutputStream=var2887, $r4=var3112, $r5=var1258}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r2 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter;	r3 := @parameter0: org.hibernate.loader.plan.spi.Return;	i0 := @parameter1: int;	$r0 = new java.io.ByteArrayOutputStream;	specialinvoke $r0.<java.io.ByteArrayOutputStream: void <init>()>();	$r1 = new java.io.PrintStream;	specialinvoke $r1.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r0);	virtualinvoke r2.<org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter: void write(org.hibernate.loader.plan.spi.Return,int,java.io.PrintStream)>(r3, i0, $r1);	virtualinvoke $r1.<java.io.PrintStream: void flush()>();	$r4 = new java.lang.String;	$r5 = virtualinvoke $r0.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	specialinvoke $r4.<java.lang.String: void <init>(byte[])>($r5);	return $r4
;block_num 1