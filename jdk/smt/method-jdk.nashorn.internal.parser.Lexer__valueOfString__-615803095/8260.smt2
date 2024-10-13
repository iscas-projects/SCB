(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var959 0)
(declare-sort var788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var788) Int)
(declare-fun cast-from-var959-to-var788 (var959) var788)
(declare-fun reset/84691649 (var788 Int) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var959 var959)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1723 var959) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Lexer 
(assert (not (= var1723 null-var959)))
(declare-const var3833 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3833 null-Int)))
(declare-const var2291 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2291 null-Int)))
(declare-const var2357 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2357 null-Bool)))
(define-const var3494 Int (position/-1835107176 (cast-from-var959-to-var788 var1723))) ; Statement: i0 = r0.<jdk.nashorn.internal.parser.Lexer: int position> 
(define-const var886 Int (+ var3833 var2291)) ; Statement: i3 = i1 + i2 
(assert true)
;(assert (reset/84691649 (cast-from-var959-to-var788 var1723) var3833)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i1) 

(declare-const var1723!1 var959)
(declare-const var3833!1 Int)
(define-const var2546 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2546 var2291)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>(i2) 

(declare-const var2546!1 String)
(declare-const var2291!1 Int)
(assert true) ; Non Conditional
(define-const var1303 Int (position/-1835107176 (cast-from-var959-to-var788 var1723!1))) ; Statement: $i16 = r0.<jdk.nashorn.internal.parser.Lexer: int position> 
 ; Statement: if $i16 >= i3 goto virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0) 
(assert (>= var1303 var886)) ; Cond: $i16 >= i3 
(assert true)
;(assert (reset/84691649 (cast-from-var959-to-var788 var1723!1) var3494)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0) 

(declare-const var1723!2 var959)
(declare-const var3494!1 Int)
(assert true)
(define-const var3558 String (toString/-2075883882 var2546!1)) ; Statement: $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var959-to-var788=([jdk.nashorn.internal.parser.Lexer], jdk.nashorn.internal.parser.Scanner), reset/84691649=([jdk.nashorn.internal.parser.Scanner, int], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var959=jdk.nashorn.internal.parser.Lexer, var1723=r0, var3833=i1, var2291=i2, var2357=z0, var788=jdk.nashorn.internal.parser.Scanner, var3494=i0, var886=i3, var2546=$r8, var1303=$i16, var3558=$r2}
; {jdk.nashorn.internal.parser.Lexer=var959, r0=var1723, i1=var3833, i2=var2291, z0=var2357, jdk.nashorn.internal.parser.Scanner=var788, i0=var3494, i3=var886, $r8=var2546, $i16=var1303, $r2=var3558}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Lexer;	i1 := @parameter0: int;	i2 := @parameter1: int;	z0 := @parameter2: boolean;	i0 = r0.<jdk.nashorn.internal.parser.Lexer: int position>;	i3 = i1 + i2;	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i1);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>(i2);	$i16 = r0.<jdk.nashorn.internal.parser.Lexer: int position>;	if $i16 >= i3 goto virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0);	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0);	$r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3