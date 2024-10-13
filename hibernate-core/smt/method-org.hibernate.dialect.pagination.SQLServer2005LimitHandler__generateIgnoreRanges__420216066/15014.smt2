(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1170 0)
(declare-sort var2609 0)
(declare-sort var1925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2609-init () var2609)
(declare-fun <init>/-325640736 (var2609) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1925-init () var1925)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1925 String) void)
(declare-const null-String String)
(declare-const var1431 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1431 null-String)))
(define-const var1020 var2609 var2609-init) ; Statement: $r17 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1020)) ; Statement: specialinvoke $r17.<java.util.ArrayList: void <init>()>() 

(declare-const var1020!1 var2609)
(define-const var1168 Int 0) ; Statement: i2 = 0 
(define-const var2912 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var1598 Int var2912) ; Statement: i3 = $i6 
(define-const var2348 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var233 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var838 Int (length/-134980193 var1431)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var233 var838)) ; Cond: i4 >= $i0 
 ; Statement: if i2 == 0 goto return $r17 
(assert (not (= var1168 0))) ; Negate: Cond: i2 == 0  
(define-const var2583 var1925 var1925-init) ; Statement: $r22 = new java.lang.IllegalStateException 
(define-const var163 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var163)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var163!1 String)
(assert (= var163!1 ""))
(assert true)
(define-const var3196 String (append/672562846 var163!1 "Unmatched parenthesis in rendered SQL (")) ; Statement: $r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unmatched parenthesis in rendered SQL (") 
(declare-const var163!2 String)
(assert (= var163!2 (str.++ var163!1 "Unmatched parenthesis in rendered SQL (")))
(assert true)
(define-const var3837 String (append/-1001720160 var3196 var1168)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3196!1 String)
(assert (str.prefixof var3196 var3196!1))
(assert true)
(define-const var720 String (append/672562846 var3837 " depth): ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" depth): ") 
(declare-const var3837!1 String)
(assert (= var3837!1 (str.++ var3837 " depth): ")))
(assert true)
(define-const var2100 String (append/672562846 var720 var1431)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var720!1 String)
(assert (= var720!1 (str.++ var720 var1431)))
(assert true)
(define-const var2959 String (toString/-2075883882 var2100)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2583 var2959)) ; Statement: specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var2583!1 var1925)
(declare-const var2959!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2609-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), var1925-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1431=r1, var1170=null_type, var2609=java.util.ArrayList, var1020=$r17, var1168=i2, var2912=$i6, var1598=i3, var2348=z0, var233=i4, var838=$i0, var1925=java.lang.IllegalStateException, var2583=$r22, var163=$r21, var3196=$r4, var3837=$r5, var720=$r6, var2100=$r7, var2959=$r8}
; {r1=var1431, null_type=var1170, java.util.ArrayList=var2609, $r17=var1020, i2=var1168, $i6=var2912, i3=var1598, z0=var2348, i4=var233, $i0=var838, java.lang.IllegalStateException=var1925, $r22=var2583, $r21=var163, $r4=var3196, $r5=var3837, $r6=var720, $r7=var2100, $r8=var2959}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r17 = new java.util.ArrayList;	specialinvoke $r17.<java.util.ArrayList: void <init>()>();	i2 = 0;	$i6 = (int) -1;	i3 = $i6;	z0 = 0;	i4 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i0 goto (branch);	if i2 == 0 goto return $r17;	$r22 = new java.lang.IllegalStateException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unmatched parenthesis in rendered SQL (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" depth): ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r22
;block_num 4