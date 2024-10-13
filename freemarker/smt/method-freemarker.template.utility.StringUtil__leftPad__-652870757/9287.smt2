(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var638 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var638 null-String)))
(declare-const var3882 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3882 null-Int)))
(declare-const var2252 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var2252 null-Int)))
(assert true)
(define-const var42 Int (length/-134980193 var638)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var3882 var42)) ; Cond: i1 > i0 
(define-const var209 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var209 var3882)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var209!1 String)
(declare-const var3882!1 Int)
(define-const var1831 Int (- var3882!1 var42)) ; Statement: i2 = i1 - i0 
(define-const var620 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (>= var620 var1831)) ; Cond: i4 >= i2 
(assert true)
;(assert (append/672562846 var209!1 var638)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var209!2 String)
(assert (= var209!2 (str.++ var209!1 var638)))
(assert true)
(define-const var2819 String (toString/-2075883882 var209!2)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var638=r0, var1516=null_type, var3882=i1, var2252=c3, var42=i0, var209=$r1, var1831=i2, var620=i4, var2819=$r2}
; {r0=var638, null_type=var1516, i1=var3882, c3=var2252, i0=var42, $r1=var209, i2=var1831, i4=var620, $r2=var2819}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c3 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	i2 = i1 - i0;	i4 = 0;	if i4 >= i2 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4