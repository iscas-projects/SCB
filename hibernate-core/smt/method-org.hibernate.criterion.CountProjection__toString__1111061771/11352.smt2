(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var407 0)
(declare-sort var399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun distinct/982681259 (var407) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/465441083 (var399) String)
(declare-fun cast-from-var407-to-var399 (var407) var399)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var407 var407)
(declare-const var2013 var407) ; Statement: r0 := @this: org.hibernate.criterion.CountProjection 
(assert (not (= var2013 null-var407)))
(define-const var3270 Bool (distinct/982681259 var2013)) ; Statement: $z0 = r0.<org.hibernate.criterion.CountProjection: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r1 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>() 
(assert (not (= (ite var3270 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3650 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3650)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3650!1 String)
(assert (= var3650!1 ""))
(assert true)
(define-const var2898 String (append/672562846 var3650!1 "distinct ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ") 
(declare-const var3650!2 String)
(assert (= var3650!2 (str.++ var3650!1 "distinct ")))
(assert true)
(define-const var1717 String (toString/465441083 (cast-from-var407-to-var399 var2013))) ; Statement: $r3 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>() 
(assert true)
(define-const var1762 String (append/672562846 var2898 var1717)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2898!1 String)
(assert (= var2898!1 (str.++ var2898 var1717)))
(assert true)
(define-const var3719 String (toString/-2075883882 var1762)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {distinct/982681259=([org.hibernate.criterion.CountProjection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/465441083=([org.hibernate.criterion.AggregateProjection], java.lang.String), cast-from-var407-to-var399=([org.hibernate.criterion.CountProjection], org.hibernate.criterion.AggregateProjection), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var407=org.hibernate.criterion.CountProjection, var2013=r0, var3270=$z0, var3650=$r2, var2898=$r4, var399=org.hibernate.criterion.AggregateProjection, var1717=$r3, var1762=$r5, var3719=$r6}
; {org.hibernate.criterion.CountProjection=var407, r0=var2013, $z0=var3270, $r2=var3650, $r4=var2898, org.hibernate.criterion.AggregateProjection=var399, $r3=var1717, $r5=var1762, $r6=var3719}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.criterion.CountProjection;	$z0 = r0.<org.hibernate.criterion.CountProjection: boolean distinct>;	if $z0 == 0 goto $r1 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ");	$r3 = specialinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2