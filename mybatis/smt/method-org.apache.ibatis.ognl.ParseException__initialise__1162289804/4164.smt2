(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1056 0)
(declare-sort var2887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/-2105314717 (var1056) var1056)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1056 var1056)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2887-EOL String)
(declare-const var3641 var1056) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.Token 
(assert (not (= var3641 null-var1056)))
(declare-const var1067 (Array Int (Array Int Int))) ; Statement: r1 := @parameter1: int[][] 
(assert (not (= var1067 null-__Array__Int____Array__Int__Int____)))
(declare-const var3234 (Array Int String)) ; Statement: r36 := @parameter2: java.lang.String[] 
(assert (not (= var3234 null-__Array__Int__String__)))
(define-const var1587 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(define-const var2027 Int 0) ; Statement: i12 = 0 
(define-const var2883 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1253 Int (getLength-Arr-Int-2 var1067)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i13 >= $i0 goto r68 = "Encountered \"" 
(assert (>= var2883 var1253)) ; Cond: i13 >= $i0 
(define-const var3713 String "Encountered \u0022") ; Statement: r68 = "Encountered \"" 
(define-const var1262 var1056 (next/-2105314717 var3641)) ; Statement: r69 = r2.<org.apache.ibatis.ognl.Token: org.apache.ibatis.ognl.Token next> 
(define-const var877 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
 ; Statement: if i16 >= i12 goto $r3 = r2.<org.apache.ibatis.ognl.Token: org.apache.ibatis.ognl.Token next> 
(assert (>= var877 var2027)) ; Cond: i16 >= i12 
(define-const var876 var1056 (next/-2105314717 var3641)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.Token: org.apache.ibatis.ognl.Token next> 
 ; Statement: if $r3 == null goto $r4 = new java.lang.StringBuilder 
(assert (= var876 null-var1056)) ; Cond: $r3 == null 
(define-const var2166 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2166)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2166!1 String)
(assert (= var2166!1 ""))
(assert true)
(define-const var3020 String (append/672562846 var2166!1 var3713)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r68) 
(declare-const var2166!2 String)
(assert (= var2166!2 (str.++ var2166!1 var3713)))
(assert true)
(define-const var1878 String (append/672562846 var3020 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3020!1 String)
(assert (= var3020!1 (str.++ var3020 ".")))
(define-const var3712 String var2887-EOL) ; Statement: $r6 = <org.apache.ibatis.ognl.ParseException: java.lang.String EOL> 
(assert true)
(define-const var1065 String (append/672562846 var1878 var3712)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1878!1 String)
(assert (= var1878!1 (str.++ var1878 var3712)))
(assert true)
(define-const var3321 String (toString/-2075883882 var1065)) ; Statement: $r33 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var409 String var3321) ; Statement: r73 = $r33 
(define-const var3917 Int (getLength-Arr-Int-2 var1067)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 0 goto $i2 = lengthof r1 
(assert (not (not (= var3917 0)))) ; Negate: Cond: $i1 != 0  
 ; Statement: goto [?= return r73] 
(assert true) ; Non Conditional
 ; Statement: return r73 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-Int-2=([int[][]], int), next/-2105314717=([org.apache.ibatis.ognl.Token], org.apache.ibatis.ognl.Token), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1056=org.apache.ibatis.ognl.Token, var3641=r2, var1067=r1, var3234=r36, var1587=$r0, var2027=i12, var2883=i13, var1253=$i0, var3713=r68, var1262=r69, var877=i16, var876=$r3, var2166=$r4, var3020=$r5, var1878=$r7, var2887=org.apache.ibatis.ognl.ParseException, var3712=$r6, var1065=$r8, var3321=$r33, var409=r73, var3917=$i1}
; {org.apache.ibatis.ognl.Token=var1056, r2=var3641, r1=var1067, r36=var3234, $r0=var1587, i12=var2027, i13=var2883, $i0=var1253, r68=var3713, r69=var1262, i16=var877, $r3=var876, $r4=var2166, $r5=var3020, $r7=var1878, org.apache.ibatis.ognl.ParseException=var2887, $r6=var3712, $r8=var1065, $r33=var3321, r73=var409, $i1=var3917}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.ognl.Token;	r1 := @parameter1: int[][];	r36 := @parameter2: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	i13 = 0;	$i0 = lengthof r1;	if i13 >= $i0 goto r68 = "Encountered \"";	r68 = "Encountered \"";	r69 = r2.<org.apache.ibatis.ognl.Token: org.apache.ibatis.ognl.Token next>;	i16 = 0;	if i16 >= i12 goto $r3 = r2.<org.apache.ibatis.ognl.Token: org.apache.ibatis.ognl.Token next>;	$r3 = r2.<org.apache.ibatis.ognl.Token: org.apache.ibatis.ognl.Token next>;	if $r3 == null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r68);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = <org.apache.ibatis.ognl.ParseException: java.lang.String EOL>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r33 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	r73 = $r33;	$i1 = lengthof r1;	if $i1 != 0 goto $i2 = lengthof r1;	goto [?= return r73];	return r73
;block_num 8