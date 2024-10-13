(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2999 0)
(declare-sort var3199 0)
(declare-sort var1825 0)
(declare-sort var2532 0)
(declare-sort var946 0)
(declare-sort var174 0)
(declare-sort var1289 0)
(declare-sort var2709 0)
(declare-sort var1484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var174!class ClassObject)
(declare-const var1289!class ClassObject)
(declare-fun var2999-init () var2999)
(declare-fun <init>/-207324660 (var2999 String Int) void)
(declare-fun cast-from-var2999-to-var3199 (var2999) var3199)
(declare-fun var1825-init () var1825)
(declare-fun <init>/122441101 (var1825 String Int) void)
(declare-fun cast-from-var1825-to-var3199 (var1825) var3199)
(declare-fun var2532-init () var2532)
(declare-fun <init>/452206862 (var2532 String Int) void)
(declare-fun cast-from-var2532-to-var3199 (var2532) var3199)
(declare-fun var946-init () var946)
(declare-fun <init>/781972623 (var946 String Int) void)
(declare-fun cast-from-var946-to-var3199 (var946) var3199)
(declare-fun var3199_$values/1209625727 () (Array Int var3199))
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var2709-init () var2709)
(declare-fun <init>/-2033642647 (var2709) void)
(declare-fun capture/-1180282689 (var1484) ClassObject)
(declare-fun cast-from-var2709-to-var1484 (var2709) var1484)
(declare-const var3199-JAVA7 var3199)
(define-const var573 var2999 var2999-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1 
(assert true)
;(assert (<init>/-207324660 var573 "JAVA6" 0)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0) 

(declare-const var573!1 var2999)
(declare-const var1209 String)
(declare-const var2129 Int)
(define-const var1641 var3199 (cast-from-var2999-to-var3199 var573!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0 
(define-const var1773 var1825 var1825-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2 
(assert true)
;(assert (<init>/122441101 var1773 "JAVA7" 1)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1) 

(declare-const var1773!1 var1825)
(declare-const var3878 String)
(declare-const var2878 Int)
(define-const var3939 var3199 (cast-from-var1825-to-var3199 var1773!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1 
(define-const var2511 var2532 var2532-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3 
(assert true)
;(assert (<init>/452206862 var2511 "JAVA8" 2)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2) 

(declare-const var2511!1 var2532)
(declare-const var2100 String)
(declare-const var2478 Int)
(define-const var1235 var3199 (cast-from-var2532-to-var3199 var2511!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2 
(define-const var1238 var946 var946-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4 
(assert true)
;(assert (<init>/781972623 var1238 "JAVA9" 3)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3) 

(declare-const var1238!1 var946)
(declare-const var663 String)
(declare-const var1887 Int)
(define-const var21 var3199 (cast-from-var946-to-var3199 var1238!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3 
(define-const var2022 (Array Int var3199) var3199_$values/1209625727) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>() 
(define-const var477 (Array Int var3199) var2022) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4 
(define-const var2764 ClassObject var174!class) ; Statement: $r5 = class "Ljava/lang/reflect/AnnotatedElement;" 
(assert true)
(define-const var3888 Bool (isAssignableFrom/-1028998700 var2764 var1289!class)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;") 
 ; Statement: if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6 
(assert (= (ite var3888 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3584 var2709 var2709-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6 
(assert true)
;(assert (<init>/-2033642647 var3584)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: void <init>()>() 

(declare-const var3584!1 var2709)
(assert true)
(define-const var2978 ClassObject (capture/-1180282689 (cast-from-var2709-to-var1484 var3584!1))) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: java.lang.reflect.Type capture()>() 
(define-const var507 Bool true) ; Statement: $z1 = $r7 instanceof java.lang.Class 
 ; Statement: if $z1 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> 
(assert (not (= (ite var507 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1862 var3199 var3199-JAVA7) ; Statement: $r9 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> 
(define-const var2569 var3199 var1862) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r9 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2999-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1), <init>/-207324660=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, java.lang.String, int], void), cast-from-var2999-to-var3199=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var1825-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2), <init>/122441101=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, java.lang.String, int], void), cast-from-var1825-to-var3199=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var2532-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3), <init>/452206862=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, java.lang.String, int], void), cast-from-var2532-to-var3199=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var946-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4), <init>/781972623=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, java.lang.String, int], void), cast-from-var946-to-var3199=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var3199_$values/1209625727=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[]), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var2709-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6), <init>/-2033642647=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6], void), capture/-1180282689=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture], java.lang.reflect.Type), cast-from-var2709-to-var1484=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture)}
; {var2999=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, var573=$r0, var1209="JAVA6", var2129=0, var3199=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion, var1641=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>, var1825=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, var1773=$r1, var3878="JAVA7", var2878=1, var3939=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>, var2532=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, var2511=$r2, var2100="JAVA8", var2478=2, var1235=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>, var946=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, var1238=$r3, var663="JAVA9", var1887=3, var21=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>, var2022=$r4, var477=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>, var174=java.lang.reflect.AnnotatedElement, var2764=$r5, var1289=java.lang.reflect.TypeVariable, var3888=$z0, var2709=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6, var3584=$r6, var1484=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture, var2978=$r7, var507=$z1, var1862=$r9, var2569=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1=var2999, $r0=var573, "JAVA6"=var1209, 0=var2129, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion=var3199, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>=var1641, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2=var1825, $r1=var1773, "JAVA7"=var3878, 1=var2878, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>=var3939, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3=var2532, $r2=var2511, "JAVA8"=var2100, 2=var2478, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>=var1235, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4=var946, $r3=var1238, "JAVA9"=var663, 3=var1887, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>=var21, $r4=var2022, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>=var477, java.lang.reflect.AnnotatedElement=var174, $r5=var2764, java.lang.reflect.TypeVariable=var1289, $z0=var3888, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6=var2709, $r6=var3584, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture=var1484, $r7=var2978, $z1=var507, $r9=var1862, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>=var2569}
;seq 
;cnt {}
;stmts $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>();	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4;	$r5 = class "Ljava/lang/reflect/AnnotatedElement;";	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;");	if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6;	$r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: void <init>()>();	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6: java.lang.reflect.Type capture()>();	$z1 = $r7 instanceof java.lang.Class;	if $z1 == 0 goto $r8 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>;	$r9 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>;	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r9;	goto [?= return];	return
;block_num 4