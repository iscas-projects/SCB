(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1009 0)
(declare-sort var2633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2633-init () var2633)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2633 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2633 var2633)
(declare-const var3717 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3717 null-String)))
(declare-const var3067 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3067 null-Int)))
(declare-const var3519 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3519 null-Int)))
(declare-const var481 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var481 null-String)))
(define-const var1092 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $i3 = i0 
(assert (not (not (= var3519 var1092)))) ; Negate: Cond: i0 != $i9  
(assert true)
(define-const var2344 Int (length/-134980193 var3717)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: goto [?= i1 = $i3] 
(assert true) ; Non Conditional
(define-const var3716 Int var2344) ; Statement: i1 = $i3 
(define-const var986 Int var3067) ; Statement: i4 = i2 
(assert true) ; Non Conditional
(define-const var1496 Int (+ var986 1)) ; Statement: $i5 = i4 + 1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2576 var2633) ; Statement: $r1 := @caughtexception 
(assert (not (= var2576 null-var2633)))
(define-const var948 var2633 var2633-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var1713 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1713)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1713!1 String)
(assert (= var1713!1 ""))
(assert true)
(define-const var853 String (append/672562846 var1713!1 "Invalid ")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ") 
(declare-const var1713!2 String)
(assert (= var1713!2 (str.++ var1713!1 "Invalid ")))
(assert true)
(define-const var3350 String (append/672562846 var853 var481)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var853!1 String)
(assert (= var853!1 (str.++ var853 var481)))
(assert true)
(define-const var12 String (append/672562846 var3350 " (must be a fully qualified class name in internal form): ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a fully qualified class name in internal form): ") 
(declare-const var3350!1 String)
(assert (= var3350!1 (str.++ var3350 " (must be a fully qualified class name in internal form): ")))
(assert true)
(define-const var530 String (append/672562846 var12 var3717)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var12!1 String)
(assert (= var12!1 (str.++ var12 var3717)))
(assert true)
(define-const var659 String (toString/-2075883882 var530)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var948 var659)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var948!1 var2633)
(declare-const var659!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), var2633-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3717=r0, var1009=null_type, var3067=i2, var3519=i0, var481=r4, var1092=$i9, var2344=$i3, var3716=i1, var986=i4, var1496=$i5, var2633=java.lang.IllegalArgumentException, var2576=$r1, var948=$r11, var1713=$r10, var853=$r5, var3350=$r6, var12=$r7, var530=$r8, var659=$r9}
; {r0=var3717, null_type=var1009, i2=var3067, i0=var3519, r4=var481, $i9=var1092, $i3=var2344, i1=var3716, i4=var986, $i5=var1496, java.lang.IllegalArgumentException=var2633, $r1=var2576, $r11=var948, $r10=var1713, $r5=var853, $r6=var3350, $r7=var12, $r8=var530, $r9=var659}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	i0 := @parameter2: int;	r4 := @parameter3: java.lang.String;	$i9 = (int) -1;	if i0 != $i9 goto $i3 = i0;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	goto [?= i1 = $i3];	i1 = $i3;	i4 = i2;	$i5 = i4 + 1;	$r1 := @caughtexception;	$r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a fully qualified class name in internal form): ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r11
;block_num 5