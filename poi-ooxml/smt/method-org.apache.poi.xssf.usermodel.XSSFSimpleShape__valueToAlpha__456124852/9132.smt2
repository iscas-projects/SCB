(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun reverse/1133943941 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1893 var1893)
(declare-const null-Int Int)
(declare-const var2106 var1893) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var2106 null-var1893)))
(declare-const var2024 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2024 null-Int)))
(define-const var2996 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2996)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2996!1 String)
(assert (= var2996!1 ""))
(assert true) ; Non Conditional
 ; Statement: if i5 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>() 
(assert (<= var2024 0)) ; Cond: i5 <= 0 
(assert true)
;(assert (reverse/1133943941 var2996!1)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>() 

(declare-const var2996!2 String)
(assert true)
(define-const var2309 String (toString/-2075883882 var2996!2)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), reverse/1133943941=([java.lang.StringBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1893=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var2106=r2, var2024=i5, var2996=$r0, var2309=$r1}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var1893, r2=var2106, i5=var2024, $r0=var2996, $r1=var2309}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder reverse()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder reverse()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	i5 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if i5 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 3