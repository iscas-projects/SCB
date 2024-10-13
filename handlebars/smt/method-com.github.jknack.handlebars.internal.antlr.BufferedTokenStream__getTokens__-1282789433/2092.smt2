(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var1621 0)
(declare-sort var2057 0)
(declare-sort var3662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyInit/-1796348687 (var574) void)
(declare-fun var2057-init () var2057)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun tokens/-479996070 (var574) var3662)
(declare-fun var3662_size/-959786421 (var3662) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2057 String) void)
(declare-const null-var574 var574)
(declare-const null-Int Int)
(declare-const null-var1621 var1621)
(declare-const var1781 var574) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream 
(assert (not (= var1781 null-var574)))
(declare-const var495 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var495 null-Int)))
(declare-const var165 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var165 null-Int)))
(declare-const var2875 var1621) ; Statement: r7 := @parameter2: java.util.Set 
(assert (not (= var2875 null-var1621)))
(assert true)
;(assert (lazyInit/-1796348687 var1781)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: void lazyInit()>() 

(declare-const var1781!1 var574)
 ; Statement: if i0 < 0 goto $r9 = new java.lang.IndexOutOfBoundsException 
(assert (< var495 0)) ; Cond: i0 < 0 
(define-const var2013 var2057 var2057-init) ; Statement: $r9 = new java.lang.IndexOutOfBoundsException 
(define-const var2141 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2141)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2141!1 String)
(assert (= var2141!1 ""))
(assert true)
(define-const var133 String (append/672562846 var2141!1 "start ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start ") 
(declare-const var2141!2 String)
(assert (= var2141!2 (str.++ var2141!1 "start ")))
(assert true)
(define-const var629 String (append/-1001720160 var133 var495)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var133!1 String)
(assert (str.prefixof var133 var133!1))
(assert true)
(define-const var3310 String (append/672562846 var629 " or stop ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or stop ") 
(declare-const var629!1 String)
(assert (= var629!1 (str.++ var629 " or stop ")))
(assert true)
(define-const var2685 String (append/-1001720160 var3310 var165)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3310!1 String)
(assert (str.prefixof var3310 var3310!1))
(assert true)
(define-const var1475 String (append/672562846 var2685 " not in 0..")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..") 
(declare-const var2685!1 String)
(assert (= var2685!1 (str.++ var2685 " not in 0..")))
(define-const var2325 var3662 (tokens/-479996070 var1781!1)) ; Statement: $r16 = r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens> 
(define-const var2692 Int (var3662_size/-959786421 var2325)) ; Statement: $i5 = interfaceinvoke $r16.<java.util.List: int size()>() 
(define-const var3283 Int (- var2692 1)) ; Statement: $i6 = $i5 - 1 
(assert true)
(define-const var218 String (append/-1001720160 var1475 var3283)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1475!1 String)
(assert (str.prefixof var1475 var1475!1))
(assert true)
(define-const var274 String (toString/-2075883882 var218)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2013 var274)) ; Statement: specialinvoke $r9.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r18) 

(declare-const var2013!1 var2057)
(declare-const var274!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyInit/-1796348687=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], void), var2057-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), tokens/-479996070=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], java.util.List), var3662_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var574=com.github.jknack.handlebars.internal.antlr.BufferedTokenStream, var1781=r0, var495=i0, var165=i1, var1621=java.util.Set, var2875=r7, var2057=java.lang.IndexOutOfBoundsException, var2013=$r9, var2141=$r10, var133=$r11, var629=$r12, var3310=$r13, var2685=$r14, var1475=$r15, var3662=java.util.List, var2325=$r16, var2692=$i5, var3283=$i6, var218=$r17, var274=$r18}
; {com.github.jknack.handlebars.internal.antlr.BufferedTokenStream=var574, r0=var1781, i0=var495, i1=var165, java.util.Set=var1621, r7=var2875, java.lang.IndexOutOfBoundsException=var2057, $r9=var2013, $r10=var2141, $r11=var133, $r12=var629, $r13=var3310, $r14=var2685, $r15=var1475, java.util.List=var3662, $r16=var2325, $i5=var2692, $i6=var3283, $r17=var218, $r18=var274}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream;	i0 := @parameter0: int;	i1 := @parameter1: int;	r7 := @parameter2: java.util.Set;	virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: void lazyInit()>();	if i0 < 0 goto $r9 = new java.lang.IndexOutOfBoundsException;	$r9 = new java.lang.IndexOutOfBoundsException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or stop ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..");	$r16 = r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens>;	$i5 = interfaceinvoke $r16.<java.util.List: int size()>();	$i6 = $i5 - 1;	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r18);	throw $r9
;block_num 2