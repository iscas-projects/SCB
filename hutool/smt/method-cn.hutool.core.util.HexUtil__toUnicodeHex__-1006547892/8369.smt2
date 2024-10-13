(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var687_toHex/-1103424571 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var2709 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2709 null-Int)))
(define-const var3969 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3969 6)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(6) 

(declare-const var3969!1 String)
(declare-const var1802 Int)
(assert true)
;(assert (append/672562846 var3969!1 "\u005cu")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u") 
(declare-const var3969!2 String)
(assert (= var3969!2 (str.++ var3969!1 "\u005cu")))
(define-const var834 String (var687_toHex/-1103424571 var2709)) ; Statement: r1 = staticinvoke <cn.hutool.core.util.HexUtil: java.lang.String toHex(int)>(i0) 
(assert true)
(define-const var3444 Int (length/-134980193 var834)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 4 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(assert (>= var3444 4)) ; Cond: i1 >= 4 
(assert true)
;(assert (append/672562846 var3969!2 var834)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3969!3 String)
(assert (= var3969!3 (str.++ var3969!2 var834)))
(assert true)
(define-const var591 String (toString/-2075883882 var3969!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var687_toHex/-1103424571=([int], java.lang.String), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2709=i0, var3969=$r0, var1802=6, var687=cn.hutool.core.util.HexUtil, var834=r1, var3444=i1, var591=$r2}
; {i0=var2709, $r0=var3969, 6=var1802, cn.hutool.core.util.HexUtil=var687, r1=var834, i1=var3444, $r2=var591}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\u");	r1 = staticinvoke <cn.hutool.core.util.HexUtil: java.lang.String toHex(int)>(i0);	i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 4 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2