(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3013 0)
(declare-sort var1390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun regexp/1021178211 (var3013) var1390)
(declare-fun isGlobal/-714708665 (var1390) Bool)
(declare-fun isIgnoreCase/-5605912 (var1390) Bool)
(declare-fun isMultiline/1152381955 (var1390) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3013 var3013)
(declare-const var358 var3013) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeRegExp 
(assert (not (= var358 null-var3013)))
(define-const var846 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var846 3)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(3) 

(declare-const var846!1 String)
(declare-const var2403 Int)
(define-const var1661 var1390 (regexp/1021178211 var358)) ; Statement: $r2 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp> 
(assert true)
(define-const var1680 Bool (isGlobal/-714708665 var1661)) ; Statement: $z0 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.RegExp: boolean isGlobal()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp> 
(assert (= (ite var1680 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2709 var1390 (regexp/1021178211 var358)) ; Statement: $r3 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp> 
(assert true)
(define-const var3794 Bool (isIgnoreCase/-5605912 var2709)) ; Statement: $z1 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.regexp.RegExp: boolean isIgnoreCase()>() 
 ; Statement: if $z1 == 0 goto $r4 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp> 
(assert (= (ite var3794 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1532 var1390 (regexp/1021178211 var358)) ; Statement: $r4 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp> 
(assert true)
(define-const var2170 Bool (isMultiline/1152381955 var1532)) ; Statement: $z2 = virtualinvoke $r4.<jdk.nashorn.internal.runtime.regexp.RegExp: boolean isMultiline()>() 
 ; Statement: if $z2 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2170 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2357 String (toString/-2075883882 var846!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), regexp/1021178211=([jdk.nashorn.internal.objects.NativeRegExp], jdk.nashorn.internal.runtime.regexp.RegExp), isGlobal/-714708665=([jdk.nashorn.internal.runtime.regexp.RegExp], boolean), isIgnoreCase/-5605912=([jdk.nashorn.internal.runtime.regexp.RegExp], boolean), isMultiline/1152381955=([jdk.nashorn.internal.runtime.regexp.RegExp], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3013=jdk.nashorn.internal.objects.NativeRegExp, var358=r1, var846=$r0, var2403=3, var1390=jdk.nashorn.internal.runtime.regexp.RegExp, var1661=$r2, var1680=$z0, var2709=$r3, var3794=$z1, var1532=$r4, var2170=$z2, var2357=$r5}
; {jdk.nashorn.internal.objects.NativeRegExp=var3013, r1=var358, $r0=var846, 3=var2403, jdk.nashorn.internal.runtime.regexp.RegExp=var1390, $r2=var1661, $z0=var1680, $r3=var2709, $z1=var3794, $r4=var1532, $z2=var2170, $r5=var2357}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeRegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(3);	$r2 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp>;	$z0 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.RegExp: boolean isGlobal()>();	if $z0 == 0 goto $r3 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp>;	$r3 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp>;	$z1 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.regexp.RegExp: boolean isIgnoreCase()>();	if $z1 == 0 goto $r4 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp>;	$r4 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp>;	$z2 = virtualinvoke $r4.<jdk.nashorn.internal.runtime.regexp.RegExp: boolean isMultiline()>();	if $z2 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4