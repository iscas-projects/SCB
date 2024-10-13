(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2540 0)
(declare-sort var2141 0)
(declare-sort var3477 0)
(declare-sort var1712 0)
(declare-sort var1879 0)
(declare-sort var1933 0)
(declare-sort var1072 0)
(declare-sort var1883 0)
(declare-sort var2342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun excludePatterns/1853600016 (var2540) (Array Int var1712))
(declare-fun var1879_of/184955601 ((Array Int var1933)) var1879)
(declare-fun cast-from-__Array__Int__var1712__-to-__Array__Int__var1933__ ((Array Int var1712)) (Array Int var1933))
(declare-fun var1883_bootstrap$/1442942130 () var1072)
(declare-fun var1879_map/130902797 (var1879 var1072) var1879)
(declare-fun var2342_isEqual/345279618 (var1933) var2342)
(declare-fun cast-from-String-to-var1933 (String) var1933)
(declare-fun var1879_noneMatch/38166721 (var1879 var2342) Bool)
(declare-const null-var2540 var2540)
(declare-const null-String String)
(declare-const var3477-separatorChar Int)
(declare-const var2779 var2540) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner 
(assert (not (= var2779 null-var2540)))
(declare-const var2876 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2876 null-String)))
(define-const var3143 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3143)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3143!1 String)
(assert (= var3143!1 ""))
(assert true)
(define-const var2093 String (append/672562846 var3143!1 var2876)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3143!2 String)
(assert (= var3143!2 (str.++ var3143!1 var2876)))
(define-const var338 Int var3477-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var101 String (append/-1166366385 var2093 var338)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2093!1 String)
(assert (str.prefixof var2093 var2093!1))
(assert true)
(define-const var1260 String (append/672562846 var101 "**")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**") 
(declare-const var101!1 String)
(assert (= var101!1 (str.++ var101 "**")))
(assert true)
(define-const var499 String (toString/-2075883882 var1260)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var956 (Array Int var1712) (excludePatterns/1853600016 var2779)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern[] excludePatterns> 
(define-const var2511 var1879 (var1879_of/184955601 (cast-from-__Array__Int__var1712__-to-__Array__Int__var1933__ var956))) ; Statement: $r9 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r7) 
(define-const var3582 var1072 var1883_bootstrap$/1442942130) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner$toString__636: java.util.function.Function bootstrap$()>() 
(define-const var3352 var1879 (var1879_map/130902797 var2511 var3582)) ; Statement: $r11 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r8) 
(define-const var2892 var2342 (var2342_isEqual/345279618 (cast-from-String-to-var1933 var499))) ; Statement: $r10 = staticinvoke <java.util.function.Predicate: java.util.function.Predicate isEqual(java.lang.Object)>(r5) 
(define-const var341 Bool (var1879_noneMatch/38166721 var3352 var2892)) ; Statement: $z0 = interfaceinvoke $r11.<java.util.stream.Stream: boolean noneMatch(java.util.function.Predicate)>($r10) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), excludePatterns/1853600016=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern[]), var1879_of/184955601=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__var1712__-to-__Array__Int__var1933__=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern[]], java.lang.Object[]), var1883_bootstrap$/1442942130=([], java.util.function.Function), var1879_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var2342_isEqual/345279618=([java.lang.Object], java.util.function.Predicate), cast-from-String-to-var1933=([java.lang.String], java.lang.Object), var1879_noneMatch/38166721=([java.util.stream.Stream, java.util.function.Predicate], boolean)}
; {var2540=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var2779=r6, var2876=r1, var2141=null_type, var3143=$r0, var2093=$r2, var3477=java.io.File, var338=$c0, var101=$r3, var1260=$r4, var499=r5, var1712=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern, var956=$r7, var1879=java.util.stream.Stream, var1933=java.lang.Object, var2511=$r9, var1072=java.util.function.Function, var1883=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner$toString__636, var3582=$r8, var3352=$r11, var2342=java.util.function.Predicate, var2892=$r10, var341=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2540, r6=var2779, r1=var2876, null_type=var2141, $r0=var3143, $r2=var2093, java.io.File=var3477, $c0=var338, $r3=var101, $r4=var1260, r5=var499, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern=var1712, $r7=var956, java.util.stream.Stream=var1879, java.lang.Object=var1933, $r9=var2511, java.util.function.Function=var1072, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner$toString__636=var1883, $r8=var3582, $r11=var3352, java.util.function.Predicate=var2342, $r10=var2892, $z0=var341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$c0 = <java.io.File: char separatorChar>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.TokenizedPattern[] excludePatterns>;	$r9 = staticinvoke <java.util.stream.Stream: java.util.stream.Stream of(java.lang.Object[])>($r7);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner$toString__636: java.util.function.Function bootstrap$()>();	$r11 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r8);	$r10 = staticinvoke <java.util.function.Predicate: java.util.function.Predicate isEqual(java.lang.Object)>(r5);	$z0 = interfaceinvoke $r11.<java.util.stream.Stream: boolean noneMatch(java.util.function.Predicate)>($r10);	return $z0
;block_num 1