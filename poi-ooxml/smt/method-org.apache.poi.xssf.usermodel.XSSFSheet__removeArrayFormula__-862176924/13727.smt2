(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var1672 0)
(declare-sort var1035 0)
(declare-sort var2090 0)
(declare-sort var1392 0)
(declare-sort var3093 0)
(declare-sort var2007 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1672_getSheet/292787143 (var1672) var1035)
(declare-fun cast-from-var1035-to-var2090 (var1035) var2090)
(declare-fun cast-from-var2152-to-var2090 (var2152) var2090)
(declare-fun arrayFormulas/-1100774885 (var2152) var1392)
(declare-fun var1392_iterator/-912451715 (var1392) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2090)
(declare-fun cast-from-var2090-to-var3093 (var2090) var3093)
(declare-fun isInRange/945559528 (var3093 var1672) Bool)
(declare-fun var2007-init () var2007)
(declare-fun <init>/1524963672 (var2007 var1672) void)
(declare-fun formatAsString/583597915 (var2007) String)
(declare-fun var3497-init () var3497)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3497 String) void)
(declare-const null-var2152 var2152)
(declare-const null-var1672 var1672)
(declare-const var3524 var2152) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var3524 null-var2152)))
(declare-const var1676 var1672) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var1676 null-var1672)))
(define-const var976 var1035 (var1672_getSheet/292787143 var1676)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var1035-to-var2090 var976) (cast-from-var2152-to-var2090 var3524))) ; Cond: $r2 == r1 
(define-const var111 var1392 (arrayFormulas/-1100774885 var3524)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var3560 Iterator (var1392_iterator/-912451715 var111)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2620 Bool (Iterator_hasNext/-1669924200 var3560)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var2620 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3568 var2090 (Iterator_next/-1124697587 var3560)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3560!1 Iterator)
(define-const var3641 var3093 (cast-from-var2090-to-var3093 var3568)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3191 Bool (isInRange/945559528 var3641 var1676)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3191 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2620!1 Bool (Iterator_hasNext/-1669924200 var3560!1)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var2620!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3568!1 var2090 (Iterator_next/-1124697587 var3560!1)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3560!2 Iterator)
(define-const var3641!1 var3093 (cast-from-var2090-to-var3093 var3568!1)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3191!1 Bool (isInRange/945559528 var3641!1 var1676)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3191!1 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2620!2 Bool (Iterator_hasNext/-1669924200 var3560!2)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var2620!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3568!2 var2090 (Iterator_next/-1124697587 var3560!2)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3560!3 Iterator)
(define-const var3641!2 var3093 (cast-from-var2090-to-var3093 var3568!2)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var3191!2 Bool (isInRange/945559528 var3641!2 var1676)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3191!2 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2620!3 Bool (Iterator_hasNext/-1669924200 var3560!3)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (= (ite var2620!3 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2584 var2007 var2007-init) ; Statement: $r4 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/1524963672 var2584 var1676)) ; Statement: specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0) 

(declare-const var2584!1 var2007)
(declare-const var1676!1 var1672)
(assert true)
(define-const var2385 String (formatAsString/583597915 var2584!1)) ; Statement: r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(define-const var827 var3497 var3497-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2416 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2416)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2416!1 String)
(assert (= var2416!1 ""))
(assert true)
(define-const var237 String (append/672562846 var2416!1 "Cell ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ") 
(declare-const var2416!2 String)
(assert (= var2416!2 (str.++ var2416!1 "Cell ")))
(assert true)
(define-const var3790 String (append/672562846 var237 var2385)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var237!1 String)
(assert (= var237!1 (str.++ var237 var2385)))
(assert true)
(define-const var1884 String (append/672562846 var3790 " is not part of an array formula.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.") 
(declare-const var3790!1 String)
(assert (= var3790!1 (str.++ var3790 " is not part of an array formula.")))
(assert true)
(define-const var642 String (toString/-2075883882 var1884)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var827 var642)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var827!1 var3497)
(declare-const var642!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1672_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var1035-to-var2090=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var2152-to-var2090=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var1392_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2090-to-var3093=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var2007-init=([], org.apache.poi.ss.util.CellReference), <init>/1524963672=([org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Cell], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), var3497-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2152=org.apache.poi.xssf.usermodel.XSSFSheet, var3524=r1, var1672=org.apache.poi.ss.usermodel.Cell, var1676=r0, var1035=org.apache.poi.ss.usermodel.Sheet, var976=$r2, var2090=java.lang.Object, var1392=java.util.List, var111=$r3, var3560=r19, var2620=$z0, var3568=$r11, var3093=org.apache.poi.ss.util.CellRangeAddress, var3641=r12, var3191=$z1, var2007=org.apache.poi.ss.util.CellReference, var2584=$r4, var2385=r20, var3497=java.lang.IllegalArgumentException, var827=$r5, var2416=$r6, var237=$r7, var3790=$r8, var1884=$r9, var642=$r10}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var2152, r1=var3524, org.apache.poi.ss.usermodel.Cell=var1672, r0=var1676, org.apache.poi.ss.usermodel.Sheet=var1035, $r2=var976, java.lang.Object=var2090, java.util.List=var1392, $r3=var111, r19=var3560, $z0=var2620, $r11=var3568, org.apache.poi.ss.util.CellRangeAddress=var3093, r12=var3641, $z1=var3191, org.apache.poi.ss.util.CellReference=var2007, $r4=var2584, r20=var2385, java.lang.IllegalArgumentException=var3497, $r5=var827, $r6=var2416, $r7=var237, $r8=var3790, $r9=var1884, $r10=var642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r4 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0);	r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 13