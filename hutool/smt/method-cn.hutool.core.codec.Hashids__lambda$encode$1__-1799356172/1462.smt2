(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1417-init () var1417)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1417 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3221 (Array Int Int)) ; Statement: r0 := @parameter0: long[] 
(assert (not (= var3221 null-__Array__Int__Int__)))
(declare-const var2432 Int) ; Statement: l4 := @parameter1: long 
(assert (not (= var2432 null-Int)))
(declare-const var1379 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var1379 null-Int)))
(define-const var633 Int (cast-from-Int-to-Int var1379)) ; Statement: $i1 = (int) l0 
(define-const var415 Int (select var3221 var633)) ; Statement: l2 = r0[$i1] 
(define-const var1481 Int (ite (> var415 0) 1 (ite (< var415 0) (- 1) 0))) ; Statement: $b3 = l2 cmp 0L 
(define-const var2358 Int (cast-from-Int-to-Int var1481)) ; Statement: $i8 = (int) $b3 
 ; Statement: if $i8 >= 0 goto $l5 = l0 + 100L 
(assert (not (>= var2358 0))) ; Negate: Cond: $i8 >= 0  
(define-const var1817 var1417 var1417-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2689 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2689)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2689!1 String)
(assert (= var2689!1 ""))
(assert true)
(define-const var3191 String (append/672562846 var2689!1 "invalid number: ")) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid number: ") 
(declare-const var2689!2 String)
(assert (= var2689!2 (str.++ var2689!1 "invalid number: ")))
(assert true)
(define-const var1185 String (append/-901862667 var3191 var415)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l2) 
(declare-const var3191!1 String)
(assert (str.prefixof var3191 var3191!1))
(assert true)
(define-const var1349 String (toString/-2075883882 var1185)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1817 var1349)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1817!1 var1417)
(declare-const var1349!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([long], int), var1417-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3221=r0, var2432=l4, var1379=l0, var633=$i1, var415=l2, var1481=$b3, var2358=$i8, var1417=java.lang.IllegalArgumentException, var1817=$r7, var2689=$r6, var3191=$r3, var1185=$r4, var1349=$r5}
; {r0=var3221, l4=var2432, l0=var1379, $i1=var633, l2=var415, $b3=var1481, $i8=var2358, java.lang.IllegalArgumentException=var1417, $r7=var1817, $r6=var2689, $r3=var3191, $r4=var1185, $r5=var1349}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: long[];	l4 := @parameter1: long;	l0 := @parameter2: long;	$i1 = (int) l0;	l2 = r0[$i1];	$b3 = l2 cmp 0L;	$i8 = (int) $b3;	if $i8 >= 0 goto $l5 = l0 + 100L;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid number: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2