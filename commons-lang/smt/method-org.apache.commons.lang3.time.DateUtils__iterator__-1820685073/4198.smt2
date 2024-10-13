(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2136 0)
(declare-sort var2354 0)
(declare-sort var2855 0)
(declare-sort var3644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2354_requireNonNull/1378936425 (var2855 String) var2855)
(declare-fun cast-from-var2136-to-var2855 (var2136) var2855)
(declare-fun var3644-init () var3644)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3644 String) void)
(declare-const null-var2136 var2136)
(declare-const null-Int Int)
(declare-const var2823 var2136) ; Statement: r0 := @parameter0: java.util.Calendar 
(assert (not (= var2823 null-var2136)))
(declare-const var1356 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1356 null-Int)))
;(assert (var2354_requireNonNull/1378936425 (cast-from-var2136-to-var2855 var2823) "calendar")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "calendar") 

(declare-const var2823!1 var2136)
(declare-const var3190 String)
(define-const var3075 Int 1) ; Statement: i4 = 1 
(define-const var547 Int 7) ; Statement: i5 = 7 
 ; Statement: tableswitch(i0) {     case 1: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 2: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 3: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 4: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 5: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 2);     case 6: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 2);     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1356 6)) (and (not (= var1356 5)) (and (not (= var1356 4)) (and (not (= var1356 3)) (and (not (= var1356 2)) (and (not (= var1356 1)) true))))))) ; Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional      
(define-const var1019 var3644 var3644-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var165 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var165)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var165!1 String)
(assert (= var165!1 ""))
(assert true)
(define-const var2081 String (append/672562846 var165!1 "The range style ")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The range style ") 
(declare-const var165!2 String)
(assert (= var165!2 (str.++ var165!1 "The range style ")))
(assert true)
(define-const var661 String (append/-1001720160 var2081 var1356)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2081!1 String)
(assert (str.prefixof var2081 var2081!1))
(assert true)
(define-const var2675 String (append/672562846 var661 " is not valid.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not valid.") 
(declare-const var661!1 String)
(assert (= var661!1 (str.++ var661 " is not valid.")))
(assert true)
(define-const var427 String (toString/-2075883882 var2675)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1019 var427)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1019!1 var3644)
(declare-const var427!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2354_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var2136-to-var2855=([java.util.Calendar], java.lang.Object), var3644-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2136=java.util.Calendar, var2823=r0, var1356=i0, var2354=java.util.Objects, var2855=java.lang.Object, var3190="calendar", var3075=i4, var547=i5, var3644=java.lang.IllegalArgumentException, var1019=$r12, var165=$r11, var2081=$r5, var661=$r6, var2675=$r7, var427=$r8}
; {java.util.Calendar=var2136, r0=var2823, i0=var1356, java.util.Objects=var2354, java.lang.Object=var2855, "calendar"=var3190, i4=var3075, i5=var547, java.lang.IllegalArgumentException=var3644, $r12=var1019, $r11=var165, $r5=var2081, $r6=var661, $r7=var2675, $r8=var427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Calendar;	i0 := @parameter1: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "calendar");	i4 = 1;	i5 = 7;	tableswitch(i0) {     case 1: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 2: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 3: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 4: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 5);     case 5: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 2);     case 6: goto r9 = staticinvoke <org.apache.commons.lang3.time.DateUtils: java.util.Calendar truncate(java.util.Calendar,int)>(r0, 2);     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The range style ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not valid.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r12
;block_num 2