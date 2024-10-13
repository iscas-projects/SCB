(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3409 0)
(declare-sort var1978 0)
(declare-sort var554 0)
(declare-sort var655 0)
(declare-sort var2599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var554_requireNonNull/1378936425 (var655 String) var655)
(declare-fun cast-from-var3409-to-var655 (var3409) var655)
(declare-fun var2599-init () var2599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2599 String) void)
(declare-const null-var3409 var3409)
(declare-const null-Int Int)
(declare-const null-var1978 var1978)
(declare-const var1978-DAYS var1978)
(declare-const var2015 var3409) ; Statement: r0 := @parameter0: java.util.Calendar 
(assert (not (= var2015 null-var3409)))
(declare-const var1828 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1828 null-Int)))
(declare-const var563 var1978) ; Statement: r1 := @parameter2: java.util.concurrent.TimeUnit 
(assert (not (= var563 null-var1978)))
;(assert (var554_requireNonNull/1378936425 (cast-from-var3409-to-var655 var2015) "calendar")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "calendar") 

(declare-const var2015!1 var3409)
(declare-const var3865 String)
(define-const var2076 Int 0) ; Statement: l15 = 0L 
(define-const var1770 var1978 var1978-DAYS) ; Statement: $r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit DAYS> 
 ; Statement: if r1 != $r2 goto $z2 = 1 
(assert (not (= var563 var1770))) ; Cond: r1 != $r2 
(define-const var177 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
(define-const var688 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i0) {     case 1: goto $i11 = virtualinvoke r0.<java.util.Calendar: int get(int)>(6);     case 2: goto $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);     default: goto tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1828 2)) (and (not (= var1828 1)) true))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional  
 ; Statement: tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1828 2)) (and (not (= var1828 1)) true))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional  
(define-const var602 var2599 var2599-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var765 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var765)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var765!1 String)
(assert (= var765!1 ""))
(assert true)
(define-const var752 String (append/672562846 var765!1 "The fragment ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The fragment ") 
(declare-const var765!2 String)
(assert (= var765!2 (str.++ var765!1 "The fragment ")))
(assert true)
(define-const var3958 String (append/-1001720160 var752 var1828)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var752!1 String)
(assert (str.prefixof var752 var752!1))
(assert true)
(define-const var2424 String (append/672562846 var3958 " is not supported")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported") 
(declare-const var3958!1 String)
(assert (= var3958!1 (str.++ var3958 " is not supported")))
(assert true)
(define-const var2552 String (toString/-2075883882 var2424)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var602 var2552)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var602!1 var2599)
(declare-const var2552!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var554_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var3409-to-var655=([java.util.Calendar], java.lang.Object), var2599-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3409=java.util.Calendar, var2015=r0, var1828=i0, var1978=java.util.concurrent.TimeUnit, var563=r1, var554=java.util.Objects, var655=java.lang.Object, var3865="calendar", var2076=l15, var1770=$r2, var177=$z2, var688=$z1, var2599=java.lang.IllegalArgumentException, var602=$r6, var765=$r7, var752=$r8, var3958=$r9, var2424=$r10, var2552=$r11}
; {java.util.Calendar=var3409, r0=var2015, i0=var1828, java.util.concurrent.TimeUnit=var1978, r1=var563, java.util.Objects=var554, java.lang.Object=var655, "calendar"=var3865, l15=var2076, $r2=var1770, $z2=var177, $z1=var688, java.lang.IllegalArgumentException=var2599, $r6=var602, $r7=var765, $r8=var752, $r9=var3958, $r10=var2424, $r11=var2552}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Calendar;	i0 := @parameter1: int;	r1 := @parameter2: java.util.concurrent.TimeUnit;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "calendar");	l15 = 0L;	$r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit DAYS>;	if r1 != $r2 goto $z2 = 1;	$z2 = 1;	$z1 = 1;	lookupswitch(i0) {     case 1: goto $i11 = virtualinvoke r0.<java.util.Calendar: int get(int)>(6);     case 2: goto $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);     default: goto tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; }; };	tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; };	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The fragment ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 5