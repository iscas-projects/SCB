(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1945 0)
(declare-sort var131 0)
(declare-sort var3595 0)
(declare-sort var2166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/61721324 (var1945) var131)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun destmustexist/61721324 (var1945) Bool)
(declare-fun map/61721324 (var1945) var3595)
(declare-fun toString/-522406933 (var2166) String)
(declare-fun cast-from-var3595-to-var2166 (var3595) var2166)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1945 var1945)
(declare-const null-var131 var131)
(declare-const null-var3595 var3595)
(declare-const var1331 var1945) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector 
(assert (not (= var1331 null-var1945)))
(define-const var607 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var607 "{presentselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ") 
(declare-const var607!1 String)
(assert (= var607!1 "{presentselector targetdir: "))
(define-const var2944 var131 (targetdir/61721324 var1331)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir> 
(assert (not (not (= var2944 null-var131)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var607!1 "NOT YET SET")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET") 
(declare-const var607!2 String)
(assert (= var607!2 (str.++ var607!1 "NOT YET SET")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var607!2 " present: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ") 
(declare-const var607!3 String)
(assert (= var607!3 (str.++ var607!2 " present: ")))
(define-const var3334 Bool (destmustexist/61721324 var1331)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly") 
(assert (not (= (ite var3334 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var607!3 "both")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("both") 
(declare-const var607!4 String)
(assert (= var607!4 (str.++ var607!3 "both")))
 ; Statement: goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>] 
(assert true) ; Non Conditional
(define-const var2565 var3595 (map/61721324 var1331)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (not (= var2565 null-var3595))) ; Negate: Cond: $r5 == null  
(define-const var3672 var3595 (map/61721324 var1331)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
(assert true)
(define-const var590 String (toString/-522406933 (cast-from-var3595-to-var2166 var3672))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var607!4 var590)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var607!5 String)
(assert (= var607!5 (str.++ var607!4 var590)))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var607!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var607!6 String)
(assert (= var607!6 (str.++ var607!5 "}")))
(assert true)
(define-const var3021 String (toString/-2075883882 var607!6)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], java.io.File), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), destmustexist/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], boolean), map/61721324=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3595-to-var2166=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1945=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector, var1331=r1, var607=$r0, var131=java.io.File, var2944=$r2, var3334=$z0, var3595=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var2565=$r5, var3672=$r9, var2166=java.lang.Object, var590=$r10, var3021=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector=var1945, r1=var1331, $r0=var607, java.io.File=var131, $r2=var2944, $z0=var3334, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var3595, $r5=var2565, $r9=var3672, java.lang.Object=var2166, $r10=var590, $r11=var3021}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{presentselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: java.io.File targetdir>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" present: ");	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: boolean destmustexist>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("srconly");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("both");	goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>];	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r5 == null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.PresentSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7