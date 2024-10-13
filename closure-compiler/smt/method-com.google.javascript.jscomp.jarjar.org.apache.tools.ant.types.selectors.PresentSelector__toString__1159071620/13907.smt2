(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var525 0)
(declare-sort var3656 0)
(declare-sort var1763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/61721324 (var793) var525)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun destmustexist/61721324 (var793) Bool)
(declare-fun map/61721324 (var793) var3656)
(declare-fun mapperElement/61721324 (var793) var1763)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var793 var793)
(declare-const null-var525 var525)
(declare-const null-var3656 var3656)
(declare-const null-var1763 var1763)
(declare-const var1039 var793) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector 
(assert (not (= var1039 null-var793)))
(define-const var2845 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2845 "{presentselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ") 
(declare-const var2845!1 String)
(assert (= var2845!1 "{presentselector targetdir: "))
(define-const var2023 var525 (targetdir/61721324 var1039)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert (not (not (= var2023 null-var525)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var2845!1 "NOT YET SET")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET") 
(declare-const var2845!2 String)
(assert (= var2845!2 (str.++ var2845!1 "NOT YET SET")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2845!2 " present: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ") 
(declare-const var2845!3 String)
(assert (= var2845!3 (str.++ var2845!2 " present: ")))
(define-const var2657 Bool (destmustexist/61721324 var1039)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(assert (= (ite var2657 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2845!3 "srconly")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(declare-const var2845!4 String)
(assert (= var2845!4 (str.++ var2845!3 "srconly")))
(assert true) ; Non Conditional
(define-const var3909 var3656 (map/61721324 var1039)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (= var3909 null-var3656)) ; Cond: $r5 == null 
(define-const var1983 var1763 (mapperElement/61721324 var1039)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
 ; Statement: if $r6 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= var1983 null-var1763)) ; Cond: $r6 == null 
(assert true)
;(assert (append/672562846 var2845!4 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2845!5 String)
(assert (= var2845!5 (str.++ var2845!4 "}")))
(assert true)
(define-const var1290 String (toString/-2075883882 var2845!5)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], java.io.File), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), destmustexist/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], boolean), map/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), mapperElement/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var793=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector, var1039=r1, var2845=$r0, var525=java.io.File, var2023=$r2, var2657=$z0, var3656=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var3909=$r5, var1763=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper, var1983=$r6, var1290=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector=var793, r1=var1039, $r0=var2845, java.io.File=var525, $r2=var2023, $z0=var2657, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var3656, $r5=var3909, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper=var1763, $r6=var1983, $r11=var1290}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ");	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	if $r6 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7