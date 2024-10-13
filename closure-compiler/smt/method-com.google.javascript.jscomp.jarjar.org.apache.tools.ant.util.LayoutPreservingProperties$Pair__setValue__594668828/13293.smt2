(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort var2049 0)
(declare-sort var3942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-2080466165 (var2105) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-2080466165 (var2105) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setText/-878633455 (var3942 String) void)
(declare-fun cast-from-var2105-to-var3942 (var2105) var3942)
(declare-const null-var2105 var2105)
(declare-const null-String String)
(declare-const var2467 var2105) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair 
(assert (not (= var2467 null-var2105)))
(declare-const var3298 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3298 null-String)))
(declare-const var2467!1 var2105)
(assert (not (= var2467!1 null-var2105)))
(assert (= (value/-2080466165 var2467!1) var3298)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String value> = r1 
(define-const var1320 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1320)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1320!1 String)
(assert (= var1320!1 ""))
(define-const var2630 String (name/-2080466165 var2467!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String name> 
(assert true)
(define-const var1785 String (append/672562846 var1320!1 var2630)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1320!2 String)
(assert (= var1320!2 (str.++ var1320!1 var2630)))
(assert true)
(define-const var1098 String (append/672562846 var1785 "=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var1785!1 String)
(assert (= var1785!1 (str.++ var1785 "=")))
(assert true)
(define-const var1032 String (append/672562846 var1098 var3298)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1098!1 String)
(assert (= var1098!1 (str.++ var1098 var3298)))
(assert true)
(define-const var3192 String (toString/-2075883882 var1032)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setText/-878633455 (cast-from-var2105-to-var3942 var2467!1) var3192)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: void setText(java.lang.String)>($r7) 

(declare-const var2467!2 var2105)
(declare-const var3192!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-2080466165=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-2080466165=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setText/-878633455=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$LogicalLine, java.lang.String], void), cast-from-var2105-to-var3942=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$LogicalLine)}
; {var2105=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair, var2467=r0, var3298=r1, var2049=null_type, var1320=$r2, var2630=$r3, var1785=$r4, var1098=$r5, var1032=$r6, var3192=$r7, var3942=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$LogicalLine}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair=var2105, r0=var2467, r1=var3298, null_type=var2049, $r2=var1320, $r3=var2630, $r4=var1785, $r5=var1098, $r6=var1032, $r7=var3192, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$LogicalLine=var3942}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair;	r1 := @parameter0: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String value> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: java.lang.String name>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties$Pair: void setText(java.lang.String)>($r7);	return
;block_num 1