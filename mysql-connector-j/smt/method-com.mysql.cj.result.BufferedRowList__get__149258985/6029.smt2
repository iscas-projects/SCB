(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3360 0)
(declare-sort var3330 0)
(declare-sort var207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3330-init () var3330)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun rowList/1951956598 (var3360) var207)
(declare-fun var207_size/-959786421 (var207) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1658509215 (var3330 String) void)
(declare-const null-var3360 var3360)
(declare-const null-Int Int)
(declare-const var2053 var3360) ; Statement: r4 := @this: com.mysql.cj.result.BufferedRowList 
(assert (not (= var2053 null-var3360)))
(declare-const var2844 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2844 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.util.NoSuchElementException 
(assert (< var2844 0)) ; Cond: i0 < 0 
(define-const var2679 var3330 var3330-init) ; Statement: $r0 = new java.util.NoSuchElementException 
(define-const var3795 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3795)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3795!1 String)
(assert (= var3795!1 ""))
(assert true)
(define-const var1955 String (append/672562846 var3795!1 "Can\u0027t get(")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get(") 
(declare-const var3795!2 String)
(assert (= var3795!2 (str.++ var3795!1 "Can\u0027t get(")))
(assert true)
(define-const var521 String (append/-1001720160 var1955 var2844)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1955!1 String)
(assert (str.prefixof var1955 var1955!1))
(assert true)
(define-const var1861 String (append/672562846 var521 ") when size=")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") when size=") 
(declare-const var521!1 String)
(assert (= var521!1 (str.++ var521 ") when size=")))
(define-const var1473 var207 (rowList/1951956598 var2053)) ; Statement: $r5 = r4.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(define-const var3976 Int (var207_size/-959786421 var1473)) ; Statement: $i1 = interfaceinvoke $r5.<java.util.List: int size()>() 
(assert true)
(define-const var424 String (append/-1001720160 var1861 var3976)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1861!1 String)
(assert (str.prefixof var1861 var1861!1))
(assert true)
(define-const var2625 String (toString/-2075883882 var424)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1658509215 var2679 var2625)) ; Statement: specialinvoke $r0.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r8) 

(declare-const var2679!1 var3330)
(declare-const var2625!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3330-init=([], java.util.NoSuchElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), rowList/1951956598=([com.mysql.cj.result.BufferedRowList], java.util.List), var207_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1658509215=([java.util.NoSuchElementException, java.lang.String], void)}
; {var3360=com.mysql.cj.result.BufferedRowList, var2053=r4, var2844=i0, var3330=java.util.NoSuchElementException, var2679=$r0, var3795=$r1, var1955=$r2, var521=$r3, var1861=$r6, var207=java.util.List, var1473=$r5, var3976=$i1, var424=$r7, var2625=$r8}
; {com.mysql.cj.result.BufferedRowList=var3360, r4=var2053, i0=var2844, java.util.NoSuchElementException=var3330, $r0=var2679, $r1=var3795, $r2=var1955, $r3=var521, $r6=var1861, java.util.List=var207, $r5=var1473, $i1=var3976, $r7=var424, $r8=var2625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.mysql.cj.result.BufferedRowList;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.util.NoSuchElementException;	$r0 = new java.util.NoSuchElementException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") when size=");	$r5 = r4.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$i1 = interfaceinvoke $r5.<java.util.List: int size()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 2