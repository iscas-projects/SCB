(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var372 0)
(declare-sort var3720 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun variables/-182666979 (var372) var563)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var372 var372)
(declare-const null-String String)
(declare-const null-var563 var563)
(declare-const var3728 var372) ; Statement: r0 := @this: org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler 
(assert (not (= var3728 null-var372)))
(declare-const var1240 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1240 null-String)))
(define-const var2985 var563 (variables/-182666979 var3728)) ; Statement: $r1 = r0.<org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler: java.util.Properties variables> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2985 null-var563)) ; Cond: $r1 == null 
(define-const var898 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var898)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var898!1 String)
(assert (= var898!1 ""))
(assert true)
(define-const var1686 String (append/672562846 var898!1 "${")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${") 
(declare-const var898!2 String)
(assert (= var898!2 (str.++ var898!1 "${")))
(assert true)
(define-const var1859 String (append/672562846 var1686 var1240)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1686!1 String)
(assert (= var1686!1 (str.++ var1686 var1240)))
(assert true)
(define-const var3933 String (append/672562846 var1859 "}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1859!1 String)
(assert (= var1859!1 (str.++ var1859 "}")))
(assert true)
(define-const var260 String (toString/-2075883882 var3933)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {variables/-182666979=([org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler], java.util.Properties), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var372=org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler, var3728=r0, var1240=r3, var3720=null_type, var563=java.util.Properties, var2985=$r1, var898=$r2, var1686=$r4, var1859=$r5, var3933=$r6, var260=$r7}
; {org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler=var372, r0=var3728, r3=var1240, null_type=var3720, java.util.Properties=var563, $r1=var2985, $r2=var898, $r4=var1686, $r5=var1859, $r6=var3933, $r7=var260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.ibatis.parsing.PropertyParser$VariableTokenHandler: java.util.Properties variables>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("${");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2