(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun implicitUidBase/86166741 (var2214) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2214 var2214)
(declare-const var3333 var2214) ; Statement: r1 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl 
(assert (not (= var3333 null-var2214)))
(define-const var948 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var948)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var948!1 String)
(assert (= var948!1 ""))
(assert true)
(define-const var313 String (append/672562846 var948!1 "<gen:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<gen:") 
(declare-const var948!2 String)
(assert (= var948!2 (str.++ var948!1 "<gen:")))
(define-const var3802 Int (implicitUidBase/86166741 var3333)) ; Statement: $i0 = r1.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: int implicitUidBase> 
(define-const var1358 Int (+ var3802 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3333!1 var2214)
(assert (not (= var3333!1 null-var2214)))
(assert (= (implicitUidBase/86166741 var3333!1) var1358)) ; Statement: r1.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: int implicitUidBase> = $i1 
(assert true)
(define-const var1120 String (append/-1001720160 var313 var3802)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var313!1 String)
(assert (str.prefixof var313 var313!1))
(assert true)
(define-const var1610 String (append/672562846 var1120 ">")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1120!1 String)
(assert (= var1120!1 (str.++ var1120 ">")))
(assert true)
(define-const var696 String (toString/-2075883882 var1610)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), implicitUidBase/86166741=([org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2214=org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl, var3333=r1, var948=$r0, var313=$r2, var3802=$i0, var1358=$i1, var1120=$r3, var1610=$r4, var696=$r5}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl=var2214, r1=var3333, $r0=var948, $r2=var313, $i0=var3802, $i1=var1358, $r3=var1120, $r4=var1610, $r5=var696}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<gen:");	$i0 = r1.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: int implicitUidBase>;	$i1 = $i0 + 1;	r1.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: int implicitUidBase> = $i1;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1