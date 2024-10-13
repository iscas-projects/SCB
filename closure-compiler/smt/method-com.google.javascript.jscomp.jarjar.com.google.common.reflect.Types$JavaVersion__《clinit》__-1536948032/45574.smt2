(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var2796 0)
(declare-sort var3577 0)
(declare-sort var2857 0)
(declare-sort var424 0)
(declare-sort var929 0)
(declare-sort var1253 0)
(declare-sort var2621 0)
(declare-sort var2846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var929!class ClassObject)
(declare-const var1253!class ClassObject)
(declare-fun var1707-init () var1707)
(declare-fun <init>/-207324660 (var1707 String Int) void)
(declare-fun cast-from-var1707-to-var2796 (var1707) var2796)
(declare-fun var3577-init () var3577)
(declare-fun <init>/122441101 (var3577 String Int) void)
(declare-fun cast-from-var3577-to-var2796 (var3577) var2796)
(declare-fun var2857-init () var2857)
(declare-fun <init>/452206862 (var2857 String Int) void)
(declare-fun cast-from-var2857-to-var2796 (var2857) var2796)
(declare-fun var424-init () var424)
(declare-fun <init>/781972623 (var424 String Int) void)
(declare-fun cast-from-var424-to-var2796 (var424) var2796)
(declare-fun var2796_$values/1209625727 () (Array Int var2796))
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var2621-init () var2621)
(declare-fun <init>/-2033642647 (var2621) void)
(declare-fun capture/-1180282689 (var2846) ClassObject)
(declare-fun cast-from-var2621-to-var2846 (var2621) var2846)
(declare-const var2796-JAVA6 var2796)
(define-const var948 var1707 var1707-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1 
(assert true)
;(assert (<init>/-207324660 var948 "JAVA6" 0)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0) 

(declare-const var948!1 var1707)
(declare-const var3538 String)
(declare-const var1403 Int)
(define-const var2371 var2796 (cast-from-var1707-to-var2796 var948!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0 
(define-const var1590 var3577 var3577-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2 
(assert true)
;(assert (<init>/122441101 var1590 "JAVA7" 1)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1) 

(declare-const var1590!1 var3577)
(declare-const var2023 String)
(declare-const var2427 Int)
(define-const var3579 var2796 (cast-from-var3577-to-var2796 var1590!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1 
(define-const var3232 var2857 var2857-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3 
(assert true)
;(assert (<init>/452206862 var3232 "JAVA8" 2)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2) 

(declare-const var3232!1 var2857)
(declare-const var1458 String)
(declare-const var366 Int)
(define-const var2205 var2796 (cast-from-var2857-to-var2796 var3232!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2 
(define-const var3425 var424 var424-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4 
(assert true)
;(assert (<init>/781972623 var3425 "JAVA9" 3)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3) 

(declare-const var3425!1 var424)
(declare-const var3020 String)
(declare-const var3419 Int)
(define-const var552 var2796 (cast-from-var424-to-var2796 var3425!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3 
(define-const var1293 (Array Int var2796) var2796_$values/1209625727) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>() 
(define-const var1626 (Array Int var2796) var1293) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4 
(define-const var1957 ClassObject var929!class) ; Statement: $r5 = class "Ljava/lang/reflect/AnnotatedElement;" 
(assert true)
(define-const var920 Bool (isAssignableFrom/-1028998700 var1957 var1253!class)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;") 
 ; Statement: if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6 
(assert (= (ite var920 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2881 var2621 var2621-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6 
(assert true)
;(assert (<init>/-2033642647 var2881)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: void <init>()>() 

(declare-const var2881!1 var2621)
(assert true)
(define-const var2018 ClassObject (capture/-1180282689 (cast-from-var2621-to-var2846 var2881!1))) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: java.lang.reflect.Type capture()>() 
(define-const var3840 Bool true) ; Statement: $z1 = $r7 instanceof java.lang.Class 
 ; Statement: if $z1 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> 
(assert (= (ite var3840 1 0) 0)) ; Cond: $z1 == 0 
(define-const var81 var2796 var2796-JAVA6) ; Statement: $r8 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> 
(define-const var1742 var2796 var81) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r8 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1707-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1), <init>/-207324660=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, java.lang.String, int], void), cast-from-var1707-to-var2796=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var3577-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2), <init>/122441101=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, java.lang.String, int], void), cast-from-var3577-to-var2796=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var2857-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3), <init>/452206862=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, java.lang.String, int], void), cast-from-var2857-to-var2796=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var424-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4), <init>/781972623=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, java.lang.String, int], void), cast-from-var424-to-var2796=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var2796_$values/1209625727=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[]), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var2621-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6), <init>/-2033642647=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6], void), capture/-1180282689=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture], java.lang.reflect.Type), cast-from-var2621-to-var2846=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture)}
; {var1707=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, var948=$r0, var3538="JAVA6", var1403=0, var2796=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion, var2371=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>, var3577=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, var1590=$r1, var2023="JAVA7", var2427=1, var3579=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>, var2857=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, var3232=$r2, var1458="JAVA8", var366=2, var2205=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>, var424=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, var3425=$r3, var3020="JAVA9", var3419=3, var552=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>, var1293=$r4, var1626=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>, var929=java.lang.reflect.AnnotatedElement, var1957=$r5, var1253=java.lang.reflect.TypeVariable, var920=$z0, var2621=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6, var2881=$r6, var2846=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture, var2018=$r7, var3840=$z1, var81=$r8, var1742=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1=var1707, $r0=var948, "JAVA6"=var3538, 0=var1403, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion=var2796, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>=var2371, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2=var3577, $r1=var1590, "JAVA7"=var2023, 1=var2427, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>=var3579, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3=var2857, $r2=var3232, "JAVA8"=var1458, 2=var366, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>=var2205, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4=var424, $r3=var3425, "JAVA9"=var3020, 3=var3419, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>=var552, $r4=var1293, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>=var1626, java.lang.reflect.AnnotatedElement=var929, $r5=var1957, java.lang.reflect.TypeVariable=var1253, $z0=var920, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6=var2621, $r6=var2881, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture=var2846, $r7=var2018, $z1=var3840, $r8=var81, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>=var1742}
;seq 
;cnt {}
;stmts $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>();	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4;	$r5 = class "Ljava/lang/reflect/AnnotatedElement;";	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;");	if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6;	$r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: void <init>()>();	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: java.lang.reflect.Type capture()>();	$z1 = $r7 instanceof java.lang.Class;	if $z1 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>;	$r8 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>;	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r8;	return
;block_num 4