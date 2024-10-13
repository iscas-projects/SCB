(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2348 0)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2348 var2348)
(declare-const null-String String)
(declare-const var3984 var2348) ; Statement: r5 := @this: org.hibernate.dialect.CUBRIDDialect 
(assert (not (= var3984 null-var2348)))
(declare-const var2287 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2287 null-String)))
(define-const var3943 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3943)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3943!1 String)
(assert (= var3943!1 ""))
(assert true)
(define-const var2713 String (append/672562846 var3943!1 "create serial ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create serial ") 
(declare-const var3943!2 String)
(assert (= var3943!2 (str.++ var3943!1 "create serial ")))
(assert true)
(define-const var2625 String (append/672562846 var2713 var2287)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2713!1 String)
(assert (= var2713!1 (str.++ var2713 var2287)))
(assert true)
(define-const var3158 String (toString/-2075883882 var2625)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2348=org.hibernate.dialect.CUBRIDDialect, var3984=r5, var2287=r1, var961=null_type, var3943=$r0, var2713=$r2, var2625=$r3, var3158=$r4}
; {org.hibernate.dialect.CUBRIDDialect=var2348, r5=var3984, r1=var2287, null_type=var961, $r0=var3943, $r2=var2713, $r3=var2625, $r4=var3158}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.CUBRIDDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create serial ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1