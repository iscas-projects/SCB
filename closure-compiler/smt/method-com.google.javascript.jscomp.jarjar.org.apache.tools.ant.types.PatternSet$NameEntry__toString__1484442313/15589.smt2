(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var3649 0)
(declare-sort var166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-1986514199 (var1688) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ifCond/-1986514199 (var1688) var166)
(declare-fun unlessCond/-1986514199 (var1688) var166)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1688 var1688)
(declare-const null-String String)
(declare-const null-var166 var166)
(declare-const var2043 var1688) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry 
(assert (not (= var2043 null-var1688)))
(define-const var2390 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2390)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2390!1 String)
(assert (= var2390!1 ""))
(define-const var1237 String (name/-1986514199 var2043)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name> 
(assert (not (not (= var1237 null-String)))) ; Negate: Cond: $r2 != null  
(assert true)
;(assert (append/672562846 var2390!1 "noname")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("noname") 
(declare-const var2390!2 String)
(assert (= var2390!2 (str.++ var2390!1 "noname")))
 ; Statement: goto [?= $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object ifCond>] 
(assert true) ; Non Conditional
(define-const var1166 var166 (ifCond/-1986514199 var2043)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object ifCond> 
 ; Statement: if $r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(assert (not (not (= var1166 null-var166)))) ; Negate: Cond: $r4 != null  
(define-const var1187 var166 (unlessCond/-1986514199 var2043)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object unlessCond> 
 ; Statement: if $r9 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1187 null-var166)) ; Cond: $r9 == null 
(assert true)
(define-const var3926 String (toString/-2075883882 var2390!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-1986514199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ifCond/-1986514199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.Object), unlessCond/-1986514199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1688=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry, var2043=r1, var2390=$r0, var1237=$r2, var3649=null_type, var166=java.lang.Object, var1166=$r4, var1187=$r9, var3926=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry=var1688, r1=var2043, $r0=var2390, $r2=var1237, null_type=var3649, java.lang.Object=var166, $r4=var1166, $r9=var1187, $r11=var3926}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("noname");	goto [?= $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object ifCond>];	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object ifCond>;	if $r4 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet$NameEntry: java.lang.Object unlessCond>;	if $r9 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5