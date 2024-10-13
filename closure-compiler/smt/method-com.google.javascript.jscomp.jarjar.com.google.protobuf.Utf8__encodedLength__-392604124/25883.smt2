(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2281-init () var2281)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2281 String) void)
(declare-const null-String String)
(declare-const var2381 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2381 null-String)))
(define-const var3647 Int (String_length/-667254855 var2381)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1472 Int var3647) ; Statement: i8 = i0 
(define-const var3057 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i0 goto (branch) 
(assert (>= var3057 var3647)) ; Cond: i9 >= i0 
 ; Statement: if i9 >= i0 goto (branch) 
(assert (>= var3057 var3647)) ; Cond: i9 >= i0 
 ; Statement: if i8 >= i0 goto return i8 
(assert (not (>= var1472 var3647))) ; Negate: Cond: i8 >= i0  
(define-const var1270 var2281 var2281-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1302 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1302)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1302!1 String)
(assert (= var1302!1 ""))
(assert true)
(define-const var3508 String (append/672562846 var1302!1 "UTF-8 length does not fit in int: ")) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8 length does not fit in int: ") 
(declare-const var1302!2 String)
(assert (= var1302!2 (str.++ var1302!1 "UTF-8 length does not fit in int: ")))
(define-const var2615 Int (cast-from-Int-to-Int var1472)) ; Statement: $l1 = (long) i8 
(define-const var3774 Int (+ var2615 4294967296)) ; Statement: $l2 = $l1 + 4294967296L 
(assert true)
(define-const var2501 String (append/-901862667 var3508 var3774)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var3508!1 String)
(assert (str.prefixof var3508 var3508!1))
(assert true)
(define-const var708 String (toString/-2075883882 var2501)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1270 var708)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1270!1 var2281)
(declare-const var708!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var2281-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2381=r0, var3647=i0, var1472=i8, var3057=i9, var2281=java.lang.IllegalArgumentException, var1270=$r7, var1302=$r6, var3508=$r3, var2615=$l1, var3774=$l2, var2501=$r4, var708=$r5}
; {r0=var2381, i0=var3647, i8=var1472, i9=var3057, java.lang.IllegalArgumentException=var2281, $r7=var1270, $r6=var1302, $r3=var3508, $l1=var2615, $l2=var3774, $r4=var2501, $r5=var708}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i8 = i0;	i9 = 0;	if i9 >= i0 goto (branch);	if i9 >= i0 goto (branch);	if i8 >= i0 goto return i8;	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8 length does not fit in int: ");	$l1 = (long) i8;	$l2 = $l1 + 4294967296L;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 5