(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var247 0)
(declare-sort var183 0)
(declare-sort var3924 0)
(declare-sort var1046 0)
(declare-sort var1786 0)
(declare-sort var3280 0)
(declare-sort var1923 0)
(declare-sort var3143 0)
(declare-sort var193 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3280!class ClassObject)
(declare-const var1923!class ClassObject)
(declare-fun var247-init () var247)
(declare-fun <init>/-207324660 (var247 String Int) void)
(declare-fun cast-from-var247-to-var183 (var247) var183)
(declare-fun var3924-init () var3924)
(declare-fun <init>/122441101 (var3924 String Int) void)
(declare-fun cast-from-var3924-to-var183 (var3924) var183)
(declare-fun var1046-init () var1046)
(declare-fun <init>/452206862 (var1046 String Int) void)
(declare-fun cast-from-var1046-to-var183 (var1046) var183)
(declare-fun var1786-init () var1786)
(declare-fun <init>/781972623 (var1786 String Int) void)
(declare-fun cast-from-var1786-to-var183 (var1786) var183)
(declare-fun var183_$values/1209625727 () (Array Int var183))
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3143-init () var3143)
(declare-fun <init>/908014952 (var3143) void)
(declare-fun capture/-1180282689 (var193) ClassObject)
(declare-fun cast-from-var3143-to-var193 (var3143) var193)
(declare-fun toString/-522406933 (var2370) String)
(declare-fun cast-from-ClassObject-to-var2370 (ClassObject) var2370)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const var183-JAVA9 var183)
(define-const var1921 var247 var247-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1 
(assert true)
;(assert (<init>/-207324660 var1921 "JAVA6" 0)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0) 

(declare-const var1921!1 var247)
(declare-const var2867 String)
(declare-const var1113 Int)
(define-const var2107 var183 (cast-from-var247-to-var183 var1921!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0 
(define-const var36 var3924 var3924-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2 
(assert true)
;(assert (<init>/122441101 var36 "JAVA7" 1)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1) 

(declare-const var36!1 var3924)
(declare-const var846 String)
(declare-const var1670 Int)
(define-const var144 var183 (cast-from-var3924-to-var183 var36!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1 
(define-const var340 var1046 var1046-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3 
(assert true)
;(assert (<init>/452206862 var340 "JAVA8" 2)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2) 

(declare-const var340!1 var1046)
(declare-const var3892 String)
(declare-const var309 Int)
(define-const var2387 var183 (cast-from-var1046-to-var183 var340!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2 
(define-const var1087 var1786 var1786-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4 
(assert true)
;(assert (<init>/781972623 var1087 "JAVA9" 3)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3) 

(declare-const var1087!1 var1786)
(declare-const var2958 String)
(declare-const var3540 Int)
(define-const var3572 var183 (cast-from-var1786-to-var183 var1087!1)) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3 
(define-const var3731 (Array Int var183) var183_$values/1209625727) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>() 
(define-const var652 (Array Int var183) var3731) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4 
(define-const var3237 ClassObject var3280!class) ; Statement: $r5 = class "Ljava/lang/reflect/AnnotatedElement;" 
(assert true)
(define-const var1690 Bool (isAssignableFrom/-1028998700 var3237 var1923!class)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;") 
 ; Statement: if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6 
(assert (not (= (ite var1690 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1352 var3143 var3143-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5 
(assert true)
;(assert (<init>/908014952 var1352)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: void <init>()>() 

(declare-const var1352!1 var3143)
(assert true)
(define-const var1705 ClassObject (capture/-1180282689 (cast-from-var3143-to-var193 var1352!1))) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: java.lang.reflect.Type capture()>() 
(assert true)
(define-const var3667 String (toString/-522406933 (cast-from-ClassObject-to-var2370 var1705))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3943 Bool (contains/1009244746 var3667 (cast-from-String-to-String "java.util.Map.java.util.Map"))) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.util.Map.java.util.Map") 
 ; Statement: if $z2 == 0 goto $r13 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> 
(assert (= (ite var3943 1 0) 0)) ; Cond: $z2 == 0 
(define-const var78 var183 var183-JAVA9) ; Statement: $r13 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> 
(define-const var2301 var183 var78) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r13 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var247-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1), <init>/-207324660=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, java.lang.String, int], void), cast-from-var247-to-var183=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var3924-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2), <init>/122441101=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, java.lang.String, int], void), cast-from-var3924-to-var183=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var1046-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3), <init>/452206862=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, java.lang.String, int], void), cast-from-var1046-to-var183=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var1786-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4), <init>/781972623=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, java.lang.String, int], void), cast-from-var1786-to-var183=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion), var183_$values/1209625727=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[]), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3143-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5), <init>/908014952=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5], void), capture/-1180282689=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture], java.lang.reflect.Type), cast-from-var3143-to-var193=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var2370=([java.lang.reflect.Type], java.lang.Object), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var247=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1, var1921=$r0, var2867="JAVA6", var1113=0, var183=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion, var2107=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>, var3924=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2, var36=$r1, var846="JAVA7", var1670=1, var144=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>, var1046=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3, var340=$r2, var3892="JAVA8", var309=2, var2387=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>, var1786=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4, var1087=$r3, var2958="JAVA9", var3540=3, var3572=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>, var3731=$r4, var652=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>, var3280=java.lang.reflect.AnnotatedElement, var3237=$r5, var1923=java.lang.reflect.TypeVariable, var1690=$z0, var3143=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5, var1352=$r10, var193=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture, var1705=$r11, var2370=java.lang.Object, var3667=$r12, var3943=$z2, var78=$r13, var2301=<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1=var247, $r0=var1921, "JAVA6"=var2867, 0=var1113, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion=var183, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6>=var2107, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2=var3924, $r1=var36, "JAVA7"=var846, 1=var1670, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7>=var144, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3=var1046, $r2=var340, "JAVA8"=var3892, 2=var309, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8>=var2387, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4=var1786, $r3=var1087, "JAVA9"=var2958, 3=var3540, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>=var3572, $r4=var3731, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES>=var652, java.lang.reflect.AnnotatedElement=var3280, $r5=var3237, java.lang.reflect.TypeVariable=var1923, $z0=var1690, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5=var3143, $r10=var1352, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeCapture=var193, $r11=var1705, java.lang.Object=var2370, $r12=var3667, $z2=var3943, $r13=var78, <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT>=var2301}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$1: void <init>(java.lang.String,int)>("JAVA6", 0);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA6> = $r0;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$2: void <init>(java.lang.String,int)>("JAVA7", 1);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA7> = $r1;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$3: void <init>(java.lang.String,int)>("JAVA8", 2);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA8> = $r2;	$r3 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4;	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$4: void <init>(java.lang.String,int)>("JAVA9", 3);	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9> = $r3;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $values()>();	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion[] $VALUES> = $r4;	$r5 = class "Ljava/lang/reflect/AnnotatedElement;";	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(class "Ljava/lang/reflect/TypeVariable;");	if $z0 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$6;	$r10 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: void <init>()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion$5: java.lang.reflect.Type capture()>();	$r12 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>();	$z2 = virtualinvoke $r12.<java.lang.String: boolean contains(java.lang.CharSequence)>("java.util.Map.java.util.Map");	if $z2 == 0 goto $r13 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>;	$r13 = <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion JAVA9>;	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$JavaVersion CURRENT> = $r13;	goto [?= return];	return
;block_num 4