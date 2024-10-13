(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1703 0)
(declare-sort var473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1703 var1703)
(declare-const null-String String)
(declare-const var503 var1703) ; Statement: r4 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var503 null-var1703)))
(declare-const var3171 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3171 null-String)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var3171 null-String))) ; Cond: r0 != null 
(define-const var554 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var554)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var554!1 String)
(assert (= var554!1 ""))
(assert true)
(define-const var108 String (append/672562846 var554!1 var3171)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var554!2 String)
(assert (= var554!2 (str.++ var554!1 var3171)))
(assert true)
(define-const var742 String (append/672562846 var108 "::")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var108!1 String)
(assert (= var108!1 (str.++ var108 "::")))
(assert true)
(define-const var158 String (toString/-2075883882 var742)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1703=org.javacc.parser.CodeGenerator, var503=r4, var3171=r0, var473=null_type, var554=$r1, var108=$r2, var742=$r3, var158=$r5}
; {org.javacc.parser.CodeGenerator=var1703, r4=var503, r0=var3171, null_type=var473, $r1=var554, $r2=var108, $r3=var742, $r5=var158}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.javacc.parser.CodeGenerator;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3