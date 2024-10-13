(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-__Array__Int__String__ (Array Int String))
(define-const var630 String "org.apache.commons.logging.impl.") ; Statement: $r0 = "org.apache.commons.logging.impl." 
(assert true)
(define-const var1738 Int (length/-134980193 var630)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var2262 Int var1738) ; Statement: <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> = $i0 
(define-const var3506 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[0] 
(define-const var3516 (Array Int String) var3506) ; Statement: <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] EMPTY_STRING_ARRAY> = $r1 
(define-const var1978 (Array Int String) arr-String-init) ; Statement: $r2 = newarray (java.lang.String)[2] 
(declare-const var1978!1 (Array Int String))
(assert (not (= var1978!1 null-__Array__Int__String__)))
(assert (= (select var1978!1 0) "org.apache.commons.logging.impl.Jdk14Logger")) ; Statement: $r2[0] = "org.apache.commons.logging.impl.Jdk14Logger" 
(declare-const var1978!2 (Array Int String))
(assert (not (= var1978!2 null-__Array__Int__String__)))
(assert (= (select var1978!2 1) "org.apache.commons.logging.impl.SimpleLog")) ; Statement: $r2[1] = "org.apache.commons.logging.impl.SimpleLog" 
(define-const var2626 (Array Int String) var1978!2) ; Statement: <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] classesToDiscover> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var630=$r0, var1738=$i0, var2262=<org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>, var3506=$r1, var3516=<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] EMPTY_STRING_ARRAY>, var1978=$r2, var2626=<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] classesToDiscover>}
; {$r0=var630, $i0=var1738, <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>=var2262, $r1=var3506, <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] EMPTY_STRING_ARRAY>=var3516, $r2=var1978, <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] classesToDiscover>=var2626}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "org.apache.commons.logging.impl.";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> = $i0;	$r1 = newarray (java.lang.String)[0];	<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] EMPTY_STRING_ARRAY> = $r1;	$r2 = newarray (java.lang.String)[2];	$r2[0] = "org.apache.commons.logging.impl.Jdk14Logger";	$r2[1] = "org.apache.commons.logging.impl.SimpleLog";	<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String[] classesToDiscover> = $r2;	return
;block_num 1