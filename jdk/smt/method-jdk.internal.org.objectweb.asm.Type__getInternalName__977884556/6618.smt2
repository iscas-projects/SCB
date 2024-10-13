(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun buf/-41019612 (var544) (Array Int Int))
(declare-fun off/-41019612 (var544) Int)
(declare-fun len/-41019612 (var544) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var544 var544)
(declare-const var619 var544) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var619 null-var544)))
(define-const var2935 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3470 (Array Int Int) (buf/-41019612 var619)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
(define-const var2322 Int (off/-41019612 var619)) ; Statement: $i1 = r1.<jdk.internal.org.objectweb.asm.Type: int off> 
(define-const var2070 Int (len/-41019612 var619)) ; Statement: $i0 = r1.<jdk.internal.org.objectweb.asm.Type: int len> 
(assert true)
;(assert (<init>/-253222812 var2935 var3470 var2322 var2070)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i1, $i0) 

(declare-const var2935!1 String)
(declare-const var3470!1 (Array Int Int))
(declare-const var2322!1 Int)
(declare-const var2070!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), buf/-41019612=([jdk.internal.org.objectweb.asm.Type], char[]), off/-41019612=([jdk.internal.org.objectweb.asm.Type], int), len/-41019612=([jdk.internal.org.objectweb.asm.Type], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var544=jdk.internal.org.objectweb.asm.Type, var619=r1, var2935=$r0, var3470=$r2, var2322=$i1, var2070=$i0}
; {jdk.internal.org.objectweb.asm.Type=var544, r1=var619, $r0=var2935, $r2=var3470, $i1=var2322, $i0=var2070}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.Type;	$r0 = new java.lang.String;	$r2 = r1.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	$i1 = r1.<jdk.internal.org.objectweb.asm.Type: int off>;	$i0 = r1.<jdk.internal.org.objectweb.asm.Type: int len>;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i1, $i0);	return $r0
;block_num 1