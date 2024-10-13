(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2455 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3654_isNotBlank/-1148504278 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1056 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1056 null-String)))
(define-const var2705 Bool (var3654_isNotBlank/-1148504278 var1056)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = "" 
(assert (not (= (ite var2705 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3489 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3489)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3489!1 String)
(assert (= var3489!1 ""))
(assert true)
(define-const var2003 String (append/672562846 var3489!1 ": ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3489!2 String)
(assert (= var3489!2 (str.++ var3489!1 ": ")))
(assert true)
(define-const var1621 String (append/672562846 var2003 var1056)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2003!1 String)
(assert (= var2003!1 (str.++ var2003 var1056)))
(assert true)
(define-const var3945 String (toString/-2075883882 var1621)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3654_isNotBlank/-1148504278=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1056=r0, var2455=null_type, var3654=org.junit.platform.commons.util.StringUtils, var2705=$z0, var3489=$r1, var2003=$r2, var1621=$r3, var3945=$r4}
; {r0=var1056, null_type=var2455, org.junit.platform.commons.util.StringUtils=var3654, $z0=var2705, $r1=var3489, $r2=var2003, $r3=var1621, $r4=var3945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r4];	return $r4
;block_num 3