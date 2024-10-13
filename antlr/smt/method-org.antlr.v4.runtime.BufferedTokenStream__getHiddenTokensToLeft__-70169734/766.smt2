(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1756 0)
(declare-sort var1801 0)
(declare-sort var883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyInit/-573509810 (var1756) void)
(declare-fun var1801-init () var1801)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokens/384008959 (var1756) var883)
(declare-fun var883_size/-959786421 (var883) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1801 String) void)
(declare-const null-var1756 var1756)
(declare-const null-Int Int)
(declare-const var872 var1756) ; Statement: r0 := @this: org.antlr.v4.runtime.BufferedTokenStream 
(assert (not (= var872 null-var1756)))
(declare-const var1222 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1222 null-Int)))
(declare-const var533 Int) ; Statement: i9 := @parameter1: int 
(assert (not (= var533 null-Int)))
(assert true)
;(assert (lazyInit/-573509810 var872)) ; Statement: virtualinvoke r0.<org.antlr.v4.runtime.BufferedTokenStream: void lazyInit()>() 

(declare-const var872!1 var1756)
 ; Statement: if i0 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException 
(assert (< var1222 0)) ; Cond: i0 < 0 
(define-const var3443 var1801 var1801-init) ; Statement: $r1 = new java.lang.IndexOutOfBoundsException 
(define-const var719 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var719)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var719!1 String)
(assert (= var719!1 ""))
(assert true)
(define-const var3134 String (append/-1001720160 var719!1 var1222)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var719!2 String)
(assert (str.prefixof var719!1 var719!2))
(assert true)
(define-const var2113 String (append/672562846 var3134 " not in 0..")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..") 
(declare-const var3134!1 String)
(assert (= var3134!1 (str.++ var3134 " not in 0..")))
(define-const var1930 var883 (tokens/384008959 var872!1)) ; Statement: $r4 = r0.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens> 
(define-const var161 Int (var883_size/-959786421 var1930)) ; Statement: $i1 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var2190 Int (- var161 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var1598 String (append/-1001720160 var2113 var2190)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2113!1 String)
(assert (str.prefixof var2113 var2113!1))
(assert true)
(define-const var885 String (toString/-2075883882 var1598)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3443 var885)) ; Statement: specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var3443!1 var1801)
(declare-const var885!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyInit/-573509810=([org.antlr.v4.runtime.BufferedTokenStream], void), var1801-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokens/384008959=([org.antlr.v4.runtime.BufferedTokenStream], java.util.List), var883_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1756=org.antlr.v4.runtime.BufferedTokenStream, var872=r0, var1222=i0, var533=i9, var1801=java.lang.IndexOutOfBoundsException, var3443=$r1, var719=$r2, var3134=$r3, var2113=$r5, var883=java.util.List, var1930=$r4, var161=$i1, var2190=$i2, var1598=$r6, var885=$r7}
; {org.antlr.v4.runtime.BufferedTokenStream=var1756, r0=var872, i0=var1222, i9=var533, java.lang.IndexOutOfBoundsException=var1801, $r1=var3443, $r2=var719, $r3=var3134, $r5=var2113, java.util.List=var883, $r4=var1930, $i1=var161, $i2=var2190, $r6=var1598, $r7=var885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.BufferedTokenStream;	i0 := @parameter0: int;	i9 := @parameter1: int;	virtualinvoke r0.<org.antlr.v4.runtime.BufferedTokenStream: void lazyInit()>();	if i0 < 0 goto $r1 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.IndexOutOfBoundsException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..");	$r4 = r0.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens>;	$i1 = interfaceinvoke $r4.<java.util.List: int size()>();	$i2 = $i1 - 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2