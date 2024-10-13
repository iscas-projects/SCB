(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2673 0)
(declare-sort var2363 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1259444625 (var2673) var2585)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2585_setRefersTo/-716887093 (var2585 String) void)
(declare-const null-var2673 var2673)
(declare-const null-String String)
(declare-const var2520 var2673) ; Statement: r0 := @this: org.apache.poi.xssf.model.ExternalLinksTable$ExternalName 
(assert (not (= var2520 null-var2673)))
(declare-const var2562 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2562 null-String)))
(define-const var587 var2585 (name/-1259444625 var2520)) ; Statement: $r2 = r0.<org.apache.poi.xssf.model.ExternalLinksTable$ExternalName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName name> 
(define-const var144 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var144)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var144!1 String)
(assert (= var144!1 ""))
(assert true)
(define-const var3734 String (append/-1166366385 var144!1 61)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var144!2 String)
(assert (str.prefixof var144!1 var144!2))
(assert true)
(define-const var2560 String (append/672562846 var3734 var2562)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3734!1 String)
(assert (= var3734!1 (str.++ var3734 var2562)))
(assert true)
(define-const var199 String (toString/-2075883882 var2560)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2585_setRefersTo/-716887093 var587 var199)) ; Statement: interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName: void setRefersTo(java.lang.String)>($r6) 

(declare-const var587!1 var2585)
(declare-const var199!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1259444625=([org.apache.poi.xssf.model.ExternalLinksTable$ExternalName], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2585_setRefersTo/-716887093=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName, java.lang.String], void)}
; {var2673=org.apache.poi.xssf.model.ExternalLinksTable$ExternalName, var2520=r0, var2562=r3, var2363=null_type, var2585=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName, var587=$r2, var144=$r1, var3734=$r4, var2560=$r5, var199=$r6}
; {org.apache.poi.xssf.model.ExternalLinksTable$ExternalName=var2673, r0=var2520, r3=var2562, null_type=var2363, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName=var2585, $r2=var587, $r1=var144, $r4=var3734, $r5=var2560, $r6=var199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.model.ExternalLinksTable$ExternalName;	r3 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.poi.xssf.model.ExternalLinksTable$ExternalName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName name>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName: void setRefersTo(java.lang.String)>($r6);	return
;block_num 1