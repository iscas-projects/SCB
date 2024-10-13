(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1390 0)
(declare-sort var3399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var1390) Bool)
(declare-fun text/-2065986092 (var1390) String)
(declare-fun toLowerCase/1946809429 (String var3399) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1390 var1390)
(declare-const var3399-ENGLISH var3399)
(declare-const var530 var1390) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var530 null-var1390)))
(define-const var2570 Bool (isQuoted/-2065986092 var530)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text> 
(assert (= (ite var2570 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3573 String (text/-2065986092 var530)) ; Statement: $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text> 
(define-const var603 var3399 var3399-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3595 String (toLowerCase/1946809429 var3573 var603)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1739 Int (hashCode/-467973558 var3595)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), text/-2065986092=([org.hibernate.boot.model.naming.Identifier], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1390=org.hibernate.boot.model.naming.Identifier, var530=r0, var2570=$z0, var3573=$r2, var3399=java.util.Locale, var603=$r1, var3595=$r3, var1739=$i0}
; {org.hibernate.boot.model.naming.Identifier=var1390, r0=var530, $z0=var2570, $r2=var3573, java.util.Locale=var3399, $r1=var603, $r3=var3595, $i0=var1739}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text>;	$r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	return $i0
;block_num 3