(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun identifier/1676044101 (var349) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var349 var349)
(declare-const var3886 var349) ; Statement: r1 := @this: org.hibernate.action.internal.DelayedPostInsertIdentifier 
(assert (not (= var3886 null-var349)))
(define-const var1851 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1851)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1851!1 String)
(assert (= var1851!1 ""))
(assert true)
(define-const var2066 String (append/672562846 var1851!1 "<delayed:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<delayed:") 
(declare-const var1851!2 String)
(assert (= var1851!2 (str.++ var1851!1 "<delayed:")))
(define-const var2526 Int (identifier/1676044101 var3886)) ; Statement: $l0 = r1.<org.hibernate.action.internal.DelayedPostInsertIdentifier: long identifier> 
(assert true)
(define-const var1923 String (append/-901862667 var2066 var2526)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2066!1 String)
(assert (str.prefixof var2066 var2066!1))
(assert true)
(define-const var3790 String (append/672562846 var1923 ">")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1923!1 String)
(assert (= var1923!1 (str.++ var1923 ">")))
(assert true)
(define-const var1479 String (toString/-2075883882 var3790)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), identifier/1676044101=([org.hibernate.action.internal.DelayedPostInsertIdentifier], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var349=org.hibernate.action.internal.DelayedPostInsertIdentifier, var3886=r1, var1851=$r0, var2066=$r2, var2526=$l0, var1923=$r3, var3790=$r4, var1479=$r5}
; {org.hibernate.action.internal.DelayedPostInsertIdentifier=var349, r1=var3886, $r0=var1851, $r2=var2066, $l0=var2526, $r3=var1923, $r4=var3790, $r5=var1479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.action.internal.DelayedPostInsertIdentifier;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<delayed:");	$l0 = r1.<org.hibernate.action.internal.DelayedPostInsertIdentifier: long identifier>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1