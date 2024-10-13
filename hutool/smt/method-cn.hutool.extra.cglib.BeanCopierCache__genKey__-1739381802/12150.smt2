(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var901 0)
(declare-sort var1391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1391_builder/-311177978 () String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var901 var901)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const var1536 var901) ; Statement: r11 := @this: cn.hutool.extra.cglib.BeanCopierCache 
(assert (not (= var1536 null-var901)))
(declare-const var985 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var985 null-ClassObject)))
(declare-const var1950 ClassObject) ; Statement: r4 := @parameter1: java.lang.Class 
(assert (not (= var1950 null-ClassObject)))
(declare-const var2300 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2300 null-Bool)))
(define-const var1115 String var1391_builder/-311177978) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var195 String (getName/-1958580599 var985)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1443 String (append/672562846 var1115 var195)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1115!1 String)
(assert (= var1115!1 (str.++ var1115 var195)))
(assert true)
(define-const var906 String (append/-1166366385 var1443 35)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var1443!1 String)
(assert (str.prefixof var1443 var1443!1))
(assert true)
(define-const var841 String (getName/-1958580599 var1950)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var227 String (append/672562846 var906 var841)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var906!1 String)
(assert (= var906!1 (str.++ var906 var841)))
(assert true)
(define-const var3196 String (append/-1166366385 var227 35)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var227!1 String)
(assert (str.prefixof var227 var227!1))
 ; Statement: if z0 == 0 goto $b0 = 0 
(assert (= (ite var2300 1 0) 0)) ; Cond: z0 == 0 
(define-const var1733 Int 0) ; Statement: $b0 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1445 String (append/-1001720160 var3196 var1733)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($b0) 
(declare-const var3196!1 String)
(assert (str.prefixof var3196 var3196!1))
(assert true)
(define-const var565 String (toString/-2075883882 var1445)) ; Statement: $r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1391_builder/-311177978=([], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var901=cn.hutool.extra.cglib.BeanCopierCache, var1536=r11, var985=r0, var1950=r4, var2300=z0, var1391=cn.hutool.core.util.StrUtil, var1115=$r2, var195=$r1, var1443=$r3, var906=$r6, var841=$r5, var227=$r7, var3196=$r8, var1733=$b0, var1445=$r10, var565=$r9}
; {cn.hutool.extra.cglib.BeanCopierCache=var901, r11=var1536, r0=var985, r4=var1950, z0=var2300, cn.hutool.core.util.StrUtil=var1391, $r2=var1115, $r1=var195, $r3=var1443, $r6=var906, $r5=var841, $r7=var227, $r8=var3196, $b0=var1733, $r10=var1445, $r9=var565}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: cn.hutool.extra.cglib.BeanCopierCache;	r0 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.Class;	z0 := @parameter2: boolean;	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if z0 == 0 goto $b0 = 0;	$b0 = 0;	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($b0);	$r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3