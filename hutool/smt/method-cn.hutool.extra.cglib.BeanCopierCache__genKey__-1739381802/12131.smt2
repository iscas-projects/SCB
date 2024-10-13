(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort var3639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3639_builder/-311177978 () String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2731 var2731)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const var1092 var2731) ; Statement: r11 := @this: cn.hutool.extra.cglib.BeanCopierCache 
(assert (not (= var1092 null-var2731)))
(declare-const var1536 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1536 null-ClassObject)))
(declare-const var853 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var853 null-ClassObject)))
(declare-const var3966 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3966 null-Bool)))
(define-const var2138 String var3639_builder/-311177978) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var2220 String (getName/-1958580599 var1536)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2674 String (append/672562846 var2138 var2220)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2138!1 String)
(assert (= var2138!1 (str.++ var2138 var2220)))
(assert true)
(define-const var3345 String (append/-1166366385 var2674 35)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var2674!1 String)
(assert (str.prefixof var2674 var2674!1))
(assert true)
(define-const var634 String (getName/-1958580599 var853)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2650 String (append/672562846 var3345 var634)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3345!1 String)
(assert (= var3345!1 (str.++ var3345 var634)))
(assert true)
(define-const var3305 String (append/-1166366385 var2650 35)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var2650!1 String)
(assert (str.prefixof var2650 var2650!1))
 ; Statement: if z0 == 0 goto $b0 = 0 
(assert (not (= (ite var3966 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3099 Int 1) ; Statement: $b0 = 1 
 ; Statement: goto [?= $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($b0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2610 String (append/-1001720160 var3305 var3099)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($b0) 
(declare-const var3305!1 String)
(assert (str.prefixof var3305 var3305!1))
(assert true)
(define-const var3515 String (toString/-2075883882 var2610)) ; Statement: $r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3639_builder/-311177978=([], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2731=cn.hutool.extra.cglib.BeanCopierCache, var1092=r11, var1536=r0, var853=r4, var3966=z0, var3639=cn.hutool.core.util.StrUtil, var2138=$r2, var2220=$r1, var2674=$r3, var3345=$r6, var634=$r5, var2650=$r7, var3305=$r8, var3099=$b0, var2610=$r10, var3515=$r9}
; {cn.hutool.extra.cglib.BeanCopierCache=var2731, r11=var1092, r0=var1536, r4=var853, z0=var3966, cn.hutool.core.util.StrUtil=var3639, $r2=var2138, $r1=var2220, $r3=var2674, $r6=var3345, $r5=var634, $r7=var2650, $r8=var3305, $b0=var3099, $r10=var2610, $r9=var3515}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: cn.hutool.extra.cglib.BeanCopierCache;	r0 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.Class;	z0 := @parameter2: boolean;	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if z0 == 0 goto $b0 = 0;	$b0 = 1;	goto [?= $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($b0)];	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($b0);	$r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3