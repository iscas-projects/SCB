(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var679 0)
(declare-sort var3196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun regexp/1021178211 (var679) var3196)
(declare-fun getSource/-2008544202 (var3196) String)
(declare-fun getFlagString/1910686680 (var679) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var679 var679)
(declare-const var2489 var679) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeRegExp 
(assert (not (= var2489 null-var679)))
(define-const var31 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var31)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var31!1 String)
(assert (= var31!1 ""))
(assert true)
(define-const var3833 String (append/672562846 var31!1 "/")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var31!2 String)
(assert (= var31!2 (str.++ var31!1 "/")))
(define-const var3341 var3196 (regexp/1021178211 var2489)) ; Statement: $r2 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp> 
(assert true)
(define-const var1935 String (getSource/-2008544202 var3341)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String getSource()>() 
(assert true)
(define-const var3801 String (append/672562846 var3833 var1935)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 var1935)))
(assert true)
(define-const var806 String (append/672562846 var3801 "/")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3801!1 String)
(assert (= var3801!1 (str.++ var3801 "/")))
(assert true)
(define-const var827 String (getFlagString/1910686680 var2489)) ; Statement: $r6 = specialinvoke r1.<jdk.nashorn.internal.objects.NativeRegExp: java.lang.String getFlagString()>() 
(assert true)
(define-const var171 String (append/672562846 var806 var827)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var806!1 String)
(assert (= var806!1 (str.++ var806 var827)))
(assert true)
(define-const var2259 String (toString/-2075883882 var171)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), regexp/1021178211=([jdk.nashorn.internal.objects.NativeRegExp], jdk.nashorn.internal.runtime.regexp.RegExp), getSource/-2008544202=([jdk.nashorn.internal.runtime.regexp.RegExp], java.lang.String), getFlagString/1910686680=([jdk.nashorn.internal.objects.NativeRegExp], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var679=jdk.nashorn.internal.objects.NativeRegExp, var2489=r1, var31=$r0, var3833=$r4, var3196=jdk.nashorn.internal.runtime.regexp.RegExp, var3341=$r2, var1935=$r3, var3801=$r5, var806=$r7, var827=$r6, var171=$r8, var2259=$r9}
; {jdk.nashorn.internal.objects.NativeRegExp=var679, r1=var2489, $r0=var31, $r4=var3833, jdk.nashorn.internal.runtime.regexp.RegExp=var3196, $r2=var3341, $r3=var1935, $r5=var3801, $r7=var806, $r6=var827, $r8=var171, $r9=var2259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeRegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r2 = r1.<jdk.nashorn.internal.objects.NativeRegExp: jdk.nashorn.internal.runtime.regexp.RegExp regexp>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.regexp.RegExp: java.lang.String getSource()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r6 = specialinvoke r1.<jdk.nashorn.internal.objects.NativeRegExp: java.lang.String getFlagString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1