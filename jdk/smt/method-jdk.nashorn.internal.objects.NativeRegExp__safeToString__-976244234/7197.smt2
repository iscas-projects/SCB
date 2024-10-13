(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/241896643 (var208) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var208 var208)
(declare-const var2338 var208) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeRegExp 
(assert (not (= var2338 null-var208)))
(define-const var3580 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3580)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3580!1 String)
(assert (= var3580!1 ""))
(assert true)
(define-const var370 String (append/672562846 var3580!1 "[RegExp ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[RegExp ") 
(declare-const var3580!2 String)
(assert (= var3580!2 (str.++ var3580!1 "[RegExp ")))
(assert true)
(define-const var5 String (toString/241896643 var2338)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeRegExp: java.lang.String toString()>() 
(assert true)
(define-const var3251 String (append/672562846 var370 var5)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var370!1 String)
(assert (= var370!1 (str.++ var370 var5)))
(assert true)
(define-const var283 String (append/672562846 var3251 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3251!1 String)
(assert (= var3251!1 (str.++ var3251 "]")))
(assert true)
(define-const var2330 String (toString/-2075883882 var283)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/241896643=([jdk.nashorn.internal.objects.NativeRegExp], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var208=jdk.nashorn.internal.objects.NativeRegExp, var2338=r1, var3580=$r0, var370=$r3, var5=$r2, var3251=$r4, var283=$r5, var2330=$r6}
; {jdk.nashorn.internal.objects.NativeRegExp=var208, r1=var2338, $r0=var3580, $r3=var370, $r2=var5, $r4=var3251, $r5=var283, $r6=var2330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.objects.NativeRegExp: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeRegExp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[RegExp ");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.objects.NativeRegExp: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1