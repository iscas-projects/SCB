(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var787 0)
(declare-sort var3352 0)
(declare-sort var3577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyInit/-1796348687 (var787) void)
(declare-fun var3352-init () var3352)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokens/-479996070 (var787) var3577)
(declare-fun var3577_size/-959786421 (var3577) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3352 String) void)
(declare-const null-var787 var787)
(declare-const null-Int Int)
(declare-const var3871 var787) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream 
(assert (not (= var3871 null-var787)))
(declare-const var1552 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1552 null-Int)))
(declare-const var2359 Int) ; Statement: i9 := @parameter1: int 
(assert (not (= var2359 null-Int)))
(assert true)
;(assert (lazyInit/-1796348687 var3871)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: void lazyInit()>() 

(declare-const var3871!1 var787)
 ; Statement: if i0 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (< var1552 0)) ; Cond: i0 < 0 
(define-const var1773 var3352 var3352-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var1724 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1724)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1724!1 String)
(assert (= var1724!1 ""))
(assert true)
(define-const var2447 String (append/-1001720160 var1724!1 var1552)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1724!2 String)
(assert (str.prefixof var1724!1 var1724!2))
(assert true)
(define-const var3582 String (append/672562846 var2447 " not in 0..")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..") 
(declare-const var2447!1 String)
(assert (= var2447!1 (str.++ var2447 " not in 0..")))
(define-const var3634 var3577 (tokens/-479996070 var3871!1)) ; Statement: $r4 = r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens> 
(define-const var2612 Int (var3577_size/-959786421 var3634)) ; Statement: $i1 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1884 Int (- var2612 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var304 String (append/-1001720160 var3582 var1884)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3582!1 String)
(assert (str.prefixof var3582 var3582!1))
(assert true)
(define-const var3541 String (toString/-2075883882 var304)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var1773 var3541)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var1773!1 var3352)
(declare-const var3541!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyInit/-1796348687=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], void), var3352-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokens/-479996070=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], java.util.List), var3577_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var787=com.github.jknack.handlebars.internal.antlr.BufferedTokenStream, var3871=r0, var1552=i0, var2359=i9, var3352=java.lang.IndexOutOfBoundsException, var1773=$r1, var1724=$r2, var2447=$r3, var3582=$r5, var3577=java.util.List, var3634=$r4, var2612=$i1, var1884=$i2, var304=$r6, var3541=$r7}
; {com.github.jknack.handlebars.internal.antlr.BufferedTokenStream=var787, r0=var3871, i0=var1552, i9=var2359, java.lang.IndexOutOfBoundsException=var3352, $r1=var1773, $r2=var1724, $r3=var2447, $r5=var3582, java.util.List=var3577, $r4=var3634, $i1=var2612, $i2=var1884, $r6=var304, $r7=var3541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream;	i0 := @parameter0: int;	i9 := @parameter1: int;	virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: void lazyInit()>();	if i0 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..");	$r4 = r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens>;	$i1 = interfaceinvoke $r4.<java.util.List: int size()>();	$i2 = $i1 - 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2