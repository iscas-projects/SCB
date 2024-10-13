(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var209 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun omitNullValues/1772161488 (var209) Bool)
(declare-fun omitEmptyValues/1772161488 (var209) Bool)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun className/1772161488 (var209) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun holderHead/1772161488 (var209) var1643)
(declare-fun next/1983737225 (var1643) var1643)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var209 var209)
(declare-const null-var1643 var1643)
(declare-const var2099 var209) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper 
(assert (not (= var2099 null-var209)))
(define-const var3642 Bool (omitNullValues/1772161488 var2099)) ; Statement: z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: boolean omitNullValues> 
(define-const var1729 Bool (omitEmptyValues/1772161488 var2099)) ; Statement: z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: boolean omitEmptyValues> 
(define-const var3655 String "") ; Statement: r14 = "" 
(define-const var397 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var397 32)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(32) 

(declare-const var397!1 String)
(declare-const var1379 Int)
(define-const var402 String (className/1772161488 var2099)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: java.lang.String className> 
(assert true)
(define-const var2038 String (append/672562846 var397!1 var402)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var397!2 String)
(assert (= var397!2 (str.++ var397!1 var402)))
(assert true)
(define-const var2295 String (append/-1166366385 var2038 123)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2038!1 String)
(assert (str.prefixof var2038 var2038!1))
(define-const var2355 var1643 (holderHead/1772161488 var2099)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder holderHead> 
(define-const var2229 var1643 (next/1983737225 var2355)) ; Statement: r15 = $r5.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder next> 
(assert true) ; Non Conditional
 ; Statement: if r15 == null goto $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= var2229 null-var1643)) ; Cond: r15 == null 
(assert true)
(define-const var221 String (append/-1166366385 var2295 125)) ; Statement: $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2295!1 String)
(assert (str.prefixof var2295 var2295!1))
(assert true)
(define-const var324 String (toString/-2075883882 var221)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {omitNullValues/1772161488=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper], boolean), omitEmptyValues/1772161488=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper], boolean), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), className/1772161488=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), holderHead/1772161488=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder), next/1983737225=([com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder], com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var209=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper, var2099=r0, var3642=z0, var1729=z1, var3655=r14, var397=$r1, var1379=32, var402=$r2, var2038=$r3, var2295=r4, var1643=com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, var2355=$r5, var2229=r15, var221=$r6, var324=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper=var209, r0=var2099, z0=var3642, z1=var1729, r14=var3655, $r1=var397, 32=var1379, $r2=var402, $r3=var2038, r4=var2295, com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder=var1643, $r5=var2355, r15=var2229, $r6=var221, $r7=var324}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper;	z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: boolean omitNullValues>;	z1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: boolean omitEmptyValues>;	r14 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(32);	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: java.lang.String className>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder holderHead>;	r15 = $r5.<com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder: com.google.javascript.jscomp.jarjar.com.google.common.base.MoreObjects$ToStringHelper$ValueHolder next>;	if r15 == null goto $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3