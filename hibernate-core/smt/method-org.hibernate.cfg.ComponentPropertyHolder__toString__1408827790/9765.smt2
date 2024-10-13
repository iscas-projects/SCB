(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1634 0)
(declare-sort var1400 0)
(declare-sort var125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var1400) String)
(declare-fun cast-from-var1634-to-var1400 (var1634) var1400)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun parent/-93136525 (var125) var125)
(declare-fun cast-from-var1634-to-var125 (var1634) var125)
(declare-fun embeddedAttributeName/-798700690 (var1634) String)
(declare-fun normalizeCompositePathForLogging/43151815 (var125 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1634 var1634)
(declare-const var656 var1634) ; Statement: r1 := @this: org.hibernate.cfg.ComponentPropertyHolder 
(assert (not (= var656 null-var1634)))
(define-const var1453 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1453)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1453!1 String)
(assert (= var1453!1 ""))
(assert true)
(define-const var2960 String (toString/-522406933 (cast-from-var1634-to-var1400 var656))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1118 String (append/672562846 var1453!1 var2960)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1453!2 String)
(assert (= var1453!2 (str.++ var1453!1 var2960)))
(assert true)
(define-const var1800 String (append/672562846 var1118 "(")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1118!1 String)
(assert (= var1118!1 (str.++ var1118 "(")))
(define-const var636 var125 (parent/-93136525 (cast-from-var1634-to-var125 var656))) ; Statement: $r5 = r1.<org.hibernate.cfg.ComponentPropertyHolder: org.hibernate.cfg.AbstractPropertyHolder parent> 
(define-const var1637 String (embeddedAttributeName/-798700690 var656)) ; Statement: $r4 = r1.<org.hibernate.cfg.ComponentPropertyHolder: java.lang.String embeddedAttributeName> 
(assert true)
(define-const var3795 String (normalizeCompositePathForLogging/43151815 var636 var1637)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.cfg.AbstractPropertyHolder: java.lang.String normalizeCompositePathForLogging(java.lang.String)>($r4) 
(assert true)
(define-const var1331 String (append/672562846 var1800 var3795)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1800!1 String)
(assert (= var1800!1 (str.++ var1800 var3795)))
(assert true)
(define-const var933 String (append/672562846 var1331 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1331!1 String)
(assert (= var1331!1 (str.++ var1331 ")")))
(assert true)
(define-const var10 String (toString/-2075883882 var933)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1634-to-var1400=([org.hibernate.cfg.ComponentPropertyHolder], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), parent/-93136525=([org.hibernate.cfg.AbstractPropertyHolder], org.hibernate.cfg.AbstractPropertyHolder), cast-from-var1634-to-var125=([org.hibernate.cfg.ComponentPropertyHolder], org.hibernate.cfg.AbstractPropertyHolder), embeddedAttributeName/-798700690=([org.hibernate.cfg.ComponentPropertyHolder], java.lang.String), normalizeCompositePathForLogging/43151815=([org.hibernate.cfg.AbstractPropertyHolder, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1634=org.hibernate.cfg.ComponentPropertyHolder, var656=r1, var1453=$r0, var1400=java.lang.Object, var2960=$r2, var1118=$r3, var1800=$r7, var125=org.hibernate.cfg.AbstractPropertyHolder, var636=$r5, var1637=$r4, var3795=$r6, var1331=$r8, var933=$r9, var10=$r10}
; {org.hibernate.cfg.ComponentPropertyHolder=var1634, r1=var656, $r0=var1453, java.lang.Object=var1400, $r2=var2960, $r3=var1118, $r7=var1800, org.hibernate.cfg.AbstractPropertyHolder=var125, $r5=var636, $r4=var1637, $r6=var3795, $r8=var1331, $r9=var933, $r10=var10}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.ComponentPropertyHolder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = r1.<org.hibernate.cfg.ComponentPropertyHolder: org.hibernate.cfg.AbstractPropertyHolder parent>;	$r4 = r1.<org.hibernate.cfg.ComponentPropertyHolder: java.lang.String embeddedAttributeName>;	$r6 = virtualinvoke $r5.<org.hibernate.cfg.AbstractPropertyHolder: java.lang.String normalizeCompositePathForLogging(java.lang.String)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1