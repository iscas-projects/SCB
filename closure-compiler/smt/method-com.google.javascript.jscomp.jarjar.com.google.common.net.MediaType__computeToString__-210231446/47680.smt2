(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2761 0)
(declare-sort var555 0)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-470314271 (var2761) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun subtype/-470314271 (var2761) String)
(declare-fun parameters/-470314271 (var2761) var555)
(declare-fun isEmpty/942406833 (var2840) Bool)
(declare-fun cast-from-var555-to-var2840 (var555) var2840)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2761 var2761)
(declare-const var1407 var2761) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType 
(assert (not (= var1407 null-var2761)))
(define-const var2937 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2937)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2937!1 String)
(assert (= var2937!1 ""))
(define-const var107 String (type/-470314271 var1407)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type> 
(assert true)
(define-const var811 String (append/672562846 var2937!1 var107)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2937!2 String)
(assert (= var2937!2 (str.++ var2937!1 var107)))
(assert true)
(define-const var1259 String (append/-1166366385 var811 47)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var811!1 String)
(assert (str.prefixof var811 var811!1))
(define-const var3217 String (subtype/-470314271 var1407)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String subtype> 
(assert true)
(define-const var1814 String (append/672562846 var1259 var3217)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1259!1 String)
(assert (= var1259!1 (str.++ var1259 var3217)))
(define-const var1715 var555 (parameters/-470314271 var1407)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap parameters> 
(assert true)
(define-const var547 Bool (isEmpty/942406833 (cast-from-var555-to-var2840 var1715))) ; Statement: $z0 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var547 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2672 String (toString/-2075883882 var1814)) ; Statement: $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), subtype/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], java.lang.String), parameters/-470314271=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap), isEmpty/942406833=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap], boolean), cast-from-var555-to-var2840=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2761=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var1407=r1, var2937=$r0, var107=$r2, var811=$r3, var1259=$r5, var3217=$r4, var1814=r6, var555=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap, var1715=$r7, var2840=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap, var547=$z0, var2672=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var2761, r1=var1407, $r0=var2937, $r2=var107, $r3=var811, $r5=var1259, $r4=var3217, r6=var1814, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap=var555, $r7=var1715, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultimap=var2840, $z0=var547, $r8=var2672}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String type>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: java.lang.String subtype>;	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap parameters>;	$z0 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableListMultimap: boolean isEmpty()>();	if $z0 != 0 goto $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2