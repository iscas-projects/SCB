(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3621 0)
(declare-sort var3118 0)
(declare-sort var2375 0)
(declare-sort var1020 0)
(declare-sort var3381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/-351885313 (var2375) var3118)
(declare-fun cast-from-var3621-to-var2375 (var3621) var2375)
(declare-fun getName/1128186653 (var3118) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun granularity/-351885313 (var2375) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun map/-351885313 (var2375) var1020)
(declare-fun mapperElement/-351885313 (var2375) var3381)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3621 var3621)
(declare-const null-var3118 var3118)
(declare-const null-var1020 var1020)
(declare-const null-var3381 var3381)
(declare-const var3263 var3621) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector 
(assert (not (= var3263 null-var3621)))
(define-const var1042 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1042 "{dependselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ") 
(declare-const var1042!1 String)
(assert (= var1042!1 "{dependselector targetdir: "))
(define-const var2944 var3118 (targetdir/-351885313 (cast-from-var3621-to-var2375 var3263))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
(assert (not (= var2944 null-var3118))) ; Cond: $r2 != null 
(define-const var1115 var3118 (targetdir/-351885313 (cast-from-var3621-to-var2375 var3263))) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
(assert true)
(define-const var3182 String (getName/1128186653 var1115)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1042!1 var3182)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1042!2 String)
(assert (= var1042!2 (str.++ var1042!1 var3182)))
(assert true) ; Non Conditional
(assert true)
(define-const var2956 String (append/672562846 var1042!2 " granularity: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ") 
(declare-const var1042!3 String)
(assert (= var1042!3 (str.++ var1042!2 " granularity: ")))
(define-const var1066 Int (granularity/-351885313 (cast-from-var3621-to-var2375 var3263))) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity> 
(assert true)
;(assert (append/-1001720160 var2956 var1066)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2956!1 String)
(assert (str.prefixof var2956 var2956!1))
(define-const var7 var1020 (map/-351885313 (cast-from-var3621-to-var2375 var3263))) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (= var7 null-var1020)) ; Cond: $r6 == null 
(define-const var3530 var3381 (mapperElement/-351885313 (cast-from-var3621-to-var2375 var3263))) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
 ; Statement: if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= var3530 null-var3381)) ; Cond: $r7 == null 
(assert true)
;(assert (append/672562846 var1042!3 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1042!4 String)
(assert (= var1042!4 (str.++ var1042!3 "}")))
(assert true)
(define-const var901 String (toString/-2075883882 var1042!4)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], java.io.File), cast-from-var3621-to-var2375=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), granularity/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), map/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), mapperElement/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector, var3263=r1, var1042=$r0, var3118=java.io.File, var2375=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector, var2944=$r2, var1115=$r3, var3182=$r4, var2956=$r5, var1066=$i0, var1020=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var7=$r6, var3381=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper, var3530=$r7, var901=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector=var3621, r1=var3263, $r0=var1042, java.io.File=var3118, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector=var2375, $r2=var2944, $r3=var1115, $r4=var3182, $r5=var2956, $i0=var1066, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var1020, $r6=var7, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper=var3381, $r7=var3530, $r12=var901}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5