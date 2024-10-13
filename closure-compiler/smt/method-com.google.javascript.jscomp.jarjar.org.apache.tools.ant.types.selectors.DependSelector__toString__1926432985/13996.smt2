(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2256 0)
(declare-sort var3798 0)
(declare-sort var1958 0)
(declare-sort var2412 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun targetdir/-351885313 (var1958) var3798)
(declare-fun cast-from-var2256-to-var1958 (var2256) var1958)
(declare-fun getName/1128186653 (var3798) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun granularity/-351885313 (var1958) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun map/-351885313 (var1958) var2412)
(declare-fun toString/-522406933 (var3509) String)
(declare-fun cast-from-var2412-to-var3509 (var2412) var3509)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2256 var2256)
(declare-const null-var3798 var3798)
(declare-const null-var2412 var2412)
(declare-const var3179 var2256) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector 
(assert (not (= var3179 null-var2256)))
(define-const var2449 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2449 "{dependselector targetdir: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ") 
(declare-const var2449!1 String)
(assert (= var2449!1 "{dependselector targetdir: "))
(define-const var3780 var3798 (targetdir/-351885313 (cast-from-var2256-to-var1958 var3179))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
(assert (not (= var3780 null-var3798))) ; Cond: $r2 != null 
(define-const var3512 var3798 (targetdir/-351885313 (cast-from-var2256-to-var1958 var3179))) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir> 
(assert true)
(define-const var756 String (getName/1128186653 var3512)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var2449!1 var756)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2449!2 String)
(assert (= var2449!2 (str.++ var2449!1 var756)))
(assert true) ; Non Conditional
(assert true)
(define-const var2557 String (append/672562846 var2449!2 " granularity: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ") 
(declare-const var2449!3 String)
(assert (= var2449!3 (str.++ var2449!2 " granularity: ")))
(define-const var2376 Int (granularity/-351885313 (cast-from-var2256-to-var1958 var3179))) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity> 
(assert true)
;(assert (append/-1001720160 var2557 var2376)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2557!1 String)
(assert (str.prefixof var2557 var2557!1))
(define-const var336 var2412 (map/-351885313 (cast-from-var2256-to-var1958 var3179))) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
 ; Statement: if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement> 
(assert (not (= var336 null-var2412))) ; Negate: Cond: $r6 == null  
(assert true)
;(assert (append/672562846 var2449!3 " mapper: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" mapper: ") 
(declare-const var2449!4 String)
(assert (= var2449!4 (str.++ var2449!3 " mapper: ")))
(define-const var2667 var2412 (map/-351885313 (cast-from-var2256-to-var1958 var3179))) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map> 
(assert true)
(define-const var3377 String (toString/-522406933 (cast-from-var2412-to-var3509 var2667))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2449!4 var3377)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2449!5 String)
(assert (= var2449!5 (str.++ var2449!4 var3377)))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2449!5 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2449!6 String)
(assert (= var2449!6 (str.++ var2449!5 "}")))
(assert true)
(define-const var2818 String (toString/-2075883882 var2449!6)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), targetdir/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], java.io.File), cast-from-var2256-to-var1958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), granularity/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), map/-351885313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2412-to-var3509=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2256=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector, var3179=r1, var2449=$r0, var3798=java.io.File, var1958=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector, var3780=$r2, var3512=$r3, var756=$r4, var2557=$r5, var2376=$i0, var2412=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var336=$r6, var2667=$r10, var3509=java.lang.Object, var3377=$r11, var2818=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector=var2256, r1=var3179, $r0=var2449, java.io.File=var3798, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.MappingSelector=var1958, $r2=var3780, $r3=var3512, $r4=var756, $r5=var2557, $i0=var2376, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var2412, $r6=var336, $r10=var2667, java.lang.Object=var3509, $r11=var3377, $r12=var2818}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dependselector targetdir: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: java.io.File targetdir>;	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: int granularity>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Mapper mapperElement>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" mapper: ");	$r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DependSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper map>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5