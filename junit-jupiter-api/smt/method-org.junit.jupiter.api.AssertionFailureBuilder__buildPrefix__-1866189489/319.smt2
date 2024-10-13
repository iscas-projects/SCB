(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1827 0)
(declare-sort var1673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1673_isNotBlank/-1148504278 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1395 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1395 null-String)))
(define-const var1168 Bool (var1673_isNotBlank/-1148504278 var1395)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = "" 
(assert (not (= (ite var1168 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1303 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1303)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1303!1 String)
(assert (= var1303!1 ""))
(assert true)
(define-const var1224 String (append/672562846 var1303!1 var1395)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1303!2 String)
(assert (= var1303!2 (str.++ var1303!1 var1395)))
(assert true)
(define-const var1810 String (append/672562846 var1224 " ==> ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ==> ") 
(declare-const var1224!1 String)
(assert (= var1224!1 (str.++ var1224 " ==> ")))
(assert true)
(define-const var1596 String (toString/-2075883882 var1810)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1673_isNotBlank/-1148504278=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1395=r0, var1827=null_type, var1673=org.junit.platform.commons.util.StringUtils, var1168=$z0, var1303=$r1, var1224=$r2, var1810=$r3, var1596=$r4}
; {r0=var1395, null_type=var1827, org.junit.platform.commons.util.StringUtils=var1673, $z0=var1168, $r1=var1303, $r2=var1224, $r3=var1810, $r4=var1596}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ==> ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r4];	return $r4
;block_num 3