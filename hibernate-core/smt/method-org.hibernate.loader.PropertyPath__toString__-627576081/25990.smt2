(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2089 0)
(declare-sort var782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var782) ClassObject)
(declare-fun cast-from-var2089-to-var782 (var2089) var782)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fullPath/776480911 (var2089) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2089 var2089)
(declare-const var3853 var2089) ; Statement: r1 := @this: org.hibernate.loader.PropertyPath 
(assert (not (= var3853 null-var2089)))
(define-const var3222 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3222)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3222!1 String)
(assert (= var3222!1 ""))
(assert true)
(define-const var2536 ClassObject (getClass/1258963082 (cast-from-var2089-to-var782 var3853))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var624 String (getSimpleName/-390194377 var2536)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var274 String (append/672562846 var3222!1 var624)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3222!2 String)
(assert (= var3222!2 (str.++ var3222!1 var624)))
(assert true)
(define-const var1182 String (append/-1166366385 var274 91)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var274!1 String)
(assert (str.prefixof var274 var274!1))
(define-const var2684 String (fullPath/776480911 var3853)) ; Statement: $r5 = r1.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> 
(assert true)
(define-const var1593 String (append/672562846 var1182 var2684)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1182!1 String)
(assert (= var1182!1 (str.++ var1182 var2684)))
(assert true)
(define-const var3535 String (append/-1166366385 var1593 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1593!1 String)
(assert (str.prefixof var1593 var1593!1))
(assert true)
(define-const var2063 String (toString/-2075883882 var3535)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2089-to-var782=([org.hibernate.loader.PropertyPath], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fullPath/776480911=([org.hibernate.loader.PropertyPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2089=org.hibernate.loader.PropertyPath, var3853=r1, var3222=$r0, var782=java.lang.Object, var2536=$r2, var624=$r3, var274=$r4, var1182=$r6, var2684=$r5, var1593=$r7, var3535=$r8, var2063=$r9}
; {org.hibernate.loader.PropertyPath=var2089, r1=var3853, $r0=var3222, java.lang.Object=var782, $r2=var2536, $r3=var624, $r4=var274, $r6=var1182, $r5=var2684, $r7=var1593, $r8=var3535, $r9=var2063}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.PropertyPath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r5 = r1.<org.hibernate.loader.PropertyPath: java.lang.String fullPath>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1