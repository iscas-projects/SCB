(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1401 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1401 null-String)))
(assert true)
(define-const var1775 Int (length/-134980193 var1401)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var753 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var753 var1775)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(i0) 

(declare-const var753!1 String)
(declare-const var1775!1 Int)
(define-const var564 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var615 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var615 var1775!1)) ; Cond: i3 >= i0 
(assert true)
(define-const var1577 String (toString/-2075883882 var753!1)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1401=r0, var2769=null_type, var1775=i0, var753=$r3, var564=z0, var615=i3, var1577=$r2}
; {r0=var1401, null_type=var2769, i0=var1775, $r3=var753, z0=var564, i3=var615, $r2=var1577}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(i0);	z0 = 0;	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3