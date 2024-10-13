(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var870 0)
(declare-sort var1327 0)
(declare-sort var549 0)
(declare-sort var1692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/61721324 (var870) var1327)
(declare-fun getName/1128186653 (var1327) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun destmustexist/61721324 (var870) Bool)
(declare-fun map/61721324 (var870) var549)
(declare-fun mapperElement/61721324 (var870) var1692)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var870 var870)
(declare-const null-var1327 var1327)
(declare-const null-var549 var549)
(declare-const null-var1692 var1692)
(declare-const var175 var870) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector 
(assert (not (= var175 null-var870)))
(define-const var1678 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1678 "{presentselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ") 
(declare-const var1678!1 String)
(assert (= var1678!1 "{presentselector targetdir: "))
(define-const var2116 var1327 (targetdir/61721324 var175)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert (not (= var2116 null-var1327))) ; Cond: $r2 != null 
(define-const var607 var1327 (targetdir/61721324 var175)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert true)
(define-const var2557 String (getName/1128186653 var607)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1678!1 var2557)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1678!2 String)
(assert (= var1678!2 (str.++ var1678!1 var2557)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1678!2 " present: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ") 
(declare-const var1678!3 String)
(assert (= var1678!3 (str.++ var1678!2 " present: ")))
(define-const var1370 Bool (destmustexist/61721324 var175)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(assert (= (ite var1370 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1678!3 "srconly")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(declare-const var1678!4 String)
(assert (= var1678!4 (str.++ var1678!3 "srconly")))
(assert true) ; Non Conditional
(define-const var2940 var549 (map/61721324 var175)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (= var2940 null-var549)) ; Cond: $r5 == null 
(define-const var1145 var1692 (mapperElement/61721324 var175)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
 ; Statement: if $r6 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= var1145 null-var1692)) ; Cond: $r6 == null 
(assert true)
;(assert (append/672562846 var1678!4 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1678!5 String)
(assert (= var1678!5 (str.++ var1678!4 "}")))
(assert true)
(define-const var1389 String (toString/-2075883882 var1678!5)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], java.io.File), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), destmustexist/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], boolean), map/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), mapperElement/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var870=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector, var175=r1, var1678=$r0, var1327=java.io.File, var2116=$r2, var607=$r3, var2557=$r4, var1370=$z0, var549=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var2940=$r5, var1692=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper, var1145=$r6, var1389=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector=var870, r1=var175, $r0=var1678, java.io.File=var1327, $r2=var2116, $r3=var607, $r4=var2557, $z0=var1370, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var549, $r5=var2940, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper=var1692, $r6=var1145, $r11=var1389}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ");	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	if $r6 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7