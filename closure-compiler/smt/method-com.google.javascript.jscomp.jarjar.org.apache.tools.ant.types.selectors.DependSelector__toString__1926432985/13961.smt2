(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var154 0)
(declare-sort var729 0)
(declare-sort var891 0)
(declare-sort var2302 0)
(declare-sort var3660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/-351885313 (var891) var729)
(declare-fun cast-from-var154-to-var891 (var154) var891)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun granularity/-351885313 (var891) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun map/-351885313 (var891) var2302)
(declare-fun toString/-522406933 (var3660) String)
(declare-fun cast-from-var2302-to-var3660 (var2302) var3660)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var154 var154)
(declare-const null-var729 var729)
(declare-const null-var2302 var2302)
(declare-const var3243 var154) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector 
(assert (not (= var3243 null-var154)))
(define-const var1324 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1324 "{dependselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ") 
(declare-const var1324!1 String)
(assert (= var1324!1 "{dependselector targetdir: "))
(define-const var673 var729 (targetdir/-351885313 (cast-from-var154-to-var891 var3243))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
(assert (not (not (= var673 null-var729)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var1324!1 "NOT YET SET")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET") 
(declare-const var1324!2 String)
(assert (= var1324!2 (str.++ var1324!1 "NOT YET SET")))
 ; Statement: goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2651 String (append/672562846 var1324!2 " granularity: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ") 
(declare-const var1324!3 String)
(assert (= var1324!3 (str.++ var1324!2 " granularity: ")))
(define-const var464 Int (granularity/-351885313 (cast-from-var154-to-var891 var3243))) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity> 
(assert true)
;(assert (append/-1001720160 var2651 var464)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2651!1 String)
(assert (str.prefixof var2651 var2651!1))
(define-const var3497 var2302 (map/-351885313 (cast-from-var154-to-var891 var3243))) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (not (= var3497 null-var2302))) ; Negate: Cond: $r6 == null  
(assert true)
;(assert (append/672562846 var1324!3 " mapper: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" mapper: ") 
(declare-const var1324!4 String)
(assert (= var1324!4 (str.++ var1324!3 " mapper: ")))
(define-const var1342 var2302 (map/-351885313 (cast-from-var154-to-var891 var3243))) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
(assert true)
(define-const var3261 String (toString/-522406933 (cast-from-var2302-to-var3660 var1342))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1324!4 var3261)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1324!5 String)
(assert (= var1324!5 (str.++ var1324!4 var3261)))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1324!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1324!6 String)
(assert (= var1324!6 (str.++ var1324!5 "}")))
(assert true)
(define-const var898 String (toString/-2075883882 var1324!6)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], java.io.File), cast-from-var154-to-var891=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), granularity/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), map/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2302-to-var3660=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var154=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector, var3243=r1, var1324=$r0, var729=java.io.File, var891=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector, var673=$r2, var2651=$r5, var464=$i0, var2302=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var3497=$r6, var1342=$r10, var3660=java.lang.Object, var3261=$r11, var898=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector=var154, r1=var3243, $r0=var1324, java.io.File=var729, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector=var891, $r2=var673, $r5=var2651, $i0=var464, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var2302, $r6=var3497, $r10=var1342, java.lang.Object=var3660, $r11=var3261, $r12=var898}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET");	goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ")];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" mapper: ");	$r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5