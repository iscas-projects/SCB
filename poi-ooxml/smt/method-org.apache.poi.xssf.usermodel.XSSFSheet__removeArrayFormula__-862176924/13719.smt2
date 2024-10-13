(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort var3108 0)
(declare-sort var540 0)
(declare-sort var1195 0)
(declare-sort var849 0)
(declare-sort var89 0)
(declare-sort var3499 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3108_getSheet/292787143 (var3108) var540)
(declare-fun cast-from-var540-to-var1195 (var540) var1195)
(declare-fun cast-from-var1436-to-var1195 (var1436) var1195)
(declare-fun arrayFormulas/-1100774885 (var1436) var849)
(declare-fun var849_iterator/-912451715 (var849) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1195)
(declare-fun cast-from-var1195-to-var89 (var1195) var89)
(declare-fun isInRange/945559528 (var89 var3108) Bool)
(declare-fun var3499-init () var3499)
(declare-fun <init>/1524963672 (var3499 var3108) void)
(declare-fun formatAsString/583597915 (var3499) String)
(declare-fun var407-init () var407)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var407 String) void)
(declare-const null-var1436 var1436)
(declare-const null-var3108 var3108)
(declare-const var3067 var1436) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3067 null-var1436)))
(declare-const var141 var3108) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var141 null-var3108)))
(define-const var655 var540 (var3108_getSheet/292787143 var141)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var540-to-var1195 var655) (cast-from-var1436-to-var1195 var3067))) ; Cond: $r2 == r1 
(define-const var1562 var849 (arrayFormulas/-1100774885 var3067)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var2328 Iterator (var849_iterator/-912451715 var1562)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var852 Bool (Iterator_hasNext/-1669924200 var2328)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var852 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2131 var1195 (Iterator_next/-1124697587 var2328)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2328!1 Iterator)
(define-const var1261 var89 (cast-from-var1195-to-var89 var2131)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var1603 Bool (isInRange/945559528 var1261 var141)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1603 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var852!1 Bool (Iterator_hasNext/-1669924200 var2328!1)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (= (ite var852!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var183 var3499 var3499-init) ; Statement: $r4 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/1524963672 var183 var141)) ; Statement: specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0) 

(declare-const var183!1 var3499)
(declare-const var141!1 var3108)
(assert true)
(define-const var3460 String (formatAsString/583597915 var183!1)) ; Statement: r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(define-const var3277 var407 var407-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3157 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3157)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3157!1 String)
(assert (= var3157!1 ""))
(assert true)
(define-const var3107 String (append/672562846 var3157!1 "Cell ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ") 
(declare-const var3157!2 String)
(assert (= var3157!2 (str.++ var3157!1 "Cell ")))
(assert true)
(define-const var2227 String (append/672562846 var3107 var3460)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3107!1 String)
(assert (= var3107!1 (str.++ var3107 var3460)))
(assert true)
(define-const var2539 String (append/672562846 var2227 " is not part of an array formula.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.") 
(declare-const var2227!1 String)
(assert (= var2227!1 (str.++ var2227 " is not part of an array formula.")))
(assert true)
(define-const var2661 String (toString/-2075883882 var2539)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3277 var2661)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3277!1 var407)
(declare-const var2661!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3108_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var540-to-var1195=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var1436-to-var1195=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var849_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1195-to-var89=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var3499-init=([], org.apache.poi.ss.util.CellReference), <init>/1524963672=([org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Cell], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), var407-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1436=org.apache.poi.xssf.usermodel.XSSFSheet, var3067=r1, var3108=org.apache.poi.ss.usermodel.Cell, var141=r0, var540=org.apache.poi.ss.usermodel.Sheet, var655=$r2, var1195=java.lang.Object, var849=java.util.List, var1562=$r3, var2328=r19, var852=$z0, var2131=$r11, var89=org.apache.poi.ss.util.CellRangeAddress, var1261=r12, var1603=$z1, var3499=org.apache.poi.ss.util.CellReference, var183=$r4, var3460=r20, var407=java.lang.IllegalArgumentException, var3277=$r5, var3157=$r6, var3107=$r7, var2227=$r8, var2539=$r9, var2661=$r10}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1436, r1=var3067, org.apache.poi.ss.usermodel.Cell=var3108, r0=var141, org.apache.poi.ss.usermodel.Sheet=var540, $r2=var655, java.lang.Object=var1195, java.util.List=var849, $r3=var1562, r19=var2328, $z0=var852, $r11=var2131, org.apache.poi.ss.util.CellRangeAddress=var89, r12=var1261, $z1=var1603, org.apache.poi.ss.util.CellReference=var3499, $r4=var183, r20=var3460, java.lang.IllegalArgumentException=var407, $r5=var3277, $r6=var3157, $r7=var3107, $r8=var2227, $r9=var2539, $r10=var2661}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r4 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0);	r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 7