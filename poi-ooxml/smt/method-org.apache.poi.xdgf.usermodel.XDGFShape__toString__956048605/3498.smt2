(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2250 0)
(declare-sort var2543 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _parentPage/-2042998275 (var2250) var2543)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2043) String)
(declare-fun cast-from-var2543-to-var2043 (var2543) var2043)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getID/-1874425303 (var2250) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2250 var2250)
(declare-const var2311 var2250) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.XDGFShape 
(assert (not (= var2311 null-var2250)))
(define-const var3848 var2543 (_parentPage/-2042998275 var2311)) ; Statement: $r1 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFBaseContents _parentPage> 
(define-const var2575 Bool false) ; Statement: $z0 = $r1 instanceof org.apache.poi.xdgf.usermodel.XDGFMasterContents 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2575 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var487 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var487)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var487!1 String)
(assert (= var487!1 ""))
(define-const var3702 var2543 (_parentPage/-2042998275 var2311)) ; Statement: $r8 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFBaseContents _parentPage> 
(assert true)
(define-const var3200 String (append/-1031950772 var487!1 (cast-from-var2543-to-var2043 var3702))) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var487!2 String)
(assert (str.prefixof var487!1 var487!2))
(assert true)
(define-const var1937 String (append/672562846 var3200 ": <Shape ID=\u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": <Shape ID=\"") 
(declare-const var3200!1 String)
(assert (= var3200!1 (str.++ var3200 ": <Shape ID=\u0022")))
(assert true)
(define-const var499 Int (getID/-1874425303 var2311)) ; Statement: $l1 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFShape: long getID()>() 
(assert true)
(define-const var1968 String (append/-901862667 var1937 var499)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var1937!1 String)
(assert (str.prefixof var1937 var1937!1))
(assert true)
(define-const var733 String (append/672562846 var1968 "\u0022>")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var1968!1 String)
(assert (= var1968!1 (str.++ var1968 "\u0022>")))
(assert true)
(define-const var370 String (toString/-2075883882 var733)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {_parentPage/-2042998275=([org.apache.poi.xdgf.usermodel.XDGFShape], org.apache.poi.xdgf.usermodel.XDGFBaseContents), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2543-to-var2043=([org.apache.poi.xdgf.usermodel.XDGFBaseContents], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getID/-1874425303=([org.apache.poi.xdgf.usermodel.XDGFShape], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2250=org.apache.poi.xdgf.usermodel.XDGFShape, var2311=r0, var2543=org.apache.poi.xdgf.usermodel.XDGFBaseContents, var3848=$r1, var2575=$z0, var487=$r7, var3702=$r8, var2043=java.lang.Object, var3200=$r9, var1937=$r10, var499=$l1, var1968=$r11, var733=$r12, var370=$r13}
; {org.apache.poi.xdgf.usermodel.XDGFShape=var2250, r0=var2311, org.apache.poi.xdgf.usermodel.XDGFBaseContents=var2543, $r1=var3848, $z0=var2575, $r7=var487, $r8=var3702, java.lang.Object=var2043, $r9=var3200, $r10=var1937, $l1=var499, $r11=var1968, $r12=var733, $r13=var370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.XDGFShape;	$r1 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFBaseContents _parentPage>;	$z0 = $r1 instanceof org.apache.poi.xdgf.usermodel.XDGFMasterContents;	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFBaseContents _parentPage>;	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": <Shape ID=\"");	$l1 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFShape: long getID()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2