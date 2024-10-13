(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2712 0)
(declare-sort var2198 0)
(declare-sort var3475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-1986514199 (var2712) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ifCond/-1986514199 (var2712) var3475)
(declare-fun unlessCond/-1986514199 (var2712) var3475)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2712 var2712)
(declare-const null-String String)
(declare-const null-var3475 var3475)
(declare-const var101 var2712) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry 
(assert (not (= var101 null-var2712)))
(define-const var230 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var230)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var230!1 String)
(assert (= var230!1 ""))
(define-const var1836 String (name/-1986514199 var101)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name> 
(assert (not (= var1836 null-String))) ; Cond: $r2 != null 
(define-const var502 String (name/-1986514199 var101)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name> 
(assert true)
;(assert (append/672562846 var230!1 var502)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var230!2 String)
(assert (= var230!2 (str.++ var230!1 var502)))
(assert true) ; Non Conditional
(define-const var2717 var3475 (ifCond/-1986514199 var101)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object ifCond> 
 ; Statement: if $r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(assert (not (not (= var2717 null-var3475)))) ; Negate: Cond: $r4 != null  
(define-const var1371 var3475 (unlessCond/-1986514199 var101)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object unlessCond> 
 ; Statement: if $r9 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1371 null-var3475)) ; Cond: $r9 == null 
(assert true)
(define-const var1002 String (toString/-2075883882 var230!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-1986514199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ifCond/-1986514199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.Object), unlessCond/-1986514199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2712=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry, var101=r1, var230=$r0, var1836=$r2, var2198=null_type, var502=$r3, var3475=java.lang.Object, var2717=$r4, var1371=$r9, var1002=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry=var2712, r1=var101, $r0=var230, $r2=var1836, null_type=var2198, $r3=var502, java.lang.Object=var3475, $r4=var2717, $r9=var1371, $r11=var1002}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object ifCond>;	if $r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object unlessCond>;	if $r9 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5