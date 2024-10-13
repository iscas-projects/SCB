(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var721 0)
(declare-sort var3171 0)
(declare-sort var2968 0)
(declare-sort var3886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/-946785625 (var3171) Int)
(declare-fun size/-1403084455 (var2968) Int)
(declare-fun cast-from-var721-to-var2968 (var721) var2968)
(declare-fun var3886_min/-1112089438 (Int Int) Int)
(declare-fun b/-946785625 (var3171) Int)
(declare-fun String-init () String)
(declare-fun charArray/-1811574714 (var721) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var721 var721)
(declare-const null-var3171 var3171)
(declare-const var1219 var721) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream 
(assert (not (= var1219 null-var721)))
(declare-const var584 var3171) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval 
(assert (not (= var584 null-var3171)))
(define-const var960 Int (a/-946785625 var584)) ; Statement: $i1 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var2464 Int (size/-1403084455 (cast-from-var721-to-var2968 var1219))) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream: int size> 
(define-const var3071 Int (var3886_min/-1112089438 var960 var2464)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var2252 Int (b/-946785625 var584)) ; Statement: $i4 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b> 
(define-const var1956 Int (a/-946785625 var584)) ; Statement: $i3 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var3927 Int (- var2252 var1956)) ; Statement: $i5 = $i4 - $i3 
(define-const var2070 Int (+ var3927 1)) ; Statement: $i8 = $i5 + 1 
(define-const var1825 Int (size/-1403084455 (cast-from-var721-to-var2968 var1219))) ; Statement: $i6 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream: int size> 
(define-const var263 Int (- var1825 var3071)) ; Statement: $i7 = $i6 - i2 
(define-const var2709 Int (var3886_min/-1112089438 var2070 var263)) ; Statement: i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7) 
(define-const var3988 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var101 (Array Int Int) (charArray/-1811574714 var1219)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream: char[] charArray> 
(assert true)
;(assert (<init>/-253222812 var3988 var101 var3071 var2709)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i2, i9) 

(declare-const var3988!1 String)
(declare-const var101!1 (Array Int Int))
(declare-const var3071!1 Int)
(declare-const var2709!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), size/-1403084455=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream], int), cast-from-var721-to-var2968=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream], com.github.jknack.handlebars.internal.antlr.CodePointCharStream), var3886_min/-1112089438=([int, int], int), b/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), String-init=([], java.lang.String), charArray/-1811574714=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var721=com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream, var1219=r1, var3171=com.github.jknack.handlebars.internal.antlr.misc.Interval, var584=r0, var960=$i1, var2968=com.github.jknack.handlebars.internal.antlr.CodePointCharStream, var2464=$i0, var3886=java.lang.Math, var3071=i2, var2252=$i4, var1956=$i3, var3927=$i5, var2070=$i8, var1825=$i6, var263=$i7, var2709=i9, var3988=$r2, var101=$r3}
; {com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream=var721, r1=var1219, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3171, r0=var584, $i1=var960, com.github.jknack.handlebars.internal.antlr.CodePointCharStream=var2968, $i0=var2464, java.lang.Math=var3886, i2=var3071, $i4=var2252, $i3=var1956, $i5=var3927, $i8=var2070, $i6=var1825, $i7=var263, i9=var2709, $r2=var3988, $r3=var101}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval;	$i1 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream: int size>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i4 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b>;	$i3 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$i5 = $i4 - $i3;	$i8 = $i5 + 1;	$i6 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream: int size>;	$i7 = $i6 - i2;	i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7);	$r2 = new java.lang.String;	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint16BitCharStream: char[] charArray>;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>($r3, i2, i9);	return $r2
;block_num 1