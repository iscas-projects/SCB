(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var2467 0)
(declare-sort var1893 0)
(declare-sort var3169 0)
(declare-sort var3813 0)
(declare-sort var2091 0)
(declare-sort var1089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2467_getSheet/292787143 (var2467) var1893)
(declare-fun cast-from-var1893-to-var3169 (var1893) var3169)
(declare-fun cast-from-var1654-to-var3169 (var1654) var3169)
(declare-fun arrayFormulas/-1100774885 (var1654) var3813)
(declare-fun var3813_iterator/-912451715 (var3813) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2091-init () var2091)
(declare-fun <init>/1524963672 (var2091 var2467) void)
(declare-fun formatAsString/583597915 (var2091) String)
(declare-fun var1089-init () var1089)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1089 String) void)
(declare-const null-var1654 var1654)
(declare-const null-var2467 var2467)
(declare-const var700 var1654) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var700 null-var1654)))
(declare-const var130 var2467) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var130 null-var2467)))
(define-const var276 var1893 (var2467_getSheet/292787143 var130)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var1893-to-var3169 var276) (cast-from-var1654-to-var3169 var700))) ; Cond: $r2 == r1 
(define-const var3764 var3813 (arrayFormulas/-1100774885 var700)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var2647 Iterator (var3813_iterator/-912451715 var3764)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2823 Bool (Iterator_hasNext/-1669924200 var2647)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (= (ite var2823 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1849 var2091 var2091-init) ; Statement: $r4 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/1524963672 var1849 var130)) ; Statement: specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0) 

(declare-const var1849!1 var2091)
(declare-const var130!1 var2467)
(assert true)
(define-const var2119 String (formatAsString/583597915 var1849!1)) ; Statement: r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(define-const var3738 var1089 var1089-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2496 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2496)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2496!1 String)
(assert (= var2496!1 ""))
(assert true)
(define-const var3440 String (append/672562846 var2496!1 "Cell ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ") 
(declare-const var2496!2 String)
(assert (= var2496!2 (str.++ var2496!1 "Cell ")))
(assert true)
(define-const var692 String (append/672562846 var3440 var2119)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3440!1 String)
(assert (= var3440!1 (str.++ var3440 var2119)))
(assert true)
(define-const var1863 String (append/672562846 var692 " is not part of an array formula.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.") 
(declare-const var692!1 String)
(assert (= var692!1 (str.++ var692 " is not part of an array formula.")))
(assert true)
(define-const var3396 String (toString/-2075883882 var1863)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3738 var3396)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3738!1 var1089)
(declare-const var3396!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2467_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var1893-to-var3169=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var1654-to-var3169=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var3813_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2091-init=([], org.apache.poi.ss.util.CellReference), <init>/1524963672=([org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Cell], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), var1089-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1654=org.apache.poi.xssf.usermodel.XSSFSheet, var700=r1, var2467=org.apache.poi.ss.usermodel.Cell, var130=r0, var1893=org.apache.poi.ss.usermodel.Sheet, var276=$r2, var3169=java.lang.Object, var3813=java.util.List, var3764=$r3, var2647=r19, var2823=$z0, var2091=org.apache.poi.ss.util.CellReference, var1849=$r4, var2119=r20, var1089=java.lang.IllegalArgumentException, var3738=$r5, var2496=$r6, var3440=$r7, var692=$r8, var1863=$r9, var3396=$r10}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1654, r1=var700, org.apache.poi.ss.usermodel.Cell=var2467, r0=var130, org.apache.poi.ss.usermodel.Sheet=var1893, $r2=var276, java.lang.Object=var3169, java.util.List=var3813, $r3=var3764, r19=var2647, $z0=var2823, org.apache.poi.ss.util.CellReference=var2091, $r4=var1849, r20=var2119, java.lang.IllegalArgumentException=var1089, $r5=var3738, $r6=var2496, $r7=var3440, $r8=var692, $r9=var1863, $r10=var3396}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r4 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0);	r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 4