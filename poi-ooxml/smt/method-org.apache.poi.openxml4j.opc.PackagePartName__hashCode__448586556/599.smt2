(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var756 0)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/32427362 (var756) String)
(declare-fun toLowerCase/1946809429 (String var745) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var756 var756)
(declare-const var745-ROOT var745)
(declare-const var3933 var756) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var3933 null-var756)))
(assert true)
(define-const var1279 String (getName/32427362 var3933)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(define-const var85 var745 var745-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var492 String (toLowerCase/1946809429 var1279 var85)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var782 Int (hashCode/-467973558 var492)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var756=org.apache.poi.openxml4j.opc.PackagePartName, var3933=r0, var1279=$r2, var745=java.util.Locale, var85=$r1, var492=$r3, var782=$i0}
; {org.apache.poi.openxml4j.opc.PackagePartName=var756, r0=var3933, $r2=var1279, java.util.Locale=var745, $r1=var85, $r3=var492, $i0=var782}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.PackagePartName;	$r2 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	return $i0
;block_num 1