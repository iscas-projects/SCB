(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var680 0)
(declare-sort var1576 0)
(declare-sort var1276 0)
(declare-sort var3140 0)
(declare-sort var3173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1276_requireNonNull/1378936425 (var3140 String) var3140)
(declare-fun cast-from-var680-to-var3140 (var680) var3140)
(declare-fun cast-from-String-to-var3140 (String) var3140)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-900081029 (var680) String)
(declare-fun var3173_packageToPath/-652765388 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var680 var680)
(declare-const null-String String)
(declare-const var300 var680) ; Statement: r0 := @parameter0: java.lang.Package 
(assert (not (= var300 null-var680)))
(declare-const var2842 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2842 null-String)))
;(assert (var1276_requireNonNull/1378936425 (cast-from-var680-to-var3140 var300) "context")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "context") 

(declare-const var300!1 var680)
(declare-const var151 String)
;(assert (var1276_requireNonNull/1378936425 (cast-from-String-to-var3140 var2842) "resourceName")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "resourceName") 

(declare-const var2842!1 String)
(declare-const var3560 String)
(define-const var2727 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2727)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2727!1 String)
(assert (= var2727!1 ""))
(assert true)
(define-const var2944 String (getName/-900081029 var300!1)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Package: java.lang.String getName()>() 
(define-const var476 String (var3173_packageToPath/-652765388 var2944)) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.ClassPathUtils: java.lang.String packageToPath(java.lang.String)>($r3) 
(assert true)
(define-const var898 String (append/672562846 var2727!1 var476)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2727!2 String)
(assert (= var2727!2 (str.++ var2727!1 var476)))
(assert true)
(define-const var1300 String (append/672562846 var898 "/")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var898!1 String)
(assert (= var898!1 (str.++ var898 "/")))
(assert true)
(define-const var1251 String (append/672562846 var1300 var2842!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1300!1 String)
(assert (= var1300!1 (str.++ var1300 var2842!1)))
(assert true)
(define-const var1140 String (toString/-2075883882 var1251)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1276_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var680-to-var3140=([java.lang.Package], java.lang.Object), cast-from-String-to-var3140=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-900081029=([java.lang.Package], java.lang.String), var3173_packageToPath/-652765388=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var680=java.lang.Package, var300=r0, var2842=r1, var1576=null_type, var1276=java.util.Objects, var3140=java.lang.Object, var151="context", var3560="resourceName", var2727=$r2, var2944=$r3, var3173=org.apache.commons.lang3.ClassPathUtils, var476=$r4, var898=$r5, var1300=$r6, var1251=$r7, var1140=$r8}
; {java.lang.Package=var680, r0=var300, r1=var2842, null_type=var1576, java.util.Objects=var1276, java.lang.Object=var3140, "context"=var151, "resourceName"=var3560, $r2=var2727, $r3=var2944, org.apache.commons.lang3.ClassPathUtils=var3173, $r4=var476, $r5=var898, $r6=var1300, $r7=var1251, $r8=var1140}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Package;	r1 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "context");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "resourceName");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Package: java.lang.String getName()>();	$r4 = staticinvoke <org.apache.commons.lang3.ClassPathUtils: java.lang.String packageToPath(java.lang.String)>($r3);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1