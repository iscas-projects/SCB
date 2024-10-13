(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort var2570 0)
(declare-sort var1039 0)
(declare-sort var884 0)
(declare-sort var1523 0)
(declare-sort var769 0)
(declare-sort var2510 0)
(declare-sort var3090 0)
(declare-sort var16 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var769!class ClassObject)
(declare-const var2510!class ClassObject)
(declare-fun var91-init () var91)
(declare-fun <init>/-207324660 (var91 String Int) void)
(declare-fun cast-from-var91-to-var2570 (var91) var2570)
(declare-fun var1039-init () var1039)
(declare-fun <init>/122441101 (var1039 String Int) void)
(declare-fun cast-from-var1039-to-var2570 (var1039) var2570)
(declare-fun var884-init () var884)
(declare-fun <init>/452206862 (var884 String Int) void)
(declare-fun cast-from-var884-to-var2570 (var884) var2570)
(declare-fun var1523-init () var1523)
(declare-fun <init>/781972623 (var1523 String Int) void)
(declare-fun cast-from-var1523-to-var2570 (var1523) var2570)
(declare-fun var2570_$values/1209625727 () (Array Int var2570))
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3090-init () var3090)
(declare-fun <init>/908014952 (var3090) void)
(declare-fun capture/-1180282689 (var16) ClassObject)
(declare-fun cast-from-var3090-to-var16 (var3090) var16)
(declare-fun toString/-522406933 (var32) String)
(declare-fun cast-from-ClassObject-to-var32 (ClassObject) var32)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const var2570-JAVA8 var2570)
(define-const var3675 var91 var91-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1 
(assert true)
;(assert (<init>/-207324660 var3675 "JAVA6" 0)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0) 

(declare-const var3675!1 var91)
(declare-const var3681 String)
(declare-const var282 Int)
(define-const var2160 var2570 (cast-from-var91-to-var2570 var3675!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0 
(define-const var3932 var1039 var1039-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2 
(assert true)
;(assert (<init>/122441101 var3932 "JAVA7" 1)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1) 

(declare-const var3932!1 var1039)
(declare-const var2162 String)
(declare-const var1492 Int)
(define-const var3511 var2570 (cast-from-var1039-to-var2570 var3932!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1 
(define-const var3383 var884 var884-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3 
(assert true)
;(assert (<init>/452206862 var3383 "JAVA8" 2)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2) 

(declare-const var3383!1 var884)
(declare-const var2783 String)
(declare-const var2880 Int)
(define-const var2122 var2570 (cast-from-var884-to-var2570 var3383!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2 
(define-const var2102 var1523 var1523-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4 
(assert true)
;(assert (<init>/781972623 var2102 "JAVA9" 3)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3) 

(declare-const var2102!1 var1523)
(declare-const var2887 String)
(declare-const var2705 Int)
(define-const var2555 var2570 (cast-from-var1523-to-var2570 var2102!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3 
(define-const var2542 (Array Int var2570) var2570_$values/1209625727) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>() 
(define-const var1564 (Array Int var2570) var2542) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4 
(define-const var2936 ClassObject var769!class) ; Statement: $r5 = class "Ljava/lang/reflect/AnnotatedElement;" 
(assert true)
(define-const var2744 Bool (isAssignableFrom/-1028998700 var2936 var2510!class)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;") 
 ; Statement: if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6 
(assert (not (= (ite var2744 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var443 var3090 var3090-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5 
(assert true)
;(assert (<init>/908014952 var443)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: void <init>()>() 

(declare-const var443!1 var3090)
(assert true)
(define-const var888 ClassObject (capture/-1180282689 (cast-from-var3090-to-var16 var443!1))) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: java.lang.reflect.Type capture()>() 
(assert true)
(define-const var3715 String (toString/-522406933 (cast-from-ClassObject-to-var32 var888))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1930 Bool (contains/1009244746 var3715 (cast-from-String-to-String "java.util.Map.java.util.Map"))) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.util.Map.java.util.Map") 
 ; Statement: if $z2 == 0 goto $r13 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> 
(assert (not (= (ite var1930 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var498 var2570 var2570-JAVA8) ; Statement: $r14 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> 
(define-const var2919 var2570 var498) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r14 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var91-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1), <init>/-207324660=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, java.lang.String, int], void), cast-from-var91-to-var2570=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var1039-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2), <init>/122441101=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, java.lang.String, int], void), cast-from-var1039-to-var2570=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var884-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3), <init>/452206862=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, java.lang.String, int], void), cast-from-var884-to-var2570=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var1523-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4), <init>/781972623=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, java.lang.String, int], void), cast-from-var1523-to-var2570=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var2570_$values/1209625727=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[]), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3090-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5), <init>/908014952=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5], void), capture/-1180282689=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture], java.lang.reflect.Type), cast-from-var3090-to-var16=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var32=([java.lang.reflect.Type], java.lang.Object), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var91=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, var3675=$r0, var3681="JAVA6", var282=0, var2570=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion, var2160=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>, var1039=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, var3932=$r1, var2162="JAVA7", var1492=1, var3511=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>, var884=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, var3383=$r2, var2783="JAVA8", var2880=2, var2122=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>, var1523=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, var2102=$r3, var2887="JAVA9", var2705=3, var2555=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>, var2542=$r4, var1564=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>, var769=java.lang.reflect.AnnotatedElement, var2936=$r5, var2510=java.lang.reflect.TypeVariable, var2744=$z0, var3090=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5, var443=$r10, var16=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture, var888=$r11, var32=java.lang.Object, var3715=$r12, var1930=$z2, var498=$r14, var2919=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1=var91, $r0=var3675, "JAVA6"=var3681, 0=var282, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion=var2570, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>=var2160, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2=var1039, $r1=var3932, "JAVA7"=var2162, 1=var1492, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>=var3511, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3=var884, $r2=var3383, "JAVA8"=var2783, 2=var2880, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>=var2122, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4=var1523, $r3=var2102, "JAVA9"=var2887, 3=var2705, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>=var2555, $r4=var2542, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>=var1564, java.lang.reflect.AnnotatedElement=var769, $r5=var2936, java.lang.reflect.TypeVariable=var2510, $z0=var2744, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5=var3090, $r10=var443, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture=var16, $r11=var888, java.lang.Object=var32, $r12=var3715, $z2=var1930, $r14=var498, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>=var2919}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>();	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4;	$r5 = class "Ljava/lang/reflect/AnnotatedElement;";	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;");	if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6;	$r10 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: void <init>()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: java.lang.reflect.Type capture()>();	$r12 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>();	$z2 = virtualinvoke $r12.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.util.Map.java.util.Map");	if $z2 == 0 goto $r13 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>;	$r14 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>;	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r14;	goto [?= return];	return
;block_num 4