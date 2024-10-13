(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1250 0)
(declare-sort var302 0)
(declare-sort var1969 0)
(declare-sort var2499 0)
(declare-sort var422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1969_requireNonNull/1378936425 (var2499 String) var2499)
(declare-fun cast-from-var1250-to-var2499 (var1250) var2499)
(declare-fun var422-init () var422)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var422 String) void)
(declare-const null-var1250 var1250)
(declare-const null-Int Int)
(declare-const null-var302 var302)
(declare-const var302-DAYS var302)
(declare-const var2575 var1250) ; Statement: r0 := @parameter0: java.util.Calendar 
(assert (not (= var2575 null-var1250)))
(declare-const var846 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var846 null-Int)))
(declare-const var2916 var302) ; Statement: r1 := @parameter2: java.util.concurrent.TimeUnit 
(assert (not (= var2916 null-var302)))
;(assert (var1969_requireNonNull/1378936425 (cast-from-var1250-to-var2499 var2575) "calendar")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "calendar") 

(declare-const var2575!1 var1250)
(declare-const var1408 String)
(define-const var871 Int 0) ; Statement: l15 = 0L 
(define-const var926 var302 var302-DAYS) ; Statement: $r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit DAYS> 
 ; Statement: if r1 != $r2 goto $z2 = 1 
(assert (not (not (= var2916 var926)))) ; Negate: Cond: r1 != $r2  
(define-const var2990 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(define-const var1357 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i0) {     case 1: goto $i11 = virtualinvoke r0.<java.util.Calendar: int get(int)>(6);     case 2: goto $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);     default: goto tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var846 2)) (and (not (= var846 1)) true))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional  
 ; Statement: tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var846 2)) (and (not (= var846 1)) true))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional  
(define-const var1672 var422 var422-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1977 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1977)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1977!1 String)
(assert (= var1977!1 ""))
(assert true)
(define-const var3095 String (append/672562846 var1977!1 "The fragment ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The fragment ") 
(declare-const var1977!2 String)
(assert (= var1977!2 (str.++ var1977!1 "The fragment ")))
(assert true)
(define-const var3511 String (append/-1001720160 var3095 var846)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3095!1 String)
(assert (str.prefixof var3095 var3095!1))
(assert true)
(define-const var3453 String (append/672562846 var3511 " is not supported")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported") 
(declare-const var3511!1 String)
(assert (= var3511!1 (str.++ var3511 " is not supported")))
(assert true)
(define-const var3731 String (toString/-2075883882 var3453)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1672 var3731)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1672!1 var422)
(declare-const var3731!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1969_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1250-to-var2499=([java.util.Calendar], java.lang.Object), var422-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1250=java.util.Calendar, var2575=r0, var846=i0, var302=java.util.concurrent.TimeUnit, var2916=r1, var1969=java.util.Objects, var2499=java.lang.Object, var1408="calendar", var871=l15, var926=$r2, var2990=$z2, var1357=$z1, var422=java.lang.IllegalArgumentException, var1672=$r6, var1977=$r7, var3095=$r8, var3511=$r9, var3453=$r10, var3731=$r11}
; {java.util.Calendar=var1250, r0=var2575, i0=var846, java.util.concurrent.TimeUnit=var302, r1=var2916, java.util.Objects=var1969, java.lang.Object=var2499, "calendar"=var1408, l15=var871, $r2=var926, $z2=var2990, $z1=var1357, java.lang.IllegalArgumentException=var422, $r6=var1672, $r7=var1977, $r8=var3095, $r9=var3511, $r10=var3453, $r11=var3731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Calendar;	i0 := @parameter1: int;	r1 := @parameter2: java.util.concurrent.TimeUnit;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "calendar");	l15 = 0L;	$r2 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit DAYS>;	if r1 != $r2 goto $z2 = 1;	$z2 = 0;	$z1 = 0;	goto [?= (branch)];	lookupswitch(i0) {     case 1: goto $i11 = virtualinvoke r0.<java.util.Calendar: int get(int)>(6);     case 2: goto $i1 = virtualinvoke r0.<java.util.Calendar: int get(int)>(5);     default: goto tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; }; };	tableswitch(i0) {     case 1: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 2: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 3: goto $r6 = new java.lang.IllegalArgumentException;     case 4: goto $r6 = new java.lang.IllegalArgumentException;     case 5: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 6: goto $i8 = virtualinvoke r0.<java.util.Calendar: int get(int)>(11);     case 7: goto $r6 = new java.lang.IllegalArgumentException;     case 8: goto $r6 = new java.lang.IllegalArgumentException;     case 9: goto $r6 = new java.lang.IllegalArgumentException;     case 10: goto $r6 = new java.lang.IllegalArgumentException;     case 11: goto $i5 = virtualinvoke r0.<java.util.Calendar: int get(int)>(12);     case 12: goto $i16 = virtualinvoke r0.<java.util.Calendar: int get(int)>(13);     case 13: goto $i19 = virtualinvoke r0.<java.util.Calendar: int get(int)>(14);     case 14: goto goto [?= return l15];     default: goto $r6 = new java.lang.IllegalArgumentException; };	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The fragment ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 5