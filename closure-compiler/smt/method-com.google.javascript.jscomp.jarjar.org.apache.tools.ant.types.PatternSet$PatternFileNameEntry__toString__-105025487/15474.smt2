(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3868 0)
(declare-sort var1145 0)
(declare-sort var1576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/1484442313 (var1145) String)
(declare-fun cast-from-var3868-to-var1145 (var3868) var1145)
(declare-fun encoding/1769065817 (var3868) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3868 var3868)
(declare-const null-String String)
(declare-const var269 var3868) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry 
(assert (not (= var269 null-var3868)))
(assert true)
(define-const var3252 String (toString/1484442313 (cast-from-var3868-to-var1145 var269))) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String toString()>() 
(define-const var3328 String (encoding/1769065817 var269)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry: java.lang.String encoding> 
 ; Statement: if $r2 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var3328 null-String))) ; Cond: $r2 != null 
(define-const var1251 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1251)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1251!1 String)
(assert (= var1251!1 ""))
(assert true)
(define-const var2955 String (append/672562846 var1251!1 var3252)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1251!2 String)
(assert (= var1251!2 (str.++ var1251!1 var3252)))
(assert true)
(define-const var2220 String (append/672562846 var2955 ";encoding->")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";encoding->") 
(declare-const var2955!1 String)
(assert (= var2955!1 (str.++ var2955 ";encoding->")))
(define-const var1266 String (encoding/1769065817 var269)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry: java.lang.String encoding> 
(assert true)
(define-const var3627 String (append/672562846 var2220 var1266)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2220!1 String)
(assert (= var2220!1 (str.++ var2220 var1266)))
(assert true)
(define-const var2911 String (toString/-2075883882 var3627)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/1484442313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.String), cast-from-var3868-to-var1145=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry), encoding/1769065817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3868=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry, var269=r0, var1145=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry, var3252=r1, var3328=$r2, var1576=null_type, var1251=$r3, var2955=$r4, var2220=$r6, var1266=$r5, var3627=$r7, var2911=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry=var3868, r0=var269, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry=var1145, r1=var3252, $r2=var3328, null_type=var1576, $r3=var1251, $r4=var2955, $r6=var2220, $r5=var1266, $r7=var3627, $r8=var2911}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry;	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String toString()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry: java.lang.String encoding>;	if $r2 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";encoding->");	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$PatternFileNameEntry: java.lang.String encoding>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3