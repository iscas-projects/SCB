(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1205 0)
(declare-sort var1361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rowKey/1760834988 (var1205) var1361)
(declare-fun append/-1031950772 (String var1361) String)
(declare-fun columnKey/1760834988 (var1205) var1361)
(declare-fun value/1760834988 (var1205) var1361)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1205 var1205)
(declare-const var3524 var1205) ; Statement: r1 := @this: cn.hutool.core.map.multi.AbsTable$SimpleCell 
(assert (not (= var3524 null-var1205)))
(define-const var1145 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1145)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1145!1 String)
(assert (= var1145!1 ""))
(assert true)
(define-const var3676 String (append/672562846 var1145!1 "(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1145!2 String)
(assert (= var1145!2 (str.++ var1145!1 "(")))
(define-const var1696 var1361 (rowKey/1760834988 var3524)) ; Statement: $r2 = r1.<cn.hutool.core.map.multi.AbsTable$SimpleCell: java.lang.Object rowKey> 
(assert true)
(define-const var735 String (append/-1031950772 var3676 var1696)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3676!1 String)
(assert (str.prefixof var3676 var3676!1))
(assert true)
(define-const var1494 String (append/672562846 var735 ",")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var735!1 String)
(assert (= var735!1 (str.++ var735 ",")))
(define-const var847 var1361 (columnKey/1760834988 var3524)) ; Statement: $r5 = r1.<cn.hutool.core.map.multi.AbsTable$SimpleCell: java.lang.Object columnKey> 
(assert true)
(define-const var2422 String (append/-1031950772 var1494 var847)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1494!1 String)
(assert (str.prefixof var1494 var1494!1))
(assert true)
(define-const var3177 String (append/672562846 var2422 ")=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")=") 
(declare-const var2422!1 String)
(assert (= var2422!1 (str.++ var2422 ")=")))
(define-const var852 var1361 (value/1760834988 var3524)) ; Statement: $r8 = r1.<cn.hutool.core.map.multi.AbsTable$SimpleCell: java.lang.Object value> 
(assert true)
(define-const var3743 String (append/-1031950772 var3177 var852)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3177!1 String)
(assert (str.prefixof var3177 var3177!1))
(assert true)
(define-const var168 String (toString/-2075883882 var3743)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rowKey/1760834988=([cn.hutool.core.map.multi.AbsTable$SimpleCell], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), columnKey/1760834988=([cn.hutool.core.map.multi.AbsTable$SimpleCell], java.lang.Object), value/1760834988=([cn.hutool.core.map.multi.AbsTable$SimpleCell], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1205=cn.hutool.core.map.multi.AbsTable$SimpleCell, var3524=r1, var1145=$r0, var3676=$r3, var1361=java.lang.Object, var1696=$r2, var735=$r4, var1494=$r6, var847=$r5, var2422=$r7, var3177=$r9, var852=$r8, var3743=$r10, var168=$r11}
; {cn.hutool.core.map.multi.AbsTable$SimpleCell=var1205, r1=var3524, $r0=var1145, $r3=var3676, java.lang.Object=var1361, $r2=var1696, $r4=var735, $r6=var1494, $r5=var847, $r7=var2422, $r9=var3177, $r8=var852, $r10=var3743, $r11=var168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.map.multi.AbsTable$SimpleCell;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<cn.hutool.core.map.multi.AbsTable$SimpleCell: java.lang.Object rowKey>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r5 = r1.<cn.hutool.core.map.multi.AbsTable$SimpleCell: java.lang.Object columnKey>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")=");	$r8 = r1.<cn.hutool.core.map.multi.AbsTable$SimpleCell: java.lang.Object value>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1