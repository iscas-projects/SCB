(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var764-init () var764)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var764 String) void)
(declare-const null-String String)
(declare-const var3875 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3875 null-String)))
(define-const var1546 Int (String_length/-667254855 var3875)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var294 Int var1546) ; Statement: i8 = i0 
(define-const var2759 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i0 goto (branch) 
(assert (>= var2759 var1546)) ; Cond: i9 >= i0 
 ; Statement: if i9 >= i0 goto (branch) 
(assert (>= var2759 var1546)) ; Cond: i9 >= i0 
 ; Statement: if i8 >= i0 goto return i8 
(assert (not (>= var294 var1546))) ; Negate: Cond: i8 >= i0  
(define-const var43 var764 var764-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2869 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2869)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2869!1 String)
(assert (= var2869!1 ""))
(assert true)
(define-const var1527 String (append/672562846 var2869!1 "UTF-8 length does not fit in int: ")) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8 length does not fit in int: ") 
(declare-const var2869!2 String)
(assert (= var2869!2 (str.++ var2869!1 "UTF-8 length does not fit in int: ")))
(define-const var1553 Int (cast-from-Int-to-Int var294)) ; Statement: $l1 = (long) i8 
(define-const var2213 Int (+ var1553 4294967296)) ; Statement: $l2 = $l1 + 4294967296L 
(assert true)
(define-const var401 String (append/-901862667 var1527 var2213)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var1527!1 String)
(assert (str.prefixof var1527 var1527!1))
(assert true)
(define-const var3371 String (toString/-2075883882 var401)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var43 var3371)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var43!1 var764)
(declare-const var3371!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var764-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3875=r0, var1546=i0, var294=i8, var2759=i9, var764=java.lang.IllegalArgumentException, var43=$r7, var2869=$r6, var1527=$r3, var1553=$l1, var2213=$l2, var401=$r4, var3371=$r5}
; {r0=var3875, i0=var1546, i8=var294, i9=var2759, java.lang.IllegalArgumentException=var764, $r7=var43, $r6=var2869, $r3=var1527, $l1=var1553, $l2=var2213, $r4=var401, $r5=var3371}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i8 = i0;	i9 = 0;	if i9 >= i0 goto (branch);	if i9 >= i0 goto (branch);	if i8 >= i0 goto return i8;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8 length does not fit in int: ");	$l1 = (long) i8;	$l2 = $l1 + 4294967296L;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 5