(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1534 0)
(declare-sort var534 0)
(declare-sort var2134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun alphabet/988383717 (var1534) var534)
(declare-fun append/-1031950772 (String var2134) String)
(declare-fun cast-from-var534-to-var2134 (var534) var2134)
(declare-fun bitsPerChar/990560183 (var534) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1534 var1534)
(declare-const var3639 var1534) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding 
(assert (not (= var3639 null-var1534)))
(define-const var1451 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1451 "BaseEncoding.")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("BaseEncoding.") 
(declare-const var1451!1 String)
(assert (= var1451!1 "BaseEncoding."))
(define-const var2191 var534 (alphabet/988383717 var3639)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet> 
(assert true)
;(assert (append/-1031950772 var1451!1 (cast-from-var534-to-var2134 var2191))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1451!2 String)
(assert (str.prefixof var1451!1 var1451!2))
(define-const var2778 var534 (alphabet/988383717 var3639)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet> 
(define-const var968 Int (bitsPerChar/990560183 var2778)) ; Statement: $i0 = $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: int bitsPerChar> 
(define-const var492 Int (mod 8 var968)) ; Statement: $i1 = 8 % $i0 
 ; Statement: if $i1 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var492 0)) ; Cond: $i1 == 0 
(assert true)
(define-const var1191 String (toString/-2075883882 var1451!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), alphabet/988383717=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var534-to-var2134=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet], java.lang.Object), bitsPerChar/990560183=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1534=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, var3639=r1, var1451=$r0, var534=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var2191=$r2, var2134=java.lang.Object, var2778=$r3, var968=$i0, var492=$i1, var1191=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding=var1534, r1=var3639, $r0=var1451, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var534, $r2=var2191, java.lang.Object=var2134, $r3=var2778, $i0=var968, $i1=var492, $r8=var1191}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("BaseEncoding.");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet>;	$i0 = $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: int bitsPerChar>;	$i1 = 8 % $i0;	if $i1 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2