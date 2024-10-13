(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var2712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2650 var2650)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3666 var2650) ; Statement: r8 := @this: org.hibernate.resource.beans.internal.Helper 
(assert (not (= var3666 null-var2650)))
(declare-const var2585 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2585 null-String)))
(declare-const var2773 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var2773 null-ClassObject)))
(define-const var3818 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3818)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3818!1 String)
(assert (= var3818!1 ""))
(assert true)
(define-const var2268 String (getName/-1958580599 var2773)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1649 String (append/672562846 var3818!1 var2268)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3818!2 String)
(assert (= var3818!2 (str.++ var3818!1 var2268)))
(assert true)
(define-const var2930 String (append/-1166366385 var1649 58)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1649!1 String)
(assert (str.prefixof var1649 var1649!1))
(assert true)
(define-const var2046 String (append/672562846 var2930 var2585)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2930!1 String)
(assert (= var2930!1 (str.++ var2930 var2585)))
(assert true)
(define-const var3270 String (toString/-2075883882 var2046)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2650=org.hibernate.resource.beans.internal.Helper, var3666=r8, var2585=r4, var2712=null_type, var2773=r1, var3818=$r0, var2268=$r2, var1649=$r3, var2930=$r5, var2046=$r6, var3270=$r7}
; {org.hibernate.resource.beans.internal.Helper=var2650, r8=var3666, r4=var2585, null_type=var2712, r1=var2773, $r0=var3818, $r2=var2268, $r3=var1649, $r5=var2930, $r6=var2046, $r7=var3270}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.resource.beans.internal.Helper;	r4 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1