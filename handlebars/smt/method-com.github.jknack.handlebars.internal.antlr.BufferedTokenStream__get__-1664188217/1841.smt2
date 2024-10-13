(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1583 0)
(declare-sort var2396 0)
(declare-sort var989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2396-init () var2396)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun tokens/-479996070 (var1583) var989)
(declare-fun var989_size/-959786421 (var989) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2396 String) void)
(declare-const null-var1583 var1583)
(declare-const null-Int Int)
(declare-const var760 var1583) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream 
(assert (not (= var760 null-var1583)))
(declare-const var343 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var343 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException 
(assert (< var343 0)) ; Cond: i0 < 0 
(define-const var1735 var2396 var2396-init) ; Statement: $r0 = new java.lang.IndexOutOfBoundsException 
(define-const var485 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var485)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var485!1 String)
(assert (= var485!1 ""))
(assert true)
(define-const var2936 String (append/672562846 var485!1 "token index ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token index ") 
(declare-const var485!2 String)
(assert (= var485!2 (str.++ var485!1 "token index ")))
(assert true)
(define-const var3118 String (append/-1001720160 var2936 var343)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2936!1 String)
(assert (str.prefixof var2936 var2936!1))
(assert true)
(define-const var2209 String (append/672562846 var3118 " out of range 0..")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" out of range 0..") 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 " out of range 0..")))
(define-const var2507 var989 (tokens/-479996070 var760)) ; Statement: $r5 = r4.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens> 
(define-const var1071 Int (var989_size/-959786421 var2507)) ; Statement: $i1 = interfaceinvoke $r5.<java.util.List: int size()>() 
(define-const var2790 Int (- var1071 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var3445 String (append/-1001720160 var2209 var2790)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2209!1 String)
(assert (str.prefixof var2209 var2209!1))
(assert true)
(define-const var3828 String (toString/-2075883882 var3445)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var1735 var3828)) ; Statement: specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r8) 

(declare-const var1735!1 var2396)
(declare-const var3828!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2396-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), tokens/-479996070=([com.github.jknack.handlebars.internal.antlr.BufferedTokenStream], java.util.List), var989_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1583=com.github.jknack.handlebars.internal.antlr.BufferedTokenStream, var760=r4, var343=i0, var2396=java.lang.IndexOutOfBoundsException, var1735=$r0, var485=$r1, var2936=$r2, var3118=$r3, var2209=$r6, var989=java.util.List, var2507=$r5, var1071=$i1, var2790=$i2, var3445=$r7, var3828=$r8}
; {com.github.jknack.handlebars.internal.antlr.BufferedTokenStream=var1583, r4=var760, i0=var343, java.lang.IndexOutOfBoundsException=var2396, $r0=var1735, $r1=var485, $r2=var2936, $r3=var3118, $r6=var2209, java.util.List=var989, $r5=var2507, $i1=var1071, $i2=var2790, $r7=var3445, $r8=var3828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.antlr.BufferedTokenStream;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException;	$r0 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token index ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" out of range 0..");	$r5 = r4.<com.github.jknack.handlebars.internal.antlr.BufferedTokenStream: java.util.List tokens>;	$i1 = interfaceinvoke $r5.<java.util.List: int size()>();	$i2 = $i1 - 1;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 2