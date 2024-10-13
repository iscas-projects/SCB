(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1267 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1267 null-String)))
(declare-const var1353 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1353 null-Int)))
(declare-const var3955 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3955 null-String)))
(assert true)
(define-const var3366 Int (length/-134980193 var1267)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var1353 var3366)) ; Cond: i1 > i0 
(define-const var501 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var501 var1353)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var501!1 String)
(declare-const var1353!1 Int)
(define-const var1625 Int (- var1353!1 var3366)) ; Statement: i2 = i1 - i0 
(assert true)
(define-const var1850 Int (length/-134980193 var3955)) ; Statement: i3 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i3 != 0 goto i5 = i2 / i3 
(assert (not (= var1850 0))) ; Cond: i3 != 0 
(define-const var118 Int (div var1625 var1850)) ; Statement: i5 = i2 / i3 
(define-const var2081 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto i7 = i2 % i3 
(assert (>= var2081 var118)) ; Cond: i6 >= i5 
(define-const var453 Int (mod var1625 var1850)) ; Statement: i7 = i2 % i3 
(define-const var2247 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (>= var2247 var453))) ; Negate: Cond: i8 >= i7  
(assert (and true (and (> (str.len var3955) var2247) (<= 0 var2247))))
(define-const var1634 Int (charAt/698050440 var3955 var2247)) ; Statement: $c4 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i8) 
(assert true)
;(assert (append/-1166366385 var501!1 var1634)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4) 
(declare-const var501!2 String)
(assert (str.prefixof var501!1 var501!2))
(define-const var2247!1 Int (+ var2247 1)) ; Statement: i8 = i8 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (>= var2247!1 var453)) ; Cond: i8 >= i7 
(assert true)
;(assert (append/672562846 var501!2 var1267)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var501!3 String)
(assert (= var501!3 (str.++ var501!2 var1267)))
(assert true)
(define-const var3490 String (toString/-2075883882 var501!3)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), charAt/698050440=([java.lang.String, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1267=r0, var3160=null_type, var1353=i1, var3955=r2, var3366=i0, var501=$r1, var1625=i2, var1850=i3, var118=i5, var2081=i6, var453=i7, var2247=i8, var1634=$c4, var3490=$r3}
; {r0=var1267, null_type=var3160, i1=var1353, r2=var3955, i0=var3366, $r1=var501, i2=var1625, i3=var1850, i5=var118, i6=var2081, i7=var453, i8=var2247, $c4=var1634, $r3=var3490}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	i2 = i1 - i0;	i3 = virtualinvoke r2.<java.lang.String: int length()>();	if i3 != 0 goto i5 = i2 / i3;	i5 = i2 / i3;	i6 = 0;	if i6 >= i5 goto i7 = i2 % i3;	i7 = i2 % i3;	i8 = 0;	if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$c4 = virtualinvoke r2.<java.lang.String: char charAt(int)>(i8);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4);	i8 = i8 + 1;	goto [?= (branch)];	if i8 >= i7 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 9