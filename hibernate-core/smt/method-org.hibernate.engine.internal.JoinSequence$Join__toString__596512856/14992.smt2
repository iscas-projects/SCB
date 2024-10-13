(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3356 0)
(declare-sort var2262 0)
(declare-sort var2588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun joinable/1249868472 (var3356) var2262)
(declare-fun toString/-522406933 (var2588) String)
(declare-fun cast-from-var2262-to-var2588 (var2262) var2588)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun alias/1249868472 (var3356) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3356 var3356)
(declare-const var1837 var3356) ; Statement: r1 := @this: org.hibernate.engine.internal.JoinSequence$Join 
(assert (not (= var1837 null-var3356)))
(define-const var2647 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2647)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2647!1 String)
(assert (= var2647!1 ""))
(define-const var572 var2262 (joinable/1249868472 var1837)) ; Statement: $r2 = r1.<org.hibernate.engine.internal.JoinSequence$Join: org.hibernate.persister.entity.Joinable joinable> 
(assert true)
(define-const var1293 String (toString/-522406933 (cast-from-var2262-to-var2588 var572))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3294 String (append/672562846 var2647!1 var1293)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2647!2 String)
(assert (= var2647!2 (str.++ var2647!1 var1293)))
(assert true)
(define-const var3152 String (append/-1166366385 var3294 91)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3294!1 String)
(assert (str.prefixof var3294 var3294!1))
(define-const var2918 String (alias/1249868472 var1837)) ; Statement: $r5 = r1.<org.hibernate.engine.internal.JoinSequence$Join: java.lang.String alias> 
(assert true)
(define-const var1624 String (append/672562846 var3152 var2918)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3152!1 String)
(assert (= var3152!1 (str.++ var3152 var2918)))
(assert true)
(define-const var3978 String (append/-1166366385 var1624 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1624!1 String)
(assert (str.prefixof var1624 var1624!1))
(assert true)
(define-const var2595 String (toString/-2075883882 var3978)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), joinable/1249868472=([org.hibernate.engine.internal.JoinSequence$Join], org.hibernate.persister.entity.Joinable), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2262-to-var2588=([org.hibernate.persister.entity.Joinable], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), alias/1249868472=([org.hibernate.engine.internal.JoinSequence$Join], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3356=org.hibernate.engine.internal.JoinSequence$Join, var1837=r1, var2647=$r0, var2262=org.hibernate.persister.entity.Joinable, var572=$r2, var2588=java.lang.Object, var1293=$r3, var3294=$r4, var3152=$r6, var2918=$r5, var1624=$r7, var3978=$r8, var2595=$r9}
; {org.hibernate.engine.internal.JoinSequence$Join=var3356, r1=var1837, $r0=var2647, org.hibernate.persister.entity.Joinable=var2262, $r2=var572, java.lang.Object=var2588, $r3=var1293, $r4=var3294, $r6=var3152, $r5=var2918, $r7=var1624, $r8=var3978, $r9=var2595}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.internal.JoinSequence$Join;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.engine.internal.JoinSequence$Join: org.hibernate.persister.entity.Joinable joinable>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r5 = r1.<org.hibernate.engine.internal.JoinSequence$Join: java.lang.String alias>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1