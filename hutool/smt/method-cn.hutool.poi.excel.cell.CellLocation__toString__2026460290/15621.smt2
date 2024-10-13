(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun x/1128054626 (var1823) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun y/1128054626 (var1823) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1823 var1823)
(declare-const var607 var1823) ; Statement: r1 := @this: cn.hutool.poi.excel.cell.CellLocation 
(assert (not (= var607 null-var1823)))
(define-const var2633 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2633)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2633!1 String)
(assert (= var2633!1 ""))
(assert true)
(define-const var1009 String (append/672562846 var2633!1 "CellLocation{x=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CellLocation{x=") 
(declare-const var2633!2 String)
(assert (= var2633!2 (str.++ var2633!1 "CellLocation{x=")))
(define-const var1050 Int (x/1128054626 var607)) ; Statement: $i0 = r1.<cn.hutool.poi.excel.cell.CellLocation: int x> 
(assert true)
(define-const var2289 String (append/-1001720160 var1009 var1050)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1009!1 String)
(assert (str.prefixof var1009 var1009!1))
(assert true)
(define-const var830 String (append/672562846 var2289 ", y=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", y=") 
(declare-const var2289!1 String)
(assert (= var2289!1 (str.++ var2289 ", y=")))
(define-const var3695 Int (y/1128054626 var607)) ; Statement: $i1 = r1.<cn.hutool.poi.excel.cell.CellLocation: int y> 
(assert true)
(define-const var1677 String (append/-1001720160 var830 var3695)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var830!1 String)
(assert (str.prefixof var830 var830!1))
(assert true)
(define-const var1691 String (append/-1166366385 var1677 125)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1677!1 String)
(assert (str.prefixof var1677 var1677!1))
(assert true)
(define-const var3185 String (toString/-2075883882 var1691)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), x/1128054626=([cn.hutool.poi.excel.cell.CellLocation], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), y/1128054626=([cn.hutool.poi.excel.cell.CellLocation], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1823=cn.hutool.poi.excel.cell.CellLocation, var607=r1, var2633=$r0, var1009=$r2, var1050=$i0, var2289=$r3, var830=$r4, var3695=$i1, var1677=$r5, var1691=$r6, var3185=$r7}
; {cn.hutool.poi.excel.cell.CellLocation=var1823, r1=var607, $r0=var2633, $r2=var1009, $i0=var1050, $r3=var2289, $r4=var830, $i1=var3695, $r5=var1677, $r6=var1691, $r7=var3185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.poi.excel.cell.CellLocation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CellLocation{x=");	$i0 = r1.<cn.hutool.poi.excel.cell.CellLocation: int x>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", y=");	$i1 = r1.<cn.hutool.poi.excel.cell.CellLocation: int y>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1