(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var222 0)
(declare-sort var109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var109) ClassObject)
(declare-fun cast-from-var222-to-var109 (var222) var109)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getEntityName/-2043384209 (var222) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var222 var222)
(declare-const var3134 var222) ; Statement: r1 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var3134 null-var222)))
(define-const var471 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var471)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var471!1 String)
(assert (= var471!1 ""))
(assert true)
(define-const var2382 ClassObject (getClass/1258963082 (cast-from-var222-to-var109 var3134))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1088 String (getName/-1958580599 var2382)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3064 String (append/672562846 var471!1 var1088)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var471!2 String)
(assert (= var471!2 (str.++ var471!1 var1088)))
(assert true)
(define-const var1790 String (append/-1166366385 var3064 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3064!1 String)
(assert (str.prefixof var3064 var3064!1))
(assert true)
(define-const var2665 String (getEntityName/-2043384209 var3134)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var2331 String (append/672562846 var1790 var2665)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1790!1 String)
(assert (= var1790!1 (str.++ var1790 var2665)))
(assert true)
(define-const var296 String (append/-1166366385 var2331 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2331!1 String)
(assert (str.prefixof var2331 var2331!1))
(assert true)
(define-const var1656 String (toString/-2075883882 var296)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var222-to-var109=([org.hibernate.mapping.PersistentClass], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var222=org.hibernate.mapping.PersistentClass, var3134=r1, var471=$r0, var109=java.lang.Object, var2382=$r2, var1088=$r3, var3064=$r4, var1790=$r6, var2665=$r5, var2331=$r7, var296=$r8, var1656=$r9}
; {org.hibernate.mapping.PersistentClass=var222, r1=var3134, $r0=var471, java.lang.Object=var109, $r2=var2382, $r3=var1088, $r4=var3064, $r6=var1790, $r5=var2665, $r7=var2331, $r8=var296, $r9=var1656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.PersistentClass;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1