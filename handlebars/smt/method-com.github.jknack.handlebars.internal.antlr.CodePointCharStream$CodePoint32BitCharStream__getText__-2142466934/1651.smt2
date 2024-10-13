(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var145 0)
(declare-sort var2408 0)
(declare-sort var3171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/-946785625 (var145) Int)
(declare-fun size/-1403084455 (var2408) Int)
(declare-fun cast-from-var1884-to-var2408 (var1884) var2408)
(declare-fun var3171_min/-1112089438 (Int Int) Int)
(declare-fun b/-946785625 (var145) Int)
(declare-fun String-init () String)
(declare-fun intArray/-1069203892 (var1884) (Array Int Int))
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var1884 var1884)
(declare-const null-var145 var145)
(declare-const var2343 var1884) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream 
(assert (not (= var2343 null-var1884)))
(declare-const var2020 var145) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval 
(assert (not (= var2020 null-var145)))
(define-const var1404 Int (a/-946785625 var2020)) ; Statement: $i1 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var2971 Int (size/-1403084455 (cast-from-var1884-to-var2408 var2343))) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream: int size> 
(define-const var3358 Int (var3171_min/-1112089438 var1404 var2971)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var1388 Int (b/-946785625 var2020)) ; Statement: $i4 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b> 
(define-const var3920 Int (a/-946785625 var2020)) ; Statement: $i3 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a> 
(define-const var809 Int (- var1388 var3920)) ; Statement: $i5 = $i4 - $i3 
(define-const var2546 Int (+ var809 1)) ; Statement: $i8 = $i5 + 1 
(define-const var1068 Int (size/-1403084455 (cast-from-var1884-to-var2408 var2343))) ; Statement: $i6 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream: int size> 
(define-const var1309 Int (- var1068 var3358)) ; Statement: $i7 = $i6 - i2 
(define-const var3424 Int (var3171_min/-1112089438 var2546 var1309)) ; Statement: i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7) 
(define-const var1950 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var167 (Array Int Int) (intArray/-1069203892 var2343)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream: int[] intArray> 
(assert true)
;(assert (<init>/1703972987 var1950 var167 var3358 var3424)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>($r3, i2, i9) 

(declare-const var1950!1 String)
(declare-const var167!1 (Array Int Int))
(declare-const var3358!1 Int)
(declare-const var3424!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), size/-1403084455=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream], int), cast-from-var1884-to-var2408=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream], com.github.jknack.handlebars.internal.antlr.CodePointCharStream), var3171_min/-1112089438=([int, int], int), b/-946785625=([com.github.jknack.handlebars.internal.antlr.misc.Interval], int), String-init=([], java.lang.String), intArray/-1069203892=([com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream], int[]), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var1884=com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream, var2343=r1, var145=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2020=r0, var1404=$i1, var2408=com.github.jknack.handlebars.internal.antlr.CodePointCharStream, var2971=$i0, var3171=java.lang.Math, var3358=i2, var1388=$i4, var3920=$i3, var809=$i5, var2546=$i8, var1068=$i6, var1309=$i7, var3424=i9, var1950=$r2, var167=$r3}
; {com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream=var1884, r1=var2343, com.github.jknack.handlebars.internal.antlr.misc.Interval=var145, r0=var2020, $i1=var1404, com.github.jknack.handlebars.internal.antlr.CodePointCharStream=var2408, $i0=var2971, java.lang.Math=var3171, i2=var3358, $i4=var1388, $i3=var3920, $i5=var809, $i8=var2546, $i6=var1068, $i7=var1309, i9=var3424, $r2=var1950, $r3=var167}
;seq <java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.misc.Interval;	$i1 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream: int size>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i4 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int b>;	$i3 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Interval: int a>;	$i5 = $i4 - $i3;	$i8 = $i5 + 1;	$i6 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream: int size>;	$i7 = $i6 - i2;	i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7);	$r2 = new java.lang.String;	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.CodePointCharStream$CodePoint32BitCharStream: int[] intArray>;	specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>($r3, i2, i9);	return $r2
;block_num 1