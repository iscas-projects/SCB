(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1354 var1354)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var668 var1354) ; Statement: r6 := @this: com.github.jknack.handlebars.helper.MethodHelper 
(assert (not (= var668 null-var1354)))
(declare-const var3847 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var3847 null-__Array__Int__ClassObject__)))
(define-const var3752 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3752)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3752!1 String)
(assert (= var3752!1 ""))
(define-const var3380 Int (getLength-Arr-ClassObject-1 var3847)) ; Statement: i0 = lengthof r1 
(define-const var3555 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(assert (>= var3555 var3380)) ; Cond: i4 >= i0 
(assert true)
(define-const var737 Int (length/-171891354 var3752!1)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var737 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var3887 String (toString/-2075883882 var3752!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1354=com.github.jknack.handlebars.helper.MethodHelper, var668=r6, var3847=r1, var3752=$r0, var3380=i0, var3555=i4, var737=$i1, var3887=$r2}
; {com.github.jknack.handlebars.helper.MethodHelper=var1354, r6=var668, r1=var3847, $r0=var3752, i0=var3380, i4=var3555, $i1=var737, $r2=var3887}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.helper.MethodHelper;	r1 := @parameter0: java.lang.Class[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i4 = 0;	if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4