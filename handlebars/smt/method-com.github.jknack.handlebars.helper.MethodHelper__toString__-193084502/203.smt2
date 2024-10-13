(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3041 0)
(declare-sort var2174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var2174-1 ((Array Int var2174)) Int)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3041 var3041)
(declare-const null-__Array__Int__var2174__ (Array Int var2174))
(declare-const var3512 var3041) ; Statement: r7 := @this: com.github.jknack.handlebars.helper.MethodHelper 
(assert (not (= var3512 null-var3041)))
(declare-const var3939 (Array Int var2174)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var3939 null-__Array__Int__var2174__)))
(define-const var2616 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2616)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2616!1 String)
(assert (= var2616!1 ""))
(assert true)
;(assert (append/672562846 var2616!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2616!2 String)
(assert (= var2616!2 (str.++ var2616!1 "[")))
(define-const var3528 Int (getLength-Arr-var2174-1 var3939)) ; Statement: i0 = lengthof r1 
(define-const var3991 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(assert (>= var3991 var3528)) ; Cond: i4 >= i0 
(assert true)
(define-const var2050 Int (length/-171891354 var2616!2)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 1 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (<= var2050 1)) ; Cond: $i1 <= 1 
(assert true)
(define-const var1964 String (append/672562846 var2616!2 "]")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2616!3 String)
(assert (= var2616!3 (str.++ var2616!2 "]")))
(assert true)
(define-const var3716 String (toString/-2075883882 var1964)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var2174-1=([java.lang.Object[]], int), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3041=com.github.jknack.handlebars.helper.MethodHelper, var3512=r7, var2174=java.lang.Object, var3939=r1, var2616=$r0, var3528=i0, var3991=i4, var2050=$i1, var1964=$r2, var3716=$r3}
; {com.github.jknack.handlebars.helper.MethodHelper=var3041, r7=var3512, java.lang.Object=var2174, r1=var3939, $r0=var2616, i0=var3528, i4=var3991, $i1=var2050, $r2=var1964, $r3=var3716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.helper.MethodHelper;	r1 := @parameter0: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	i0 = lengthof r1;	i4 = 0;	if i4 >= i0 goto $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i1 <= 1 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4