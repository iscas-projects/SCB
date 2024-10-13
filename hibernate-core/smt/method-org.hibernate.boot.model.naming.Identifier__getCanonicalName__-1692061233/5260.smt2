(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3908 0)
(declare-sort var2105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var3908) Bool)
(declare-fun text/-2065986092 (var3908) String)
(declare-fun toLowerCase/1946809429 (String var2105) String)
(declare-const null-var3908 var3908)
(declare-const var2105-ENGLISH var2105)
(declare-const var3918 var3908) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3918 null-var3908)))
(define-const var2059 Bool (isQuoted/-2065986092 var3918)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text> 
(assert (= (ite var2059 1 0) 0)) ; Cond: $z0 == 0 
(define-const var633 String (text/-2065986092 var3918)) ; Statement: $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text> 
(define-const var3026 var2105 var2105-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var269 String (toLowerCase/1946809429 var633 var3026)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), text/-2065986092=([org.hibernate.boot.model.naming.Identifier], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3908=org.hibernate.boot.model.naming.Identifier, var3918=r0, var2059=$z0, var633=$r2, var2105=java.util.Locale, var3026=$r1, var269=$r3}
; {org.hibernate.boot.model.naming.Identifier=var3908, r0=var3918, $z0=var2059, $r2=var633, java.util.Locale=var2105, $r1=var3026, $r3=var269}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text>;	$r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 3