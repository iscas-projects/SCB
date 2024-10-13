(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3183 0)
(declare-sort var1794 0)
(declare-sort var1466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/1951956598 (var3183) Int)
(declare-fun rowList/1951956598 (var3183) var1794)
(declare-fun var1794_size/-959786421 (var1794) Int)
(declare-fun var1466-init () var1466)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1658509215 (var1466 String) void)
(declare-const null-var3183 var3183)
(declare-const var621 var3183) ; Statement: r0 := @this: com.mysql.cj.result.BufferedRowList 
(assert (not (= var621 null-var3183)))
(define-const var3515 Int (position/1951956598 var621)) ; Statement: $i0 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
(define-const var1659 Int (+ var3515 1)) ; Statement: $i2 = $i0 + 1 
(define-const var1972 var1794 (rowList/1951956598 var621)) ; Statement: $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(define-const var2841 Int (var1794_size/-959786421 var1972)) ; Statement: $i1 = interfaceinvoke $r1.<java.util.List: int size()>() 
 ; Statement: if $i2 != $i1 goto $r2 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(assert (not (not (= var1659 var2841)))) ; Negate: Cond: $i2 != $i1  
(define-const var2040 var1466 var1466-init) ; Statement: $r5 = new java.util.NoSuchElementException 
(define-const var1467 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1467)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1467!1 String)
(assert (= var1467!1 ""))
(assert true)
(define-const var96 String (append/672562846 var1467!1 "Can\u0027t next() when position=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t next() when position=") 
(declare-const var1467!2 String)
(assert (= var1467!2 (str.++ var1467!1 "Can\u0027t next() when position=")))
(define-const var3584 Int (position/1951956598 var621)) ; Statement: $i5 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
(assert true)
(define-const var1279 String (append/-1001720160 var96 var3584)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var96!1 String)
(assert (str.prefixof var96 var96!1))
(assert true)
(define-const var2760 String (append/672562846 var1279 " and size=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and size=") 
(declare-const var1279!1 String)
(assert (= var1279!1 (str.++ var1279 " and size=")))
(define-const var1443 var1794 (rowList/1951956598 var621)) ; Statement: $r9 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(define-const var3486 Int (var1794_size/-959786421 var1443)) ; Statement: $i6 = interfaceinvoke $r9.<java.util.List: int size()>() 
(assert true)
(define-const var1352 String (append/-1001720160 var2760 var3486)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var2760!1 String)
(assert (str.prefixof var2760 var2760!1))
(assert true)
(define-const var2199 String (toString/-2075883882 var1352)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1658509215 var2040 var2199)) ; Statement: specialinvoke $r5.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r12) 

(declare-const var2040!1 var1466)
(declare-const var2199!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {position/1951956598=([com.mysql.cj.result.BufferedRowList], int), rowList/1951956598=([com.mysql.cj.result.BufferedRowList], java.util.List), var1794_size/-959786421=([java.util.List], int), var1466-init=([], java.util.NoSuchElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1658509215=([java.util.NoSuchElementException, java.lang.String], void)}
; {var3183=com.mysql.cj.result.BufferedRowList, var621=r0, var3515=$i0, var1659=$i2, var1794=java.util.List, var1972=$r1, var2841=$i1, var1466=java.util.NoSuchElementException, var2040=$r5, var1467=$r6, var96=$r7, var3584=$i5, var1279=$r8, var2760=$r10, var1443=$r9, var3486=$i6, var1352=$r11, var2199=$r12}
; {com.mysql.cj.result.BufferedRowList=var3183, r0=var621, $i0=var3515, $i2=var1659, java.util.List=var1794, $r1=var1972, $i1=var2841, java.util.NoSuchElementException=var1466, $r5=var2040, $r6=var1467, $r7=var96, $i5=var3584, $r8=var1279, $r10=var2760, $r9=var1443, $i6=var3486, $r11=var1352, $r12=var2199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.result.BufferedRowList;	$i0 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	$i2 = $i0 + 1;	$r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$i1 = interfaceinvoke $r1.<java.util.List: int size()>();	if $i2 != $i1 goto $r2 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$r5 = new java.util.NoSuchElementException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t next() when position=");	$i5 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and size=");	$r9 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$i6 = interfaceinvoke $r9.<java.util.List: int size()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 2