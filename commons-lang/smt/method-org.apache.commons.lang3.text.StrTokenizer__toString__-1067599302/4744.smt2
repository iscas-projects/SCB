(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2229 0)
(declare-sort var3775 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokens/1491220258 (var2229) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTokenList/1098449790 (var2229) var3775)
(declare-fun append/-1031950772 (String var1253) String)
(declare-fun cast-from-var3775-to-var1253 (var3775) var1253)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2229 var2229)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1053 var2229) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrTokenizer 
(assert (not (= var1053 null-var2229)))
(define-const var3605 (Array Int String) (tokens/1491220258 var1053)) ; Statement: $r1 = r0.<org.apache.commons.lang3.text.StrTokenizer: java.lang.String[] tokens> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3605 null-__Array__Int__String__))) ; Cond: $r1 != null 
(define-const var2818 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2818)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2818!1 String)
(assert (= var2818!1 ""))
(assert true)
(define-const var1926 String (append/672562846 var2818!1 "StrTokenizer")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("StrTokenizer") 
(declare-const var2818!2 String)
(assert (= var2818!2 (str.++ var2818!1 "StrTokenizer")))
(assert true)
(define-const var3527 var3775 (getTokenList/1098449790 var1053)) ; Statement: $r3 = virtualinvoke r0.<org.apache.commons.lang3.text.StrTokenizer: java.util.List getTokenList()>() 
(assert true)
(define-const var1370 String (append/-1031950772 var1926 (cast-from-var3775-to-var1253 var3527))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1926!1 String)
(assert (str.prefixof var1926 var1926!1))
(assert true)
(define-const var1617 String (toString/-2075883882 var1370)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {tokens/1491220258=([org.apache.commons.lang3.text.StrTokenizer], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTokenList/1098449790=([org.apache.commons.lang3.text.StrTokenizer], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3775-to-var1253=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2229=org.apache.commons.lang3.text.StrTokenizer, var1053=r0, var3605=$r1, var2818=$r2, var1926=$r4, var3775=java.util.List, var3527=$r3, var1253=java.lang.Object, var1370=$r5, var1617=$r6}
; {org.apache.commons.lang3.text.StrTokenizer=var2229, r0=var1053, $r1=var3605, $r2=var2818, $r4=var1926, java.util.List=var3775, $r3=var3527, java.lang.Object=var1253, $r5=var1370, $r6=var1617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrTokenizer;	$r1 = r0.<org.apache.commons.lang3.text.StrTokenizer: java.lang.String[] tokens>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("StrTokenizer");	$r3 = virtualinvoke r0.<org.apache.commons.lang3.text.StrTokenizer: java.util.List getTokenList()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2