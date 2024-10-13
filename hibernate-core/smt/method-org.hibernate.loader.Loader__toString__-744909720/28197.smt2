(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var446 0)
(declare-sort var2121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2121) ClassObject)
(declare-fun cast-from-var446-to-var2121 (var446) var2121)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSQLString/1754936683 (var446) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var446 var446)
(declare-const var1523 var446) ; Statement: r1 := @this: org.hibernate.loader.Loader 
(assert (not (= var1523 null-var446)))
(define-const var3171 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3171)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3171!1 String)
(assert (= var3171!1 ""))
(assert true)
(define-const var196 ClassObject (getClass/1258963082 (cast-from-var446-to-var2121 var1523))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var618 String (getName/-1958580599 var196)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3476 String (append/672562846 var3171!1 var618)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3171!2 String)
(assert (= var3171!2 (str.++ var3171!1 var618)))
(assert true)
(define-const var398 String (append/-1166366385 var3476 40)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3476!1 String)
(assert (str.prefixof var3476 var3476!1))
(assert true)
(define-const var3517 String (getSQLString/1754936683 var1523)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var1244 String (append/672562846 var398 var3517)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var398!1 String)
(assert (= var398!1 (str.++ var398 var3517)))
(assert true)
(define-const var2287 String (append/-1166366385 var1244 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1244!1 String)
(assert (str.prefixof var1244 var1244!1))
(assert true)
(define-const var2488 String (toString/-2075883882 var2287)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var446-to-var2121=([org.hibernate.loader.Loader], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var446=org.hibernate.loader.Loader, var1523=r1, var3171=$r0, var2121=java.lang.Object, var196=$r2, var618=$r3, var3476=$r4, var398=$r6, var3517=$r5, var1244=$r7, var2287=$r8, var2488=$r9}
; {org.hibernate.loader.Loader=var446, r1=var1523, $r0=var3171, java.lang.Object=var2121, $r2=var196, $r3=var618, $r4=var3476, $r6=var398, $r5=var3517, $r7=var1244, $r8=var2287, $r9=var2488}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.Loader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1