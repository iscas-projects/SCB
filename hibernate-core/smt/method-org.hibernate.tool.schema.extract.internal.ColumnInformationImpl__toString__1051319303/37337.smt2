(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3207 0)
(declare-sort var3710 0)
(declare-sort var3795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnIdentifier/1848140463 (var3207) var3710)
(declare-fun append/-1031950772 (String var3795) String)
(declare-fun cast-from-var3710-to-var3795 (var3710) var3795)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3207 var3207)
(declare-const var577 var3207) ; Statement: r1 := @this: org.hibernate.tool.schema.extract.internal.ColumnInformationImpl 
(assert (not (= var577 null-var3207)))
(define-const var705 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var705)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var705!1 String)
(assert (= var705!1 ""))
(assert true)
(define-const var546 String (append/672562846 var705!1 "ColumnInformation(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ColumnInformation(") 
(declare-const var705!2 String)
(assert (= var705!2 (str.++ var705!1 "ColumnInformation(")))
(define-const var31 var3710 (columnIdentifier/1848140463 var577)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.extract.internal.ColumnInformationImpl: org.hibernate.boot.model.naming.Identifier columnIdentifier> 
(assert true)
(define-const var298 String (append/-1031950772 var546 (cast-from-var3710-to-var3795 var31))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var546!1 String)
(assert (str.prefixof var546 var546!1))
(assert true)
(define-const var21 String (append/-1166366385 var298 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var298!1 String)
(assert (str.prefixof var298 var298!1))
(assert true)
(define-const var2549 String (toString/-2075883882 var21)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnIdentifier/1848140463=([org.hibernate.tool.schema.extract.internal.ColumnInformationImpl], org.hibernate.boot.model.naming.Identifier), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3710-to-var3795=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3207=org.hibernate.tool.schema.extract.internal.ColumnInformationImpl, var577=r1, var705=$r0, var546=$r3, var3710=org.hibernate.boot.model.naming.Identifier, var31=$r2, var3795=java.lang.Object, var298=$r4, var21=$r5, var2549=$r6}
; {org.hibernate.tool.schema.extract.internal.ColumnInformationImpl=var3207, r1=var577, $r0=var705, $r3=var546, org.hibernate.boot.model.naming.Identifier=var3710, $r2=var31, java.lang.Object=var3795, $r4=var298, $r5=var21, $r6=var2549}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.extract.internal.ColumnInformationImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ColumnInformation(");	$r2 = r1.<org.hibernate.tool.schema.extract.internal.ColumnInformationImpl: org.hibernate.boot.model.naming.Identifier columnIdentifier>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1