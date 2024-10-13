(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-2081927433 (var1639) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getId/1727904112 (var1639) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1639 var1639)
(declare-const var518 var1639) ; Statement: r1 := @this: jdk.jfr.internal.Type 
(assert (not (= var518 null-var1639)))
(define-const var1852 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1852)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1852!1 String)
(assert (= var1852!1 ""))
(assert true)
(define-const var1433 String (getName/-2081927433 var518)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var1918 String (append/672562846 var1852!1 var1433)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1852!2 String)
(assert (= var1852!2 (str.++ var1852!1 var1433)))
(assert true)
(define-const var418 String (append/672562846 var1918 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1918!1 String)
(assert (= var1918!1 (str.++ var1918 "(")))
(assert true)
(define-const var2053 Int (getId/1727904112 var518)) ; Statement: $l0 = virtualinvoke r1.<jdk.jfr.internal.Type: long getId()>() 
(assert true)
(define-const var2062 String (append/-901862667 var418 var2053)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var418!1 String)
(assert (str.prefixof var418 var418!1))
(assert true)
(define-const var1004 String (append/672562846 var2062 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2062!1 String)
(assert (= var2062!1 (str.++ var2062 ")")))
(assert true)
(define-const var1543 String (toString/-2075883882 var1004)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getId/1727904112=([jdk.jfr.internal.Type], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1639=jdk.jfr.internal.Type, var518=r1, var1852=$r0, var1433=$r2, var1918=$r3, var418=$r4, var2053=$l0, var2062=$r5, var1004=$r6, var1543=$r7}
; {jdk.jfr.internal.Type=var1639, r1=var518, $r0=var1852, $r2=var1433, $r3=var1918, $r4=var418, $l0=var2053, $r5=var2062, $r6=var1004, $r7=var1543}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.Type;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.jfr.internal.Type: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$l0 = virtualinvoke r1.<jdk.jfr.internal.Type: long getId()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1