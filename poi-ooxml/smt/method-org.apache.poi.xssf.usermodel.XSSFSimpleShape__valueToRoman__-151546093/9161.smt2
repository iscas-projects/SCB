(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var417 var417)
(declare-const null-Int Int)
(declare-const var706 var417) ; Statement: r7 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var706 null-var417)))
(declare-const var2387 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var2387 null-Int)))
(define-const var2672 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2672)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2672!1 String)
(assert (= var2672!1 ""))
(define-const var3224 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 <= 0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var2387 0)) ; Cond: i3 <= 0 
(assert true)
(define-const var3682 String (toString/-2075883882 var2672!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var417=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var706=r7, var2387=i3, var2672=$r0, var3224=i4, var3682=$r1}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var417, r7=var706, i3=var2387, $r0=var2672, i4=var3224, $r1=var3682}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	i3 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i4 = 0;	if i3 <= 0 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 3