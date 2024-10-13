(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var800 0)
(declare-sort var3365 0)
(declare-sort var2976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2976_upperFirst/-1469142958 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var800 var800)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2282 var800) ; Statement: r12 := @this: cn.hutool.core.bean.BeanDesc 
(assert (not (= var2282 null-var800)))
(declare-const var2669 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var2669 null-String)))
(declare-const var1072 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var1072 null-String)))
(declare-const var301 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var301 null-Bool)))
(declare-const var3822 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3822 null-Bool)))
 ; Statement: if z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r14) 
(assert (= (ite var3822 1 0) 0)) ; Cond: z0 == 0 
(define-const var3160 String (var2976_upperFirst/-1469142958 (cast-from-String-to-String var1072))) ; Statement: r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r14) 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var301 1 0) 0)) ; Cond: z1 == 0 
(define-const var1433 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1433)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1433!1 String)
(assert (= var1433!1 ""))
(assert true)
(define-const var684 String (append/672562846 var1433!1 "get")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1433!2 String)
(assert (= var1433!2 (str.++ var1433!1 "get")))
(assert true)
(define-const var2406 String (append/672562846 var684 var3160)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var684!1 String)
(assert (= var684!1 (str.++ var684 var3160)))
(assert true)
(define-const var122 String (toString/-2075883882 var2406)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1520 Bool (= var122 var2669)) ; Statement: $z7 = virtualinvoke $r19.<java.lang.String: boolean equals(java.lang.Object)>(r13) 
 ; Statement: return $z7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2976_upperFirst/-1469142958=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var800=cn.hutool.core.bean.BeanDesc, var2282=r12, var2669=r13, var3365=null_type, var1072=r14, var301=z1, var3822=z0, var2976=cn.hutool.core.text.CharSequenceUtil, var3160=r15, var1433=$r16, var684=$r17, var2406=$r18, var122=$r19, var1520=$z7}
; {cn.hutool.core.bean.BeanDesc=var800, r12=var2282, r13=var2669, null_type=var3365, r14=var1072, z1=var301, z0=var3822, cn.hutool.core.text.CharSequenceUtil=var2976, r15=var3160, $r16=var1433, $r17=var684, $r18=var2406, $r19=var122, $z7=var1520}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: cn.hutool.core.bean.BeanDesc;	r13 := @parameter0: java.lang.String;	r14 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	z0 := @parameter3: boolean;	if z0 == 0 goto r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r14);	r15 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r14);	if z1 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$z7 = virtualinvoke $r19.<java.lang.String: boolean equals(java.lang.Object)>(r13);	return $z7
;block_num 4