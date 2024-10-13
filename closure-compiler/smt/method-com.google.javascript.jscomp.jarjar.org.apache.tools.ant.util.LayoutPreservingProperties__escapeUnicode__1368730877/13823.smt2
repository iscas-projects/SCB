(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1442 0)
(declare-sort var2334 0)
(declare-sort var993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2334_EscapeUnicode/1219969014 (Int) String)
(declare-fun append/-1031950772 (String var993) String)
(declare-fun cast-from-String-to-var993 (String) var993)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1442 var1442)
(declare-const null-Int Int)
(declare-const var580 var1442) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties 
(assert (not (= var580 null-var1442)))
(declare-const var2433 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2433 null-Int)))
(define-const var502 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var502)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var502!1 String)
(assert (= var502!1 ""))
(assert true)
(define-const var1478 String (append/672562846 var502!1 "\u005c")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var502!2 String)
(assert (= var502!2 (str.++ var502!1 "\u005c")))
(define-const var189 String (var2334_EscapeUnicode/1219969014 var2433)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnicodeUtil: java.lang.StringBuffer EscapeUnicode(char)>(c0) 
(assert true)
(define-const var2741 String (append/-1031950772 var1478 (cast-from-String-to-var993 var189))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var1478!1 String)
(assert (str.prefixof var1478 var1478!1))
(assert true)
(define-const var2095 String (toString/-2075883882 var2741)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2334_EscapeUnicode/1219969014=([char], java.lang.StringBuffer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var993=([java.lang.StringBuffer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1442=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties, var580=r5, var2433=c0, var502=$r0, var1478=$r2, var2334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnicodeUtil, var189=$r1, var993=java.lang.Object, var2741=$r3, var2095=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties=var1442, r5=var580, c0=var2433, $r0=var502, $r2=var1478, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnicodeUtil=var2334, $r1=var189, java.lang.Object=var993, $r3=var2741, $r4=var2095}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LayoutPreservingProperties;	c0 := @parameter0: char;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UnicodeUtil: java.lang.StringBuffer EscapeUnicode(char)>(c0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1