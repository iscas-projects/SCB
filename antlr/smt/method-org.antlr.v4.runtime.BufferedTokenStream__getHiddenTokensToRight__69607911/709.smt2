(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1087 0)
(declare-sort var1524 0)
(declare-sort var3306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyInit/-573509810 (var1087) void)
(declare-fun var1524-init () var1524)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokens/384008959 (var1087) var3306)
(declare-fun var3306_size/-959786421 (var3306) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1524 String) void)
(declare-const null-var1087 var1087)
(declare-const null-Int Int)
(declare-const var3448 var1087) ; Statement: r0 := @this: org.antlr.v4.runtime.BufferedTokenStream 
(assert (not (= var3448 null-var1087)))
(declare-const var2746 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2746 null-Int)))
(declare-const var2580 Int) ; Statement: i7 := @parameter1: int 
(assert (not (= var2580 null-Int)))
(assert true)
;(assert (lazyInit/-573509810 var3448)) ; Statement: virtualinvoke r0.<org.antlr.v4.runtime.BufferedTokenStream: void lazyInit()>() 

(declare-const var3448!1 var1087)
 ; Statement: if i0 < 0 goto $r11 = new java.lang.IndexOutOfBoundsException 
(assert (< var2746 0)) ; Cond: i0 < 0 
(define-const var3256 var1524 var1524-init) ; Statement: $r11 = new java.lang.IndexOutOfBoundsException 
(define-const var3700 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3700)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3700!1 String)
(assert (= var3700!1 ""))
(assert true)
(define-const var2961 String (append/-1001720160 var3700!1 var2746)) ; Statement: $r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3700!2 String)
(assert (str.prefixof var3700!1 var3700!2))
(assert true)
(define-const var1370 String (append/672562846 var2961 " not in 0..")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..") 
(declare-const var2961!1 String)
(assert (= var2961!1 (str.++ var2961 " not in 0..")))
(define-const var769 var3306 (tokens/384008959 var3448!1)) ; Statement: $r4 = r0.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens> 
(define-const var1054 Int (var3306_size/-959786421 var769)) ; Statement: $i1 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var1058 Int (- var1054 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var11 String (append/-1001720160 var1370 var1058)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1370!1 String)
(assert (str.prefixof var1370 var1370!1))
(assert true)
(define-const var3250 String (toString/-2075883882 var11)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3256 var3250)) ; Statement: specialinvoke $r11.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var3256!1 var1524)
(declare-const var3250!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyInit/-573509810=([org.antlr.v4.runtime.BufferedTokenStream], void), var1524-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokens/384008959=([org.antlr.v4.runtime.BufferedTokenStream], java.util.List), var3306_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1087=org.antlr.v4.runtime.BufferedTokenStream, var3448=r0, var2746=i0, var2580=i7, var1524=java.lang.IndexOutOfBoundsException, var3256=$r11, var3700=$r10, var2961=$r3, var1370=$r5, var3306=java.util.List, var769=$r4, var1054=$i1, var1058=$i2, var11=$r6, var3250=$r7}
; {org.antlr.v4.runtime.BufferedTokenStream=var1087, r0=var3448, i0=var2746, i7=var2580, java.lang.IndexOutOfBoundsException=var1524, $r11=var3256, $r10=var3700, $r3=var2961, $r5=var1370, java.util.List=var3306, $r4=var769, $i1=var1054, $i2=var1058, $r6=var11, $r7=var3250}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.BufferedTokenStream;	i0 := @parameter0: int;	i7 := @parameter1: int;	virtualinvoke r0.<org.antlr.v4.runtime.BufferedTokenStream: void lazyInit()>();	if i0 < 0 goto $r11 = new java.lang.IndexOutOfBoundsException;	$r11 = new java.lang.IndexOutOfBoundsException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..");	$r4 = r0.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens>;	$i1 = interfaceinvoke $r4.<java.util.List: int size()>();	$i2 = $i1 - 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r11
;block_num 2