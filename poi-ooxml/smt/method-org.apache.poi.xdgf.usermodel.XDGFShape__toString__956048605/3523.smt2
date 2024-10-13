(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2837 0)
(declare-sort var579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _parentPage/-2042998275 (var2837) var579)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getID/-1874425303 (var2837) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2837 var2837)
(declare-const var3968 var2837) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.XDGFShape 
(assert (not (= var3968 null-var2837)))
(define-const var2390 var579 (_parentPage/-2042998275 var3968)) ; Statement: $r1 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFBaseContents _parentPage> 
(define-const var3895 Bool false) ; Statement: $z0 = $r1 instanceof org.apache.poi.xdgf.usermodel.XDGFMasterContents 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3895 1 0) 0)) ; Cond: $z0 == 0 
(define-const var876 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var876)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var876!1 String)
(assert (= var876!1 ""))
(assert true)
(define-const var2688 String (append/672562846 var876!1 "<Shape ID=\u0022")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<Shape ID=\"") 
(declare-const var876!2 String)
(assert (= var876!2 (str.++ var876!1 "<Shape ID=\u0022")))
(assert true)
(define-const var465 Int (getID/-1874425303 var3968)) ; Statement: $l0 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFShape: long getID()>() 
(assert true)
(define-const var2942 String (append/-901862667 var2688 var465)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2688!1 String)
(assert (str.prefixof var2688 var2688!1))
(assert true)
(define-const var2499 String (append/672562846 var2942 "\u0022>")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var2942!1 String)
(assert (= var2942!1 (str.++ var2942 "\u0022>")))
(assert true)
(define-const var2704 String (toString/-2075883882 var2499)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {_parentPage/-2042998275=([org.apache.poi.xdgf.usermodel.XDGFShape], org.apache.poi.xdgf.usermodel.XDGFBaseContents), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getID/-1874425303=([org.apache.poi.xdgf.usermodel.XDGFShape], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2837=org.apache.poi.xdgf.usermodel.XDGFShape, var3968=r0, var579=org.apache.poi.xdgf.usermodel.XDGFBaseContents, var2390=$r1, var3895=$z0, var876=$r2, var2688=$r3, var465=$l0, var2942=$r4, var2499=$r5, var2704=$r6}
; {org.apache.poi.xdgf.usermodel.XDGFShape=var2837, r0=var3968, org.apache.poi.xdgf.usermodel.XDGFBaseContents=var579, $r1=var2390, $z0=var3895, $r2=var876, $r3=var2688, $l0=var465, $r4=var2942, $r5=var2499, $r6=var2704}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.XDGFShape;	$r1 = r0.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFBaseContents _parentPage>;	$z0 = $r1 instanceof org.apache.poi.xdgf.usermodel.XDGFMasterContents;	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<Shape ID=\"");	$l0 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFShape: long getID()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2