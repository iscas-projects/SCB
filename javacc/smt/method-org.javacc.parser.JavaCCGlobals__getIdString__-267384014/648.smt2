(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var652 0)
(declare-sort var2764 0)
(declare-sort var292 0)
(declare-sort var332 0)
(declare-sort var2703 0)
(declare-sort var168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var652_size/-959786421 (var652) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var652_get/-1216255739 (var652 Int) var292)
(declare-fun cast-from-var292-to-String (var292) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun println/1773605060 (var332 String) void)
(declare-fun var168-init () var168)
(declare-fun <init>/1750087229 (var168) void)
(declare-const null-var652 var652)
(declare-const null-String String)
(declare-const var2703-out var332)
(declare-const var1637 var652) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var1637 null-var652)))
(declare-const var1708 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1708 null-String)))
(define-const var1528 String "Generated By:") ; Statement: r22 = "Generated By:" 
(define-const var956 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var534 Int (var652_size/-959786421 var1637)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2966 Int (- var534 1)) ; Statement: $i1 = $i0 - 1 
 ; Statement: if i3 >= $i1 goto $r1 = new java.lang.StringBuilder 
(assert (>= var956 var2966)) ; Cond: i3 >= $i1 
(define-const var590 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var590)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var590!1 String)
(assert (= var590!1 ""))
(assert true)
(define-const var1989 String (append/672562846 var590!1 var1528)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var590!2 String)
(assert (= var590!2 (str.++ var590!1 var1528)))
(define-const var2204 var292 (var652_get/-1216255739 var1637 var956)) ; Statement: $r2 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i3) 
(define-const var329 String (cast-from-var292-to-String var2204)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var2344 String (append/672562846 var1989 var329)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1989!1 String)
(assert (= var1989!1 (str.++ var1989 var329)))
(assert true)
(define-const var856 String (append/672562846 var2344 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2344!1 String)
(assert (= var2344!1 (str.++ var2344 ":")))
(assert true)
(define-const var3638 String (toString/-2075883882 var856)) ; Statement: r23 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var915 Int (length/-134980193 var3638)) ; Statement: $i2 = virtualinvoke r23.<java.lang.String: int length()>() 
 ; Statement: if $i2 <= 200 goto $r7 = new java.lang.StringBuilder 
(assert (not (<= var915 200))) ; Negate: Cond: $i2 <= 200  
(define-const var1524 var332 var2703-out) ; Statement: $r14 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var1524 "Tool names too long.")) ; Statement: virtualinvoke $r14.<java.io.PrintStream: void println(java.lang.String)>("Tool names too long.") 

(declare-const var1524!1 var332)
(declare-const var3573 String)
(define-const var2258 var168 var168-init) ; Statement: $r15 = new java.lang.Error 
(assert true)
;(assert (<init>/1750087229 var2258)) ; Statement: specialinvoke $r15.<java.lang.Error: void <init>()>() 

(declare-const var2258!1 var168)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var652_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var652_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var292-to-String=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), println/1773605060=([java.io.PrintStream, java.lang.String], void), var168-init=([], java.lang.Error), <init>/1750087229=([java.lang.Error], void)}
; {var652=java.util.List, var1637=r0, var1708=r9, var2764=null_type, var1528=r22, var956=i3, var534=$i0, var2966=$i1, var590=$r1, var1989=$r4, var292=java.lang.Object, var2204=$r2, var329=$r3, var2344=$r5, var856=$r6, var3638=r23, var915=$i2, var332=java.io.PrintStream, var2703=java.lang.System, var1524=$r14, var3573="Tool names too long.", var168=java.lang.Error, var2258=$r15}
; {java.util.List=var652, r0=var1637, r9=var1708, null_type=var2764, r22=var1528, i3=var956, $i0=var534, $i1=var2966, $r1=var590, $r4=var1989, java.lang.Object=var292, $r2=var2204, $r3=var329, $r5=var2344, $r6=var856, r23=var3638, $i2=var915, java.io.PrintStream=var332, java.lang.System=var2703, $r14=var1524, "Tool names too long."=var3573, java.lang.Error=var168, $r15=var2258}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.util.List;	r9 := @parameter1: java.lang.String;	r22 = "Generated By:";	i3 = 0;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	$i1 = $i0 - 1;	if i3 >= $i1 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r2 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i3);	$r3 = (java.lang.String) $r2;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	r23 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = virtualinvoke r23.<java.lang.String: int length()>();	if $i2 <= 200 goto $r7 = new java.lang.StringBuilder;	$r14 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r14.<java.io.PrintStream: void println(java.lang.String)>("Tool names too long.");	$r15 = new java.lang.Error;	specialinvoke $r15.<java.lang.Error: void <init>()>();	throw $r15
;block_num 4