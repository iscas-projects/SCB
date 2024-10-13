(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var2770 0)
(declare-sort var1982 0)
(declare-sort var354 0)
(declare-sort var880 0)
(declare-sort var2749 0)
(declare-sort var2351 0)
(declare-sort var3127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2770_getSheet/292787143 (var2770) var1982)
(declare-fun cast-from-var1982-to-var354 (var1982) var354)
(declare-fun cast-from-var898-to-var354 (var898) var354)
(declare-fun arrayFormulas/-1100774885 (var898) var880)
(declare-fun var880_iterator/-912451715 (var880) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var354)
(declare-fun cast-from-var354-to-var2749 (var354) var2749)
(declare-fun isInRange/945559528 (var2749 var2770) Bool)
(declare-fun var2351-init () var2351)
(declare-fun <init>/1524963672 (var2351 var2770) void)
(declare-fun formatAsString/583597915 (var2351) String)
(declare-fun var3127-init () var3127)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3127 String) void)
(declare-const null-var898 var898)
(declare-const null-var2770 var2770)
(declare-const var720 var898) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var720 null-var898)))
(declare-const var3776 var2770) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var3776 null-var2770)))
(define-const var1565 var1982 (var2770_getSheet/292787143 var3776)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
 ; Statement: if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(assert (= (cast-from-var1982-to-var354 var1565) (cast-from-var898-to-var354 var720))) ; Cond: $r2 == r1 
(define-const var3405 var880 (arrayFormulas/-1100774885 var720)) ; Statement: $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas> 
(define-const var2033 Iterator (var880_iterator/-912451715 var3405)) ; Statement: r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1901 Bool (Iterator_hasNext/-1669924200 var2033)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var1901 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2860 var354 (Iterator_next/-1124697587 var2033)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2033!1 Iterator)
(define-const var3078 var2749 (cast-from-var354-to-var2749 var2860)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var2896 Bool (isInRange/945559528 var3078 var3776)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2896 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1901!1 Bool (Iterator_hasNext/-1669924200 var2033!1)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (not (= (ite var1901!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2860!1 var354 (Iterator_next/-1124697587 var2033!1)) ; Statement: $r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2033!2 Iterator)
(define-const var3078!1 var2749 (cast-from-var354-to-var2749 var2860!1)) ; Statement: r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11 
(assert true)
(define-const var2896!1 Bool (isInRange/945559528 var3078!1 var3776)) ; Statement: $z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2896!1 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1901!2 Bool (Iterator_hasNext/-1669924200 var2033!2)) ; Statement: $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference 
(assert (= (ite var1901!2 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3684 var2351 var2351-init) ; Statement: $r4 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/1524963672 var3684 var3776)) ; Statement: specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0) 

(declare-const var3684!1 var2351)
(declare-const var3776!1 var2770)
(assert true)
(define-const var2194 String (formatAsString/583597915 var3684!1)) ; Statement: r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(define-const var2474 var3127 var3127-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3970 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3970)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3970!1 String)
(assert (= var3970!1 ""))
(assert true)
(define-const var1222 String (append/672562846 var3970!1 "Cell ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ") 
(declare-const var3970!2 String)
(assert (= var3970!2 (str.++ var3970!1 "Cell ")))
(assert true)
(define-const var2941 String (append/672562846 var1222 var2194)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var1222!1 String)
(assert (= var1222!1 (str.++ var1222 var2194)))
(assert true)
(define-const var117 String (append/672562846 var2941 " is not part of an array formula.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.") 
(declare-const var2941!1 String)
(assert (= var2941!1 (str.++ var2941 " is not part of an array formula.")))
(assert true)
(define-const var3749 String (toString/-2075883882 var117)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2474 var3749)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2474!1 var3127)
(declare-const var3749!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2770_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), cast-from-var1982-to-var354=([org.apache.poi.ss.usermodel.Sheet], java.lang.Object), cast-from-var898-to-var354=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.Object), arrayFormulas/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], java.util.List), var880_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var354-to-var2749=([java.lang.Object], org.apache.poi.ss.util.CellRangeAddress), isInRange/945559528=([org.apache.poi.ss.util.CellRangeAddress, org.apache.poi.ss.usermodel.Cell], boolean), var2351-init=([], org.apache.poi.ss.util.CellReference), <init>/1524963672=([org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Cell], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), var3127-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var898=org.apache.poi.xssf.usermodel.XSSFSheet, var720=r1, var2770=org.apache.poi.ss.usermodel.Cell, var3776=r0, var1982=org.apache.poi.ss.usermodel.Sheet, var1565=$r2, var354=java.lang.Object, var880=java.util.List, var3405=$r3, var2033=r19, var1901=$z0, var2860=$r11, var2749=org.apache.poi.ss.util.CellRangeAddress, var3078=r12, var2896=$z1, var2351=org.apache.poi.ss.util.CellReference, var3684=$r4, var2194=r20, var3127=java.lang.IllegalArgumentException, var2474=$r5, var3970=$r6, var1222=$r7, var2941=$r8, var117=$r9, var3749=$r10}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var898, r1=var720, org.apache.poi.ss.usermodel.Cell=var2770, r0=var3776, org.apache.poi.ss.usermodel.Sheet=var1982, $r2=var1565, java.lang.Object=var354, java.util.List=var880, $r3=var3405, r19=var2033, $z0=var1901, $r11=var2860, org.apache.poi.ss.util.CellRangeAddress=var2749, r12=var3078, $z1=var2896, org.apache.poi.ss.util.CellReference=var2351, $r4=var3684, r20=var2194, java.lang.IllegalArgumentException=var3127, $r5=var2474, $r6=var3970, $r7=var1222, $r8=var2941, $r9=var117, $r10=var3749}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r2 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	if $r2 == r1 goto $r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	$r3 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: java.util.List arrayFormulas>;	r19 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r11 = interfaceinvoke r19.<java.util.Iterator: java.lang.Object next()>();	r12 = (org.apache.poi.ss.util.CellRangeAddress) $r11;	$z1 = virtualinvoke r12.<org.apache.poi.ss.util.CellRangeAddress: boolean isInRange(org.apache.poi.ss.usermodel.Cell)>(r0);	if $z1 == 0 goto (branch);	goto [?= $z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = new org.apache.poi.ss.util.CellReference;	$r4 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r4.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>(r0);	r20 = virtualinvoke $r4.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cell ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not part of an array formula.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 10