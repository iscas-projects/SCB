(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2748 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsPooledSequences/1428966174 (var2748) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2748 var2748)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3709 var2748) ; Statement: r0 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var3709 null-var2748)))
(declare-const var2389 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2389 null-String)))
(declare-const var3961 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3961 null-Int)))
(declare-const var1730 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1730 null-Int)))
(assert true)
(define-const var2594 Bool (supportsPooledSequences/1428966174 var3709)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.HSQLDialect: boolean supportsPooledSequences()>() 
 ; Statement: if $z0 == 0 goto $r19 = new org.hibernate.MappingException 
(assert (not (= (ite var2594 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3084 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3084)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3084!1 String)
(assert (= var3084!1 ""))
(assert true)
(define-const var2635 String (append/672562846 var3084!1 "create sequence ")) ; Statement: $r10 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ") 
(declare-const var3084!2 String)
(assert (= var3084!2 (str.++ var3084!1 "create sequence ")))
(assert true)
(define-const var3179 String (append/672562846 var2635 var2389)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var2635!1 String)
(assert (= var2635!1 (str.++ var2635 var2389)))
(assert true)
(define-const var2479 String (append/672562846 var3179 " start with ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ") 
(declare-const var3179!1 String)
(assert (= var3179!1 (str.++ var3179 " start with ")))
(assert true)
(define-const var3317 String (append/-1001720160 var2479 var3961)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2479!1 String)
(assert (str.prefixof var2479 var2479!1))
(assert true)
(define-const var3349 String (append/672562846 var3317 " increment by ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ") 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 " increment by ")))
(assert true)
(define-const var2643 String (append/-1001720160 var3349 var1730)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3349!1 String)
(assert (str.prefixof var3349 var3349!1))
(assert true)
(define-const var587 String (toString/-2075883882 var2643)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsPooledSequences/1428966174=([org.hibernate.dialect.HSQLDialect], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2748=org.hibernate.dialect.HSQLDialect, var3709=r0, var2389=r9, var1545=null_type, var3961=i0, var1730=i1, var2594=$z0, var3084=$r17, var2635=$r10, var3179=$r11, var2479=$r12, var3317=$r13, var3349=$r14, var2643=$r15, var587=$r16}
; {org.hibernate.dialect.HSQLDialect=var2748, r0=var3709, r9=var2389, null_type=var1545, i0=var3961, i1=var1730, $z0=var2594, $r17=var3084, $r10=var2635, $r11=var3179, $r12=var2479, $r13=var3317, $r14=var3349, $r15=var2643, $r16=var587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.HSQLDialect;	r9 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$z0 = virtualinvoke r0.<org.hibernate.dialect.HSQLDialect: boolean supportsPooledSequences()>();	if $z0 == 0 goto $r19 = new org.hibernate.MappingException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create sequence ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2