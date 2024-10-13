(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1810 0)
(declare-sort var690 0)
(declare-sort var1839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1633728430 (var690) String)
(declare-fun cast-from-var1810-to-var690 (var1810) var690)
(declare-fun toLowerCase/1946809429 (String var1839) String)
(declare-const null-var1810 var1810)
(declare-const var1839-ROOT var1839)
(declare-const var3 var1810) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata 
(assert (not (= var3 null-var1810)))
(assert true)
(define-const var2396 String (name/1633728430 (cast-from-var1810-to-var690 var3))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata: java.lang.String name()>() 
(define-const var774 var1839 var1839-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2008 String (toLowerCase/1946809429 var2396 var774)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1810-to-var690=([org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1810=org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata, var3=r0, var690=java.lang.Enum, var2396=$r2, var1839=java.util.Locale, var774=$r1, var2008=$r3}
; {org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata=var1810, r0=var3, java.lang.Enum=var690, $r2=var2396, java.util.Locale=var1839, $r1=var774, $r3=var2008}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata;	$r2 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.XmlElementMetadata: java.lang.String name()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1