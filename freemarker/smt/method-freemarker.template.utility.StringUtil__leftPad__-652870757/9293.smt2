(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3061 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3061 null-String)))
(declare-const var1202 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1202 null-Int)))
(declare-const var518 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var518 null-Int)))
(assert true)
(define-const var3323 Int (length/-134980193 var3061)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var1202 var3323)) ; Cond: i1 > i0 
(define-const var2744 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2744 var1202)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var2744!1 String)
(declare-const var1202!1 Int)
(define-const var1557 Int (- var1202!1 var3323)) ; Statement: i2 = i1 - i0 
(define-const var3897 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (>= var3897 var1557))) ; Negate: Cond: i4 >= i2  
(assert true)
;(assert (append/-1166366385 var2744!1 var518)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3) 
(declare-const var2744!2 String)
(assert (str.prefixof var2744!1 var2744!2))
(define-const var3897!1 Int (+ var3897 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (>= var3897!1 var1557))) ; Negate: Cond: i4 >= i2  
(assert true)
;(assert (append/-1166366385 var2744!2 var518)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3) 
(declare-const var2744!3 String)
(assert (str.prefixof var2744!2 var2744!3))
(define-const var3897!2 Int (+ var3897!1 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (>= var3897!2 var1557)) ; Cond: i4 >= i2 
(assert true)
;(assert (append/672562846 var2744!3 var3061)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2744!4 String)
(assert (= var2744!4 (str.++ var2744!3 var3061)))
(assert true)
(define-const var1488 String (toString/-2075883882 var2744!4)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3061=r0, var2894=null_type, var1202=i1, var518=c3, var3323=i0, var2744=$r1, var1557=i2, var3897=i4, var1488=$r2}
; {r0=var3061, null_type=var2894, i1=var1202, c3=var518, i0=var3323, $r1=var2744, i2=var1557, i4=var3897, $r2=var1488}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c3 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	i2 = i1 - i0;	i4 = 0;	if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3);	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3);	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8