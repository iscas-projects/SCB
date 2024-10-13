(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1384 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var678) ClassObject)
(declare-fun cast-from-var1384-to-var678 (var1384) var678)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/75367035 (var1384) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1384 var1384)
(declare-const var3234 var1384) ; Statement: r1 := @this: org.hibernate.mapping.Property 
(assert (not (= var3234 null-var1384)))
(define-const var3050 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3050)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3050!1 String)
(assert (= var3050!1 ""))
(assert true)
(define-const var3077 ClassObject (getClass/1258963082 (cast-from-var1384-to-var678 var3234))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var862 String (getName/-1958580599 var3077)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1931 String (append/672562846 var3050!1 var862)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3050!2 String)
(assert (= var3050!2 (str.++ var3050!1 var862)))
(assert true)
(define-const var429 String (append/-1166366385 var1931 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1931!1 String)
(assert (str.prefixof var1931 var1931!1))
(define-const var147 String (name/75367035 var3234)) ; Statement: $r5 = r1.<org.hibernate.mapping.Property: java.lang.String name> 
(assert true)
(define-const var1222 String (append/672562846 var429 var147)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var429!1 String)
(assert (= var429!1 (str.++ var429 var147)))
(assert true)
(define-const var2590 String (append/-1166366385 var1222 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1222!1 String)
(assert (str.prefixof var1222 var1222!1))
(assert true)
(define-const var3001 String (toString/-2075883882 var2590)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1384-to-var678=([org.hibernate.mapping.Property], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/75367035=([org.hibernate.mapping.Property], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1384=org.hibernate.mapping.Property, var3234=r1, var3050=$r0, var678=java.lang.Object, var3077=$r2, var862=$r3, var1931=$r4, var429=$r6, var147=$r5, var1222=$r7, var2590=$r8, var3001=$r9}
; {org.hibernate.mapping.Property=var1384, r1=var3234, $r0=var3050, java.lang.Object=var678, $r2=var3077, $r3=var862, $r4=var1931, $r6=var429, $r5=var147, $r7=var1222, $r8=var2590, $r9=var3001}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Property;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.mapping.Property: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1