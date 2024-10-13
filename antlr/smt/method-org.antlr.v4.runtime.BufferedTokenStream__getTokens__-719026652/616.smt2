(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1694 0)
(declare-sort var1058 0)
(declare-sort var1319 0)
(declare-sort var2571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lazyInit/-573509810 (var1694) void)
(declare-fun var1319-init () var1319)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun tokens/384008959 (var1694) var2571)
(declare-fun var2571_size/-959786421 (var2571) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1319 String) void)
(declare-const null-var1694 var1694)
(declare-const null-Int Int)
(declare-const null-var1058 var1058)
(declare-const var2773 var1694) ; Statement: r0 := @this: org.antlr.v4.runtime.BufferedTokenStream 
(assert (not (= var2773 null-var1694)))
(declare-const var1787 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1787 null-Int)))
(declare-const var194 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var194 null-Int)))
(declare-const var1556 var1058) ; Statement: r7 := @parameter2: java.util.Set 
(assert (not (= var1556 null-var1058)))
(assert true)
;(assert (lazyInit/-573509810 var2773)) ; Statement: virtualinvoke r0.<org.antlr.v4.runtime.BufferedTokenStream: void lazyInit()>() 

(declare-const var2773!1 var1694)
 ; Statement: if i0 < 0 goto $r9 = new java.lang.IndexOutOfBoundsException 
(assert (< var1787 0)) ; Cond: i0 < 0 
(define-const var2733 var1319 var1319-init) ; Statement: $r9 = new java.lang.IndexOutOfBoundsException 
(define-const var2949 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2949)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2949!1 String)
(assert (= var2949!1 ""))
(assert true)
(define-const var1979 String (append/672562846 var2949!1 "start ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start ") 
(declare-const var2949!2 String)
(assert (= var2949!2 (str.++ var2949!1 "start ")))
(assert true)
(define-const var722 String (append/-1001720160 var1979 var1787)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1979!1 String)
(assert (str.prefixof var1979 var1979!1))
(assert true)
(define-const var784 String (append/672562846 var722 " or stop ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or stop ") 
(declare-const var722!1 String)
(assert (= var722!1 (str.++ var722 " or stop ")))
(assert true)
(define-const var3191 String (append/-1001720160 var784 var194)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var784!1 String)
(assert (str.prefixof var784 var784!1))
(assert true)
(define-const var1795 String (append/672562846 var3191 " not in 0..")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..") 
(declare-const var3191!1 String)
(assert (= var3191!1 (str.++ var3191 " not in 0..")))
(define-const var2865 var2571 (tokens/384008959 var2773!1)) ; Statement: $r16 = r0.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens> 
(define-const var1514 Int (var2571_size/-959786421 var2865)) ; Statement: $i5 = interfaceinvoke $r16.<java.util.List: int size()>() 
(define-const var3778 Int (- var1514 1)) ; Statement: $i6 = $i5 - 1 
(assert true)
(define-const var513 String (append/-1001720160 var1795 var3778)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1795!1 String)
(assert (str.prefixof var1795 var1795!1))
(assert true)
(define-const var2408 String (toString/-2075883882 var513)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2733 var2408)) ; Statement: specialinvoke $r9.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r18) 

(declare-const var2733!1 var1319)
(declare-const var2408!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {lazyInit/-573509810=([org.antlr.v4.runtime.BufferedTokenStream], void), var1319-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), tokens/384008959=([org.antlr.v4.runtime.BufferedTokenStream], java.util.List), var2571_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1694=org.antlr.v4.runtime.BufferedTokenStream, var2773=r0, var1787=i0, var194=i1, var1058=java.util.Set, var1556=r7, var1319=java.lang.IndexOutOfBoundsException, var2733=$r9, var2949=$r10, var1979=$r11, var722=$r12, var784=$r13, var3191=$r14, var1795=$r15, var2571=java.util.List, var2865=$r16, var1514=$i5, var3778=$i6, var513=$r17, var2408=$r18}
; {org.antlr.v4.runtime.BufferedTokenStream=var1694, r0=var2773, i0=var1787, i1=var194, java.util.Set=var1058, r7=var1556, java.lang.IndexOutOfBoundsException=var1319, $r9=var2733, $r10=var2949, $r11=var1979, $r12=var722, $r13=var784, $r14=var3191, $r15=var1795, java.util.List=var2571, $r16=var2865, $i5=var1514, $i6=var3778, $r17=var513, $r18=var2408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.BufferedTokenStream;	i0 := @parameter0: int;	i1 := @parameter1: int;	r7 := @parameter2: java.util.Set;	virtualinvoke r0.<org.antlr.v4.runtime.BufferedTokenStream: void lazyInit()>();	if i0 < 0 goto $r9 = new java.lang.IndexOutOfBoundsException;	$r9 = new java.lang.IndexOutOfBoundsException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" or stop ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in 0..");	$r16 = r0.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens>;	$i5 = interfaceinvoke $r16.<java.util.List: int size()>();	$i6 = $i5 - 1;	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r18);	throw $r9
;block_num 2