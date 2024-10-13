(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2888 0)
(declare-sort var808 0)
(declare-sort var405 0)
(declare-sort var989 0)
(declare-sort var2981 0)
(declare-sort var3867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBeginToken/-1587000614 (var2888) String)
(declare-fun getEndToken/405649484 (var2888) String)
(declare-fun recurseDepth/-198210442 (var2888) Int)
(declare-fun passedTokens/-198210442 (var2888) var405)
(declare-fun contains/-136988940 (var405 var989) Bool)
(declare-fun cast-from-String-to-var989 (String) var989)
(declare-fun duplicateToken/-198210442 (var2888) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1848954533 (var405) String)
(declare-fun lastElement/-654761729 (var405) var989)
(declare-fun cast-from-var989-to-String (var989) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2981 String) void)
(declare-const null-var2888 var2888)
(declare-const null-String String)
(declare-const var3867-out var2981)
(declare-const var1200 var2888) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet 
(assert (not (= var1200 null-var2888)))
(declare-const var2405 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2405 null-String)))
(declare-const var1801 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1801 null-String)))
(assert true)
(define-const var3493 String (getBeginToken/-1587000614 var1200)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getBeginToken()>() 
(assert true)
(define-const var2926 String (getEndToken/405649484 var1200)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getEndToken()>() 
(define-const var2563 Int (recurseDepth/-198210442 var1200)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> 
 ; Statement: if $i0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> 
(assert (not (= var2563 0))) ; Cond: $i0 != 0 
(define-const var292 Int (recurseDepth/-198210442 var1200)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> 
(define-const var1049 Int (+ var292 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var1200!1 var2888)
(assert (not (= var1200!1 null-var2888)))
(assert (= (recurseDepth/-198210442 var1200!1) var1049)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> = $i2 
(define-const var3175 var405 (passedTokens/-198210442 var1200!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens> 
(assert true)
(define-const var1532 Bool (contains/-136988940 var3175 (cast-from-String-to-var989 var1801))) ; Statement: $z0 = virtualinvoke $r4.<java.util.Vector: boolean contains(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens> 
(assert (not (= (ite var1532 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1169 Bool (duplicateToken/-198210442 var1200!1)) ; Statement: $z6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: boolean duplicateToken> 
 ; Statement: if $z6 != 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens> 
(assert (not (not (= (ite var1169 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(declare-const var1200!2 var2888)
(assert (not (= var1200!2 null-var2888)))
(assert (= (duplicateToken/-198210442 var1200!2) (ite (= 1 1) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: boolean duplicateToken> = 1 
(define-const var3745 var2981 var3867-out) ; Statement: $r21 = <java.lang.System: java.io.PrintStream out> 
(define-const var1560 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1560)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1560!1 String)
(assert (= var1560!1 ""))
(assert true)
(define-const var2453 String (append/672562846 var1560!1 "Infinite loop in tokens. Currently known tokens : ")) ; Statement: $r24 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Infinite loop in tokens. Currently known tokens : ") 
(declare-const var1560!2 String)
(assert (= var1560!2 (str.++ var1560!1 "Infinite loop in tokens. Currently known tokens : ")))
(define-const var290 var405 (passedTokens/-198210442 var1200!2)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens> 
(assert true)
(define-const var2217 String (toString/-1848954533 var290)) ; Statement: $r23 = virtualinvoke $r22.<java.util.Vector: java.lang.String toString()>() 
(assert true)
(define-const var2782 String (append/672562846 var2453 var2217)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2453!1 String)
(assert (= var2453!1 (str.++ var2453 var2217)))
(assert true)
(define-const var1374 String (append/672562846 var2782 "\nProblem token : ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nProblem token : ") 
(declare-const var2782!1 String)
(assert (= var2782!1 (str.++ var2782 "\nProblem token : ")))
(assert true)
(define-const var3887 String (append/672562846 var1374 var3493)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1374!1 String)
(assert (= var1374!1 (str.++ var1374 var3493)))
(assert true)
(define-const var3500 String (append/672562846 var3887 var1801)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3887!1 String)
(assert (= var3887!1 (str.++ var3887 var1801)))
(assert true)
(define-const var3031 String (append/672562846 var3500 var2926)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3500!1 String)
(assert (= var3500!1 (str.++ var3500 var2926)))
(assert true)
(define-const var2089 String (append/672562846 var3031 " called from ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" called from ") 
(declare-const var3031!1 String)
(assert (= var3031!1 (str.++ var3031 " called from ")))
(assert true)
(define-const var3012 String (append/672562846 var2089 var3493)) ; Statement: $r34 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2089!1 String)
(assert (= var2089!1 (str.++ var2089 var3493)))
(define-const var1208 var405 (passedTokens/-198210442 var1200!2)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens> 
(assert true)
(define-const var3264 var989 (lastElement/-654761729 var1208)) ; Statement: $r32 = virtualinvoke $r31.<java.util.Vector: java.lang.Object lastElement()>() 
(define-const var969 String (cast-from-var989-to-String var3264)) ; Statement: $r33 = (java.lang.String) $r32 
(assert true)
(define-const var849 String (append/672562846 var3012 var969)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33) 
(declare-const var3012!1 String)
(assert (= var3012!1 (str.++ var3012 var969)))
(assert true)
(define-const var304 String (append/672562846 var849 var2926)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var849!1 String)
(assert (= var849!1 (str.++ var849 var2926)))
(assert true)
(define-const var932 String (toString/-2075883882 var304)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3745 var932)) ; Statement: virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r37) 

(declare-const var3745!1 var2981)
(declare-const var932!1 String)
(define-const var2777 Int (recurseDepth/-198210442 var1200!2)) ; Statement: $i8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> 
(define-const var725 Int (- var2777 1)) ; Statement: $i9 = $i8 - 1 
(declare-const var1200!3 var2888)
(assert (not (= var1200!3 null-var2888)))
(assert (= (recurseDepth/-198210442 var1200!3) var725)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> = $i9 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBeginToken/-1587000614=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], java.lang.String), getEndToken/405649484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], java.lang.String), recurseDepth/-198210442=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], int), passedTokens/-198210442=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], java.util.Vector), contains/-136988940=([java.util.Vector, java.lang.Object], boolean), cast-from-String-to-var989=([java.lang.String], java.lang.Object), duplicateToken/-198210442=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1848954533=([java.util.Vector], java.lang.String), lastElement/-654761729=([java.util.Vector], java.lang.Object), cast-from-var989-to-String=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2888=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet, var1200=r0, var2405=r6, var808=null_type, var1801=r3, var3493=r1, var2926=r2, var2563=$i0, var292=$i1, var1049=$i2, var405=java.util.Vector, var3175=$r4, var989=java.lang.Object, var1532=$z0, var1169=$z6, var2981=java.io.PrintStream, var3867=java.lang.System, var3745=$r21, var1560=$r20, var2453=$r24, var290=$r22, var2217=$r23, var2782=$r25, var1374=$r26, var3887=$r27, var3500=$r28, var3031=$r29, var2089=$r30, var3012=$r34, var1208=$r31, var3264=$r32, var969=$r33, var849=$r35, var304=$r36, var932=$r37, var2777=$i8, var725=$i9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet=var2888, r0=var1200, r6=var2405, null_type=var808, r3=var1801, r1=var3493, r2=var2926, $i0=var2563, $i1=var292, $i2=var1049, java.util.Vector=var405, $r4=var3175, java.lang.Object=var989, $z0=var1532, $z6=var1169, java.io.PrintStream=var2981, java.lang.System=var3867, $r21=var3745, $r20=var1560, $r24=var2453, $r22=var290, $r23=var2217, $r25=var2782, $r26=var1374, $r27=var3887, $r28=var3500, $r29=var3031, $r30=var2089, $r34=var3012, $r31=var1208, $r32=var3264, $r33=var969, $r35=var849, $r36=var304, $r37=var932, $i8=var2777, $i9=var725}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Vector: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getBeginToken()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getEndToken()>();	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth>;	if $i0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> = $i2;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens>;	$z0 = virtualinvoke $r4.<java.util.Vector: boolean contains(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens>;	$z6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: boolean duplicateToken>;	if $z6 != 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: boolean duplicateToken> = 1;	$r21 = <java.lang.System: java.io.PrintStream out>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Infinite loop in tokens. Currently known tokens : ");	$r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens>;	$r23 = virtualinvoke $r22.<java.util.Vector: java.lang.String toString()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nProblem token : ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" called from ");	$r34 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.util.Vector passedTokens>;	$r32 = virtualinvoke $r31.<java.util.Vector: java.lang.Object lastElement()>();	$r33 = (java.lang.String) $r32;	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r37);	$i8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth>;	$i9 = $i8 - 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: int recurseDepth> = $i9;	return r3
;block_num 4