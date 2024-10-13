(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2897 0)
(declare-sort var1426 0)
(declare-sort var3687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3687-init () var3687)
(declare-fun <init>/111641415 (var3687) void)
(declare-fun getName/1618348824 (var1426) String)
(declare-fun field/-1493541306 (var3687) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun name/-1493541306 (var3687) String)
(declare-const null-var2897 var2897)
(declare-const null-var1426 var1426)
(declare-const null-var3687 var3687)
(declare-const var2025 var2897) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.FieldParser 
(assert (not (= var2025 null-var2897)))
(declare-const var401 var1426) ; Statement: r1 := @parameter0: java.lang.reflect.Field 
(assert (not (= var401 null-var1426)))
(define-const var1773 var3687 var3687-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement 
(assert true)
;(assert (<init>/111641415 var1773)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement: void <init>()>() 

(declare-const var1773!1 var3687)
(assert true)
(define-const var3145 String (getName/1618348824 var401)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>() 
(declare-const var1773!2 var3687)
(assert (not (= var1773!2 null-var3687)))
(assert (= (field/-1493541306 var1773!2) var3145)) ; Statement: $r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement: java.lang.String field> = $r2 
(define-const var3720 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3720)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3720!1 String)
(assert (= var3720!1 ""))
(assert true)
(define-const var39 String (append/672562846 var3720!1 "-")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3720!2 String)
(assert (= var3720!2 (str.++ var3720!1 "-")))
(assert true)
(define-const var1953 String (getName/1618348824 var401)) ; Statement: $r4 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var25 String (append/672562846 var39 var1953)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var39!1 String)
(assert (= var39!1 (str.++ var39 var1953)))
(assert true)
(define-const var3868 String (toString/-2075883882 var25)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1773!3 var3687)
(assert (not (= var1773!3 null-var3687)))
(assert (= (name/-1493541306 var1773!3) var3868)) ; Statement: $r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement: java.lang.String name> = $r7 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3687-init=([], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement), <init>/111641415=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement], void), getName/1618348824=([java.lang.reflect.Field], java.lang.String), field/-1493541306=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), name/-1493541306=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement], java.lang.String)}
; {var2897=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.FieldParser, var2025=r8, var1426=java.lang.reflect.Field, var401=r1, var3687=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement, var1773=$r0, var3145=$r2, var3720=$r3, var39=$r5, var1953=$r4, var25=$r6, var3868=$r7}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.FieldParser=var2897, r8=var2025, java.lang.reflect.Field=var1426, r1=var401, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement=var3687, $r0=var1773, $r2=var3145, $r3=var3720, $r5=var39, $r4=var1953, $r6=var25, $r7=var3868}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.FieldParser;	r1 := @parameter0: java.lang.reflect.Field;	$r0 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement;	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>();	$r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement: java.lang.String field> = $r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r4 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement: java.lang.String name> = $r7;	return $r0
;block_num 1