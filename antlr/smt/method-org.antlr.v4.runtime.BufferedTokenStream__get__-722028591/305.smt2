(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var293 0)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var293-init () var293)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun tokens/384008959 (var3341) var1356)
(declare-fun var1356_size/-959786421 (var1356) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var293 String) void)
(declare-const null-var3341 var3341)
(declare-const null-Int Int)
(declare-const var2139 var3341) ; Statement: r4 := @this: org.antlr.v4.runtime.BufferedTokenStream 
(assert (not (= var2139 null-var3341)))
(declare-const var2486 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2486 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException 
(assert (< var2486 0)) ; Cond: i0 < 0 
(define-const var2918 var293 var293-init) ; Statement: $r0 = new java.lang.IndexOutOfBoundsException 
(define-const var2009 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2009)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2009!1 String)
(assert (= var2009!1 ""))
(assert true)
(define-const var88 String (append/672562846 var2009!1 "token index ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token index ") 
(declare-const var2009!2 String)
(assert (= var2009!2 (str.++ var2009!1 "token index ")))
(assert true)
(define-const var1401 String (append/-1001720160 var88 var2486)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var88!1 String)
(assert (str.prefixof var88 var88!1))
(assert true)
(define-const var2012 String (append/672562846 var1401 " out of range 0..")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" out of range 0..") 
(declare-const var1401!1 String)
(assert (= var1401!1 (str.++ var1401 " out of range 0..")))
(define-const var1711 var1356 (tokens/384008959 var2139)) ; Statement: $r5 = r4.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens> 
(define-const var3137 Int (var1356_size/-959786421 var1711)) ; Statement: $i1 = interfaceinvoke $r5.<java.util.List: int size()>() 
(define-const var357 Int (- var3137 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var3063 String (append/-1001720160 var2012 var357)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2012!1 String)
(assert (str.prefixof var2012 var2012!1))
(assert true)
(define-const var2456 String (toString/-2075883882 var3063)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2918 var2456)) ; Statement: specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r8) 

(declare-const var2918!1 var293)
(declare-const var2456!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var293-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), tokens/384008959=([org.antlr.v4.runtime.BufferedTokenStream], java.util.List), var1356_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3341=org.antlr.v4.runtime.BufferedTokenStream, var2139=r4, var2486=i0, var293=java.lang.IndexOutOfBoundsException, var2918=$r0, var2009=$r1, var88=$r2, var1401=$r3, var2012=$r6, var1356=java.util.List, var1711=$r5, var3137=$i1, var357=$i2, var3063=$r7, var2456=$r8}
; {org.antlr.v4.runtime.BufferedTokenStream=var3341, r4=var2139, i0=var2486, java.lang.IndexOutOfBoundsException=var293, $r0=var2918, $r1=var2009, $r2=var88, $r3=var1401, $r6=var2012, java.util.List=var1356, $r5=var1711, $i1=var3137, $i2=var357, $r7=var3063, $r8=var2456}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.antlr.v4.runtime.BufferedTokenStream;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IndexOutOfBoundsException;	$r0 = new java.lang.IndexOutOfBoundsException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("token index ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" out of range 0..");	$r5 = r4.<org.antlr.v4.runtime.BufferedTokenStream: java.util.List tokens>;	$i1 = interfaceinvoke $r5.<java.util.List: int size()>();	$i2 = $i1 - 1;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 2