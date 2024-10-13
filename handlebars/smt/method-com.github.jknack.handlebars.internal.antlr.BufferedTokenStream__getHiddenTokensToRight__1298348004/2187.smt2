(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3005 0)
(declare-sort var1609 0)
(declare-sort var1454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyInit/-1796348687 (var3005) void)
(declare-fun var1609-init () var1609)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokens/-479996070 (var3005) var1454)
(declare-fun var1454_size/-959786421 (var1454) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1609 String) void)
(declare-const null-var3005 var3005)
(declare-const null-Int Int)
(declare-const var3476 var3005) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream 
(assert (not (= var3476 null-var3005)))
(declare-const var2481 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2481 null-Int)))
(declare-const var953 Int) ; Statement: i7 := @parameter1: int 
(assert (not (= var953 null-Int)))
(assert true)
;(assert (lazyInit/-1796348687 var3476)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: void lazyInit()>() 

(declare-const var3476!1 var3005)
 ; Statement: if i0 < 0 goto $r11 = new java.lang.IndexOutOfBoundsException 
(assert (< var2481 0)) ; Cond: i0 < 0 
(define-const var3391 var1609 var1609-init) ; Statement: $r11 = new java.lang.IndexOutOfBoundsException 
(define-const var2926 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2926)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2926!1 String)
(assert (= var2926!1 ""))
(assert true)
(define-const var2420 String (append/-1001720160 var2926!1 var2481)) ; Statement: $r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2926!2 String)
(assert (str.prefixof var2926!1 var2926!2))
(assert true)
(define-const var497 String (append/672562846 var2420 " not in 0..")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..") 
(declare-const var2420!1 String)
(assert (= var2420!1 (str.++ var2420 " not in 0..")))
(define-const var553 var1454 (tokens/-479996070 var3476!1)) ; Statement: $r4 = r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens> 
(define-const var2227 Int (var1454_size/-959786421 var553)) ; Statement: $i1 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1594 Int (- var2227 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var2558 String (append/-1001720160 var497 var1594)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var497!1 String)
(assert (str.prefixof var497 var497!1))
(assert true)
(define-const var2454 String (toString/-2075883882 var2558)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3391 var2454)) ; Statement: specialinvoke $r11.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var3391!1 var1609)
(declare-const var2454!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyInit/-1796348687=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], void), var1609-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokens/-479996070=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], java.util.List), var1454_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3005=com.github.jknack.handlebars.internal.antlr.BufferedTokenStream, var3476=r0, var2481=i0, var953=i7, var1609=java.lang.IndexOutOfBoundsException, var3391=$r11, var2926=$r10, var2420=$r3, var497=$r5, var1454=java.util.List, var553=$r4, var2227=$i1, var1594=$i2, var2558=$r6, var2454=$r7}
; {com.github.jknack.handlebars.internal.antlr.BufferedTokenStream=var3005, r0=var3476, i0=var2481, i7=var953, java.lang.IndexOutOfBoundsException=var1609, $r11=var3391, $r10=var2926, $r3=var2420, $r5=var497, java.util.List=var1454, $r4=var553, $i1=var2227, $i2=var1594, $r6=var2558, $r7=var2454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream;	i0 := @parameter0: int;	i7 := @parameter1: int;	virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: void lazyInit()>();	if i0 < 0 goto $r11 = new java.lang.IndexOutOfBoundsException;	$r11 = new java.lang.IndexOutOfBoundsException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..");	$r4 = r0.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens>;	$i1 = interfaceinvoke $r4.<java.util.List: int size()>();	$i2 = $i1 - 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r11
;block_num 2