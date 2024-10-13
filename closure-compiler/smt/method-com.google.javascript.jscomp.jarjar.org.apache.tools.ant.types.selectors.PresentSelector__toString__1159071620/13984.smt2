(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var698 0)
(declare-sort var650 0)
(declare-sort var1589 0)
(declare-sort var1734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/61721324 (var698) var650)
(declare-fun getName/1128186653 (var650) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun destmustexist/61721324 (var698) Bool)
(declare-fun map/61721324 (var698) var1589)
(declare-fun toString/-522406933 (var1734) String)
(declare-fun cast-from-var1589-to-var1734 (var1589) var1734)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var698 var698)
(declare-const null-var650 var650)
(declare-const null-var1589 var1589)
(declare-const var543 var698) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector 
(assert (not (= var543 null-var698)))
(define-const var2392 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2392 "{presentselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ") 
(declare-const var2392!1 String)
(assert (= var2392!1 "{presentselector targetdir: "))
(define-const var1808 var650 (targetdir/61721324 var543)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert (not (= var1808 null-var650))) ; Cond: $r2 != null 
(define-const var3274 var650 (targetdir/61721324 var543)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert true)
(define-const var2622 String (getName/1128186653 var3274)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var2392!1 var2622)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2392!2 String)
(assert (= var2392!2 (str.++ var2392!1 var2622)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2392!2 " present: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ") 
(declare-const var2392!3 String)
(assert (= var2392!3 (str.++ var2392!2 " present: ")))
(define-const var2289 Bool (destmustexist/61721324 var543)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(assert (= (ite var2289 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2392!3 "srconly")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(declare-const var2392!4 String)
(assert (= var2392!4 (str.++ var2392!3 "srconly")))
(assert true) ; Non Conditional
(define-const var701 var1589 (map/61721324 var543)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (not (= var701 null-var1589))) ; Negate: Cond: $r5 == null  
(define-const var1464 var1589 (map/61721324 var543)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
(assert true)
(define-const var2872 String (toString/-522406933 (cast-from-var1589-to-var1734 var1464))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2392!4 var2872)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2392!5 String)
(assert (= var2392!5 (str.++ var2392!4 var2872)))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2392!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2392!6 String)
(assert (= var2392!6 (str.++ var2392!5 "}")))
(assert true)
(define-const var3999 String (toString/-2075883882 var2392!6)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], java.io.File), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), destmustexist/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], boolean), map/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1589-to-var1734=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var698=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector, var543=r1, var2392=$r0, var650=java.io.File, var1808=$r2, var3274=$r3, var2622=$r4, var2289=$z0, var1589=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var701=$r5, var1464=$r9, var1734=java.lang.Object, var2872=$r10, var3999=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector=var698, r1=var543, $r0=var2392, java.io.File=var650, $r2=var1808, $r3=var3274, $r4=var2622, $z0=var2289, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var1589, $r5=var701, $r9=var1464, java.lang.Object=var1734, $r10=var2872, $r11=var3999}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ");	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7