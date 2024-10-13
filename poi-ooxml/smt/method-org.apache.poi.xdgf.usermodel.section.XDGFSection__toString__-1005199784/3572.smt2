(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var826 0)
(declare-sort var3435 0)
(declare-sort var2467 0)
(declare-sort var1098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _section/616483256 (var826) var3435)
(declare-fun var3435_getN/136693350 (var3435) String)
(declare-fun _containingSheet/616483256 (var826) var2467)
(declare-fun append/-1031950772 (String var1098) String)
(declare-fun cast-from-var2467-to-var1098 (var2467) var1098)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var826 var826)
(declare-const var1105 var826) ; Statement: r1 := @this: org.apache.poi.xdgf.usermodel.section.XDGFSection 
(assert (not (= var1105 null-var826)))
(define-const var641 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var641)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var641!1 String)
(assert (= var641!1 ""))
(assert true)
(define-const var2448 String (append/672562846 var641!1 "<Section type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<Section type=") 
(declare-const var641!2 String)
(assert (= var641!2 (str.++ var641!1 "<Section type=")))
(define-const var3959 var3435 (_section/616483256 var1105)) ; Statement: $r2 = r1.<org.apache.poi.xdgf.usermodel.section.XDGFSection: com.microsoft.schemas.office.visio.x2012.main.SectionType _section> 
(define-const var3513 String (var3435_getN/136693350 var3959)) ; Statement: $r3 = interfaceinvoke $r2.<com.microsoft.schemas.office.visio.x2012.main.SectionType: java.lang.String getN()>() 
(assert true)
(define-const var572 String (append/672562846 var2448 var3513)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2448!1 String)
(assert (= var2448!1 (str.++ var2448 var3513)))
(assert true)
(define-const var3648 String (append/672562846 var572 " from ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var572!1 String)
(assert (= var572!1 (str.++ var572 " from ")))
(define-const var108 var2467 (_containingSheet/616483256 var1105)) ; Statement: $r6 = r1.<org.apache.poi.xdgf.usermodel.section.XDGFSection: org.apache.poi.xdgf.usermodel.XDGFSheet _containingSheet> 
(assert true)
(define-const var582 String (append/-1031950772 var3648 (cast-from-var2467-to-var1098 var108))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3648!1 String)
(assert (str.prefixof var3648 var3648!1))
(assert true)
(define-const var1798 String (append/672562846 var582 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var582!1 String)
(assert (= var582!1 (str.++ var582 ">")))
(assert true)
(define-const var3829 String (toString/-2075883882 var1798)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), _section/616483256=([org.apache.poi.xdgf.usermodel.section.XDGFSection], com.microsoft.schemas.office.visio.x2012.main.SectionType), var3435_getN/136693350=([com.microsoft.schemas.office.visio.x2012.main.SectionType], java.lang.String), _containingSheet/616483256=([org.apache.poi.xdgf.usermodel.section.XDGFSection], org.apache.poi.xdgf.usermodel.XDGFSheet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2467-to-var1098=([org.apache.poi.xdgf.usermodel.XDGFSheet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var826=org.apache.poi.xdgf.usermodel.section.XDGFSection, var1105=r1, var641=$r0, var2448=$r4, var3435=com.microsoft.schemas.office.visio.x2012.main.SectionType, var3959=$r2, var3513=$r3, var572=$r5, var3648=$r7, var2467=org.apache.poi.xdgf.usermodel.XDGFSheet, var108=$r6, var1098=java.lang.Object, var582=$r8, var1798=$r9, var3829=$r10}
; {org.apache.poi.xdgf.usermodel.section.XDGFSection=var826, r1=var1105, $r0=var641, $r4=var2448, com.microsoft.schemas.office.visio.x2012.main.SectionType=var3435, $r2=var3959, $r3=var3513, $r5=var572, $r7=var3648, org.apache.poi.xdgf.usermodel.XDGFSheet=var2467, $r6=var108, java.lang.Object=var1098, $r8=var582, $r9=var1798, $r10=var3829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xdgf.usermodel.section.XDGFSection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<Section type=");	$r2 = r1.<org.apache.poi.xdgf.usermodel.section.XDGFSection: com.microsoft.schemas.office.visio.x2012.main.SectionType _section>;	$r3 = interfaceinvoke $r2.<com.microsoft.schemas.office.visio.x2012.main.SectionType: java.lang.String getN()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r6 = r1.<org.apache.poi.xdgf.usermodel.section.XDGFSection: org.apache.poi.xdgf.usermodel.XDGFSheet _containingSheet>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1