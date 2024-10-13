(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3806 0)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumCellStyles/-1337965875 (var3806) Int)
(declare-fun var1649-init () var1649)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1649 String) void)
(declare-const null-var3806 var3806)
(declare-const var3806-MAXIMUM_STYLE_ID Int)
(declare-const var2148 var3806) ; Statement: r0 := @this: org.apache.poi.xssf.model.StylesTable 
(assert (not (= var2148 null-var3806)))
(assert true)
(define-const var3417 Int (getNumCellStyles/-1337965875 var2148)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xssf.model.StylesTable: int getNumCellStyles()>() 
(define-const var1797 Int var3806-MAXIMUM_STYLE_ID) ; Statement: $i0 = <org.apache.poi.xssf.model.StylesTable: int MAXIMUM_STYLE_ID> 
 ; Statement: if $i1 <= $i0 goto $r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.List styleXfs> 
(assert (not (<= var3417 var1797))) ; Negate: Cond: $i1 <= $i0  
(define-const var652 var1649 var1649-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(define-const var677 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var677)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var677!1 String)
(assert (= var677!1 ""))
(assert true)
(define-const var3584 String (append/672562846 var677!1 "The maximum number of Cell Styles was exceeded. You can define up to ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The maximum number of Cell Styles was exceeded. You can define up to ") 
(declare-const var677!2 String)
(assert (= var677!2 (str.++ var677!1 "The maximum number of Cell Styles was exceeded. You can define up to ")))
(define-const var2656 Int var3806-MAXIMUM_STYLE_ID) ; Statement: $i6 = <org.apache.poi.xssf.model.StylesTable: int MAXIMUM_STYLE_ID> 
(assert true)
(define-const var134 String (append/-1001720160 var3584 var2656)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var3584!1 String)
(assert (str.prefixof var3584 var3584!1))
(assert true)
(define-const var3094 String (append/672562846 var134 " style in a .xlsx Workbook")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" style in a .xlsx Workbook") 
(declare-const var134!1 String)
(assert (= var134!1 (str.++ var134 " style in a .xlsx Workbook")))
(assert true)
(define-const var263 String (toString/-2075883882 var3094)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var652 var263)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var652!1 var1649)
(declare-const var263!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumCellStyles/-1337965875=([org.apache.poi.xssf.model.StylesTable], int), var1649-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3806=org.apache.poi.xssf.model.StylesTable, var2148=r0, var3417=$i1, var1797=$i0, var1649=java.lang.IllegalStateException, var652=$r7, var677=$r8, var3584=$r9, var2656=$i6, var134=$r10, var3094=$r11, var263=$r12}
; {org.apache.poi.xssf.model.StylesTable=var3806, r0=var2148, $i1=var3417, $i0=var1797, java.lang.IllegalStateException=var1649, $r7=var652, $r8=var677, $r9=var3584, $i6=var2656, $r10=var134, $r11=var3094, $r12=var263}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.model.StylesTable;	$i1 = virtualinvoke r0.<org.apache.poi.xssf.model.StylesTable: int getNumCellStyles()>();	$i0 = <org.apache.poi.xssf.model.StylesTable: int MAXIMUM_STYLE_ID>;	if $i1 <= $i0 goto $r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.List styleXfs>;	$r7 = new java.lang.IllegalStateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The maximum number of Cell Styles was exceeded. You can define up to ");	$i6 = <org.apache.poi.xssf.model.StylesTable: int MAXIMUM_STYLE_ID>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" style in a .xlsx Workbook");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2