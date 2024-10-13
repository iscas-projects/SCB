(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var417 0)
(declare-sort var1180 0)
(declare-sort var257 0)
(declare-sort var2362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1180) void)
(declare-fun cast-from-var417-to-var1180 (var417) var1180)
(declare-fun api/-10557480 (var417) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buf/-10557480 (var417) String)
(declare-fun var257-init () var257)
(declare-fun <init>/-325640736 (var257) void)
(declare-fun cast-from-var257-to-var2362 (var257) var2362)
(declare-fun text/-10557480 (var417) var2362)
(declare-const null-var417 var417)
(declare-const null-Int Int)
(declare-const var3555 var417) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Printer 
(assert (not (= var3555 null-var417)))
(declare-const var3394 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3394 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var417-to-var1180 var3555))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3555!1 var417)
(declare-const var3555!2 var417)
(assert (not (= var3555!2 null-var417)))
(assert (= (api/-10557480 var3555!2) var3394)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Printer: int api> = i0 
(define-const var897 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var897)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var897!1 String)
(declare-const var3555!3 var417)
(assert (not (= var3555!3 null-var417)))
(assert (= (buf/-10557480 var3555!3) var897!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Printer: java.lang.StringBuffer buf> = $r1 
(define-const var407 var257 var257-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var407)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var407!1 var257)
(declare-const var3555!4 var417)
(assert (not (= var3555!4 null-var417)))
(assert (= (text/-10557480 var3555!4) (cast-from-var257-to-var2362 var407!1))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Printer: java.util.List text> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var417-to-var1180=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.Object), api/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), var257-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var257-to-var2362=([java.util.ArrayList], java.util.List), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List)}
; {var417=jdk.internal.org.objectweb.asm.util.Printer, var3555=r0, var3394=i0, var1180=java.lang.Object, var897=$r1, var257=java.util.ArrayList, var407=$r2, var2362=java.util.List}
; {jdk.internal.org.objectweb.asm.util.Printer=var417, r0=var3555, i0=var3394, java.lang.Object=var1180, $r1=var897, java.util.ArrayList=var257, $r2=var407, java.util.List=var2362}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Printer;	i0 := @parameter0: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.Printer: int api> = i0;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.Printer: java.lang.StringBuffer buf> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.Printer: java.util.List text> = $r2;	return
;block_num 1