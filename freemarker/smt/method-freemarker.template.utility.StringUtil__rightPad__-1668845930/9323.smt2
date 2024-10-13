(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var833 0)
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
(declare-const var2037 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2037 null-String)))
(declare-const var1347 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1347 null-Int)))
(declare-const var2648 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var2648 null-Int)))
(assert true)
(define-const var3773 Int (length/-134980193 var2037)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (> var1347 var3773)) ; Cond: i1 > i0 
(define-const var1154 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1154 var1347)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var1154!1 String)
(declare-const var1347!1 Int)
(assert true)
;(assert (append/672562846 var1154!1 var2037)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1154!2 String)
(assert (= var1154!2 (str.++ var1154!1 var2037)))
(define-const var572 Int (- var1347!1 var3773)) ; Statement: i2 = i1 - i0 
(define-const var3889 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3889 var572)) ; Cond: i4 >= i2 
(assert true)
(define-const var2503 String (toString/-2075883882 var1154!2)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2037=r0, var833=null_type, var1347=i1, var2648=c3, var3773=i0, var1154=$r1, var572=i2, var3889=i4, var2503=$r2}
; {r0=var2037, null_type=var833, i1=var1347, c3=var2648, i0=var3773, $r1=var1154, i2=var572, i4=var3889, $r2=var2503}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c3 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i2 = i1 - i0;	i4 = 0;	if i4 >= i2 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4