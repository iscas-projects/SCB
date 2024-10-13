(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var228 0)
(declare-sort var3663 0)
(declare-sort var2007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3663) ClassObject)
(declare-fun cast-from-var228-to-var3663 (var228) var3663)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun columns/501186681 (var228) var2007)
(declare-fun toString/-522406933 (var3663) String)
(declare-fun cast-from-var2007-to-var3663 (var2007) var3663)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var228 var228)
(declare-const var889 var228) ; Statement: r1 := @this: org.hibernate.mapping.SimpleValue 
(assert (not (= var889 null-var228)))
(define-const var834 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var834)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var834!1 String)
(assert (= var834!1 ""))
(assert true)
(define-const var2930 ClassObject (getClass/1258963082 (cast-from-var228-to-var3663 var889))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var161 String (getName/-1958580599 var2930)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3957 String (append/672562846 var834!1 var161)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var834!2 String)
(assert (= var834!2 (str.++ var834!1 var161)))
(assert true)
(define-const var1026 String (append/-1166366385 var3957 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3957!1 String)
(assert (str.prefixof var3957 var3957!1))
(define-const var2704 var2007 (columns/501186681 var889)) ; Statement: $r5 = r1.<org.hibernate.mapping.SimpleValue: java.util.List columns> 
(assert true)
(define-const var1449 String (toString/-522406933 (cast-from-var2007-to-var3663 var2704))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2155 String (append/672562846 var1026 var1449)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1026!1 String)
(assert (= var1026!1 (str.++ var1026 var1449)))
(assert true)
(define-const var2171 String (append/-1166366385 var2155 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2155!1 String)
(assert (str.prefixof var2155 var2155!1))
(assert true)
(define-const var1451 String (toString/-2075883882 var2171)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var228-to-var3663=([org.hibernate.mapping.SimpleValue], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), columns/501186681=([org.hibernate.mapping.SimpleValue], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2007-to-var3663=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var228=org.hibernate.mapping.SimpleValue, var889=r1, var834=$r0, var3663=java.lang.Object, var2930=$r2, var161=$r3, var3957=$r4, var1026=$r7, var2007=java.util.List, var2704=$r5, var1449=$r6, var2155=$r8, var2171=$r9, var1451=$r10}
; {org.hibernate.mapping.SimpleValue=var228, r1=var889, $r0=var834, java.lang.Object=var3663, $r2=var2930, $r3=var161, $r4=var3957, $r7=var1026, java.util.List=var2007, $r5=var2704, $r6=var1449, $r8=var2155, $r9=var2171, $r10=var1451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.SimpleValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.mapping.SimpleValue: java.util.List columns>;	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1