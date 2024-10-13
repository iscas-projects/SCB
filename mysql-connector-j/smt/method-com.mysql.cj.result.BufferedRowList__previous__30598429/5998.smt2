(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var278 0)
(declare-sort var1628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/1951956598 (var278) Int)
(declare-fun var1628-init () var1628)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1658509215 (var1628 String) void)
(declare-const null-var278 var278)
(declare-const var834 var278) ; Statement: r0 := @this: com.mysql.cj.result.BufferedRowList 
(assert (not (= var834 null-var278)))
(define-const var2997 Int (position/1951956598 var834)) ; Statement: $i0 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
 ; Statement: if $i0 >= 1 goto $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(assert (not (>= var2997 1))) ; Negate: Cond: $i0 >= 1  
(define-const var431 var1628 var1628-init) ; Statement: $r4 = new java.util.NoSuchElementException 
(define-const var2187 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2187)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2187!1 String)
(assert (= var2187!1 ""))
(assert true)
(define-const var1139 String (append/672562846 var2187!1 "Can\u0027t previous() when position=")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t previous() when position=") 
(declare-const var2187!2 String)
(assert (= var2187!2 (str.++ var2187!1 "Can\u0027t previous() when position=")))
(define-const var3960 Int (position/1951956598 var834)) ; Statement: $i3 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
(assert true)
(define-const var43 String (append/-1001720160 var1139 var3960)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1139!1 String)
(assert (str.prefixof var1139 var1139!1))
(assert true)
(define-const var3598 String (toString/-2075883882 var43)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1658509215 var431 var3598)) ; Statement: specialinvoke $r4.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r8) 

(declare-const var431!1 var1628)
(declare-const var3598!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {position/1951956598=([com.mysql.cj.result.BufferedRowList], int), var1628-init=([], java.util.NoSuchElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1658509215=([java.util.NoSuchElementException, java.lang.String], void)}
; {var278=com.mysql.cj.result.BufferedRowList, var834=r0, var2997=$i0, var1628=java.util.NoSuchElementException, var431=$r4, var2187=$r5, var1139=$r6, var3960=$i3, var43=$r7, var3598=$r8}
; {com.mysql.cj.result.BufferedRowList=var278, r0=var834, $i0=var2997, java.util.NoSuchElementException=var1628, $r4=var431, $r5=var2187, $r6=var1139, $i3=var3960, $r7=var43, $r8=var3598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.result.BufferedRowList;	$i0 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	if $i0 >= 1 goto $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$r4 = new java.util.NoSuchElementException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t previous() when position=");	$i3 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2