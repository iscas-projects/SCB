(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var3425 0)
(declare-sort var3913 0)
(declare-sort var1978 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsKey/172583680 (var3913 var3425) Bool)
(declare-fun cast-from-var574-to-var3913 (var574) var3913)
(declare-fun var1978-init () var1978)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3425) String)
(declare-fun keySet/1586104932 (var3913) var1262)
(declare-fun cast-from-var1262-to-var3425 (var1262) var3425)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var1978 String) void)
(declare-const null-var574 var574)
(declare-const null-var3425 var3425)
(declare-const var306 var574) ; Statement: r0 := @this: org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap 
(assert (not (= var306 null-var574)))
(declare-const var1396 var3425) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1396 null-var3425)))
(assert true)
(define-const var2804 Bool (containsKey/172583680 (cast-from-var574-to-var3913 var306) var1396)) ; Statement: $z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
(assert (not (not (= (ite var2804 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3267 var1978 var1978-init) ; Statement: $r3 = new org.apache.ibatis.binding.BindingException 
(define-const var3153 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3153)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3153!1 String)
(assert (= var3153!1 ""))
(assert true)
(define-const var3482 String (append/672562846 var3153!1 "Parameter \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter \'") 
(declare-const var3153!2 String)
(assert (= var3153!2 (str.++ var3153!1 "Parameter \u0027")))
(assert true)
(define-const var2782 String (append/-1031950772 var3482 var1396)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3482!1 String)
(assert (str.prefixof var3482 var3482!1))
(assert true)
(define-const var2496 String (append/672562846 var2782 "\u0027 not found. Available parameters are ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found. Available parameters are ") 
(declare-const var2782!1 String)
(assert (= var2782!1 (str.++ var2782 "\u0027 not found. Available parameters are ")))
(assert true)
(define-const var1701 var1262 (keySet/1586104932 (cast-from-var574-to-var3913 var306))) ; Statement: $r7 = virtualinvoke r0.<org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap: java.util.Set keySet()>() 
(assert true)
(define-const var3534 String (append/-1031950772 var2496 (cast-from-var1262-to-var3425 var1701))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2496!1 String)
(assert (str.prefixof var2496 var2496!1))
(assert true)
(define-const var3717 String (toString/-2075883882 var3534)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var3267 var3717)) ; Statement: specialinvoke $r3.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r10) 

(declare-const var3267!1 var1978)
(declare-const var3717!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {containsKey/172583680=([java.util.HashMap, java.lang.Object], boolean), cast-from-var574-to-var3913=([org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap], java.util.HashMap), var1978-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), keySet/1586104932=([java.util.HashMap], java.util.Set), cast-from-var1262-to-var3425=([java.util.Set], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var574=org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap, var306=r0, var3425=java.lang.Object, var1396=r1, var3913=java.util.HashMap, var2804=$z0, var1978=org.apache.ibatis.binding.BindingException, var3267=$r3, var3153=$r4, var3482=$r5, var2782=$r6, var2496=$r8, var1262=java.util.Set, var1701=$r7, var3534=$r9, var3717=$r10}
; {org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap=var574, r0=var306, java.lang.Object=var3425, r1=var1396, java.util.HashMap=var3913, $z0=var2804, org.apache.ibatis.binding.BindingException=var1978, $r3=var3267, $r4=var3153, $r5=var3482, $r6=var2782, $r8=var2496, java.util.Set=var1262, $r7=var1701, $r9=var3534, $r10=var3717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap;	r1 := @parameter0: java.lang.Object;	$z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	$r3 = new org.apache.ibatis.binding.BindingException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found. Available parameters are ");	$r7 = virtualinvoke r0.<org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap: java.util.Set keySet()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2