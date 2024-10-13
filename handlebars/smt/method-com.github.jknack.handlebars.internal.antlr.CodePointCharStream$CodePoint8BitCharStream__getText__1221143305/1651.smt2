(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2448 0)
(declare-sort var2547 0)
(declare-sort var2410 0)
(declare-sort var3965 0)
(declare-sort var971 0)
(declare-sort var99 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/-946785625 (var2547) Int)
(declare-fun size/-1403084455 (var2410) Int)
(declare-fun cast-from-var2448-to-var2410 (var2448) var2410)
(declare-fun var3965_min/-1112089438 (Int Int) Int)
(declare-fun b/-946785625 (var2547) Int)
(declare-fun String-init () String)
(declare-fun byteArray/797314563 (var2448) (Array Int Int))
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var971) void)
(declare-const null-var2448 var2448)
(declare-const null-var2547 var2547)
(declare-const var99-ISO_8859_1 var971)
(declare-const var2133 var2448) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream 
(assert (not (= var2133 null-var2448)))
(declare-const var2435 var2547) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval 
(assert (not (= var2435 null-var2547)))
(define-const var1542 Int (a/-946785625 var2435)) ; Statement: $i1 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var1653 Int (size/-1403084455 (cast-from-var2448-to-var2410 var2133))) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream: int size> 
(define-const var474 Int (var3965_min/-1112089438 var1542 var1653)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var3909 Int (b/-946785625 var2435)) ; Statement: $i4 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b> 
(define-const var2011 Int (a/-946785625 var2435)) ; Statement: $i3 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var655 Int (- var3909 var2011)) ; Statement: $i5 = $i4 - $i3 
(define-const var3583 Int (+ var655 1)) ; Statement: $i8 = $i5 + 1 
(define-const var1194 Int (size/-1403084455 (cast-from-var2448-to-var2410 var2133))) ; Statement: $i6 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream: int size> 
(define-const var3466 Int (- var1194 var474)) ; Statement: $i7 = $i6 - i2 
(define-const var1967 Int (var3965_min/-1112089438 var3583 var3466)) ; Statement: i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7) 
(define-const var1631 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var455 (Array Int Int) (byteArray/797314563 var2133)) ; Statement: $r4 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream: byte[] byteArray> 
(define-const var2013 var971 var99-ISO_8859_1) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-1019213948 var1631 var455 var474 var1967 var2013)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r4, i2, i9, $r3) 

(declare-const var1631!1 String)
(declare-const var455!1 (Array Int Int))
(declare-const var474!1 Int)
(declare-const var1967!1 Int)
(declare-const var2013!1 var971)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), size/-1403084455=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream], int), cast-from-var2448-to-var2410=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream], com.github.jknack.handlebars.internal.antlr.CodePointCharStream), var3965_min/-1112089438=([int, int], int), b/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), String-init=([], java.lang.String), byteArray/797314563=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream], byte[]), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var2448=com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream, var2133=r1, var2547=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2435=r0, var1542=$i1, var2410=com.github.jknack.handlebars.internal.antlr.CodePointCharStream, var1653=$i0, var3965=java.lang.Math, var474=i2, var3909=$i4, var2011=$i3, var655=$i5, var3583=$i8, var1194=$i6, var3466=$i7, var1967=i9, var1631=$r2, var455=$r4, var971=java.nio.charset.Charset, var99=java.nio.charset.StandardCharsets, var2013=$r3}
; {com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream=var2448, r1=var2133, com.github.jknack.handlebars.internal.antlr.misc.Interval=var2547, r0=var2435, $i1=var1542, com.github.jknack.handlebars.internal.antlr.CodePointCharStream=var2410, $i0=var1653, java.lang.Math=var3965, i2=var474, $i4=var3909, $i3=var2011, $i5=var655, $i8=var3583, $i6=var1194, $i7=var3466, i9=var1967, $r2=var1631, $r4=var455, java.nio.charset.Charset=var971, java.nio.charset.StandardCharsets=var99, $r3=var2013}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval;	$i1 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream: int size>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i4 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b>;	$i3 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$i5 = $i4 - $i3;	$i8 = $i5 + 1;	$i6 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream: int size>;	$i7 = $i6 - i2;	i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7);	$r2 = new java.lang.String;	$r4 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint8BitCharStream: byte[] byteArray>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r4, i2, i9, $r3);	return $r2
;block_num 1