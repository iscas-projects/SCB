(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2796 0)
(declare-sort var3930 0)
(declare-sort var2658 0)
(declare-sort var207 0)
(declare-sort var2673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/-351885313 (var2658) var3930)
(declare-fun cast-from-var2796-to-var2658 (var2796) var2658)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun granularity/-351885313 (var2658) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun map/-351885313 (var2658) var207)
(declare-fun mapperElement/-351885313 (var2658) var2673)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2796 var2796)
(declare-const null-var3930 var3930)
(declare-const null-var207 var207)
(declare-const null-var2673 var2673)
(declare-const var1580 var2796) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector 
(assert (not (= var1580 null-var2796)))
(define-const var2321 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2321 "{dependselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ") 
(declare-const var2321!1 String)
(assert (= var2321!1 "{dependselector targetdir: "))
(define-const var1619 var3930 (targetdir/-351885313 (cast-from-var2796-to-var2658 var1580))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
(assert (not (not (= var1619 null-var3930)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var2321!1 "NOT YET SET")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET") 
(declare-const var2321!2 String)
(assert (= var2321!2 (str.++ var2321!1 "NOT YET SET")))
 ; Statement: goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2180 String (append/672562846 var2321!2 " granularity: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ") 
(declare-const var2321!3 String)
(assert (= var2321!3 (str.++ var2321!2 " granularity: ")))
(define-const var3966 Int (granularity/-351885313 (cast-from-var2796-to-var2658 var1580))) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity> 
(assert true)
;(assert (append/-1001720160 var2180 var3966)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2180!1 String)
(assert (str.prefixof var2180 var2180!1))
(define-const var3891 var207 (map/-351885313 (cast-from-var2796-to-var2658 var1580))) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (= var3891 null-var207)) ; Cond: $r6 == null 
(define-const var1822 var2673 (mapperElement/-351885313 (cast-from-var2796-to-var2658 var1580))) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
 ; Statement: if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= var1822 null-var2673)) ; Cond: $r7 == null 
(assert true)
;(assert (append/672562846 var2321!3 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2321!4 String)
(assert (= var2321!4 (str.++ var2321!3 "}")))
(assert true)
(define-const var3762 String (toString/-2075883882 var2321!4)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], java.io.File), cast-from-var2796-to-var2658=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), granularity/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), map/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), mapperElement/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2796=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector, var1580=r1, var2321=$r0, var3930=java.io.File, var2658=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector, var1619=$r2, var2180=$r5, var3966=$i0, var207=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var3891=$r6, var2673=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper, var1822=$r7, var3762=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector=var2796, r1=var1580, $r0=var2321, java.io.File=var3930, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector=var2658, $r2=var1619, $r5=var2180, $i0=var3966, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var207, $r6=var3891, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper=var2673, $r7=var1822, $r12=var3762}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NOT YET SET");	goto [?= $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ")];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5