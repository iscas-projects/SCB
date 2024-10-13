(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var669 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsPooledSequences/-1882266044 (var669) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCreateSequenceString/343442967 (var669 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var669 var669)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var464 var669) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var464 null-var669)))
(declare-const var441 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var441 null-String)))
(declare-const var62 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var62 null-Int)))
(declare-const var743 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var743 null-Int)))
(assert true)
(define-const var574 Bool (supportsPooledSequences/-1882266044 var464)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean supportsPooledSequences()>() 
 ; Statement: if $z0 == 0 goto $r19 = new org.hibernate.MappingException 
(assert (not (= (ite var574 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2708 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2708)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2708!1 String)
(assert (= var2708!1 ""))
(assert true)
(define-const var3443 String (getCreateSequenceString/343442967 var464 var441)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r9) 
(assert true)
(define-const var1846 String (append/672562846 var2708!1 var3443)) ; Statement: $r11 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2708!2 String)
(assert (= var2708!2 (str.++ var2708!1 var3443)))
(assert true)
(define-const var1273 String (append/672562846 var1846 " start with ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ") 
(declare-const var1846!1 String)
(assert (= var1846!1 (str.++ var1846 " start with ")))
(assert true)
(define-const var96 String (append/-1001720160 var1273 var62)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1273!1 String)
(assert (str.prefixof var1273 var1273!1))
(assert true)
(define-const var3086 String (append/672562846 var96 " increment by ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ") 
(declare-const var96!1 String)
(assert (= var96!1 (str.++ var96 " increment by ")))
(assert true)
(define-const var3561 String (append/-1001720160 var3086 var743)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3086!1 String)
(assert (str.prefixof var3086 var3086!1))
(assert true)
(define-const var2624 String (toString/-2075883882 var3561)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsPooledSequences/-1882266044=([org.hibernate.dialect.Dialect], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCreateSequenceString/343442967=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var669=org.hibernate.dialect.Dialect, var464=r0, var441=r9, var1760=null_type, var62=i0, var743=i1, var574=$z0, var2708=$r17, var3443=$r10, var1846=$r11, var1273=$r12, var96=$r13, var3086=$r14, var3561=$r15, var2624=$r16}
; {org.hibernate.dialect.Dialect=var669, r0=var464, r9=var441, null_type=var1760, i0=var62, i1=var743, $z0=var574, $r17=var2708, $r10=var3443, $r11=var1846, $r12=var1273, $r13=var96, $r14=var3086, $r15=var3561, $r16=var2624}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	r9 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean supportsPooledSequences()>();	if $z0 == 0 goto $r19 = new org.hibernate.MappingException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r0.<org.hibernate.dialect.Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r9);	$r11 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2