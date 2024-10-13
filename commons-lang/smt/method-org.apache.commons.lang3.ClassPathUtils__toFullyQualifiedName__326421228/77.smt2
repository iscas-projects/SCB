(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3648 0)
(declare-sort var1781 0)
(declare-sort var1878 0)
(declare-sort var3918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1878_requireNonNull/1378936425 (var3918 String) var3918)
(declare-fun cast-from-var3648-to-var3918 (var3648) var3918)
(declare-fun cast-from-String-to-var3918 (String) var3918)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-900081029 (var3648) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3648 var3648)
(declare-const null-String String)
(declare-const var1113 var3648) ; Statement: r0 := @parameter0: java.lang.Package 
(assert (not (= var1113 null-var3648)))
(declare-const var2644 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2644 null-String)))
;(assert (var1878_requireNonNull/1378936425 (cast-from-var3648-to-var3918 var1113) "context")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "context") 

(declare-const var1113!1 var3648)
(declare-const var3790 String)
;(assert (var1878_requireNonNull/1378936425 (cast-from-String-to-var3918 var2644) "resourceName")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "resourceName") 

(declare-const var2644!1 String)
(declare-const var3184 String)
(define-const var1774 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1774)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1774!1 String)
(assert (= var1774!1 ""))
(assert true)
(define-const var2812 String (getName/-900081029 var1113!1)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Package: java.lang.String getName()>() 
(assert true)
(define-const var2768 String (append/672562846 var1774!1 var2812)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1774!2 String)
(assert (= var1774!2 (str.++ var1774!1 var2812)))
(assert true)
(define-const var2798 String (append/672562846 var2768 ".")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2768!1 String)
(assert (= var2768!1 (str.++ var2768 ".")))
(assert true)
(define-const var1516 String (append/672562846 var2798 var2644!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2798!1 String)
(assert (= var2798!1 (str.++ var2798 var2644!1)))
(assert true)
(define-const var2211 String (toString/-2075883882 var1516)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1878_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var3648-to-var3918=([java.lang.Package], java.lang.Object), cast-from-String-to-var3918=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-900081029=([java.lang.Package], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3648=java.lang.Package, var1113=r0, var2644=r1, var1781=null_type, var1878=java.util.Objects, var3918=java.lang.Object, var3790="context", var3184="resourceName", var1774=$r2, var2812=$r3, var2768=$r4, var2798=$r5, var1516=$r6, var2211=$r7}
; {java.lang.Package=var3648, r0=var1113, r1=var2644, null_type=var1781, java.util.Objects=var1878, java.lang.Object=var3918, "context"=var3790, "resourceName"=var3184, $r2=var1774, $r3=var2812, $r4=var2768, $r5=var2798, $r6=var1516, $r7=var2211}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Package;	r1 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "context");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "resourceName");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Package: java.lang.String getName()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1