(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1169 0)
(declare-sort var2574 0)
(declare-sort var2451 0)
(declare-sort var3105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/61721324 (var1169) var2574)
(declare-fun getName/1128186653 (var2574) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun destmustexist/61721324 (var1169) Bool)
(declare-fun map/61721324 (var1169) var2451)
(declare-fun toString/-522406933 (var3105) String)
(declare-fun cast-from-var2451-to-var3105 (var2451) var3105)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1169 var1169)
(declare-const null-var2574 var2574)
(declare-const null-var2451 var2451)
(declare-const var78 var1169) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector 
(assert (not (= var78 null-var1169)))
(define-const var3670 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3670 "{presentselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ") 
(declare-const var3670!1 String)
(assert (= var3670!1 "{presentselector targetdir: "))
(define-const var3051 var2574 (targetdir/61721324 var78)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert (not (= var3051 null-var2574))) ; Cond: $r2 != null 
(define-const var369 var2574 (targetdir/61721324 var78)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert true)
(define-const var1531 String (getName/1128186653 var369)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3670!1 var1531)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3670!2 String)
(assert (= var3670!2 (str.++ var3670!1 var1531)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3670!2 " present: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ") 
(declare-const var3670!3 String)
(assert (= var3670!3 (str.++ var3670!2 " present: ")))
(define-const var1012 Bool (destmustexist/61721324 var78)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(assert (not (= (ite var1012 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var3670!3 "both")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("both") 
(declare-const var3670!4 String)
(assert (= var3670!4 (str.++ var3670!3 "both")))
 ; Statement: goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>] 
(assert true) ; Non Conditional
(define-const var3852 var2451 (map/61721324 var78)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (not (= var3852 null-var2451))) ; Negate: Cond: $r5 == null  
(define-const var3967 var2451 (map/61721324 var78)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
(assert true)
(define-const var882 String (toString/-522406933 (cast-from-var2451-to-var3105 var3967))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3670!4 var882)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3670!5 String)
(assert (= var3670!5 (str.++ var3670!4 var882)))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3670!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3670!6 String)
(assert (= var3670!6 (str.++ var3670!5 "}")))
(assert true)
(define-const var2314 String (toString/-2075883882 var3670!6)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], java.io.File), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), destmustexist/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], boolean), map/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2451-to-var3105=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1169=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector, var78=r1, var3670=$r0, var2574=java.io.File, var3051=$r2, var369=$r3, var1531=$r4, var1012=$z0, var2451=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var3852=$r5, var3967=$r9, var3105=java.lang.Object, var882=$r10, var2314=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector=var1169, r1=var78, $r0=var3670, java.io.File=var2574, $r2=var3051, $r3=var369, $r4=var1531, $z0=var1012, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var2451, $r5=var3852, $r9=var3967, java.lang.Object=var3105, $r10=var882, $r11=var2314}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ");	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("both");	goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>];	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7