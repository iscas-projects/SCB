(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2187 0)
(declare-sort var2031 0)
(declare-sort var429 0)
(declare-sort var723 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsKey/172583680 (var429 var2031) Bool)
(declare-fun cast-from-var2187-to-var429 (var2187) var429)
(declare-fun var723-init () var723)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2031) String)
(declare-fun keySet/1586104932 (var429) var2169)
(declare-fun cast-from-var2169-to-var2031 (var2169) var2031)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var723 String) void)
(declare-const null-var2187 var2187)
(declare-const null-var2031 var2031)
(declare-const var1007 var2187) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperMethod$ParamMap 
(assert (not (= var1007 null-var2187)))
(declare-const var1573 var2031) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1573 null-var2031)))
(assert true)
(define-const var1620 Bool (containsKey/172583680 (cast-from-var2187-to-var429 var1007) var1573)) ; Statement: $z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
(assert (not (not (= (ite var1620 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2500 var723 var723-init) ; Statement: $r3 = new org.apache.ibatis.binding.BindingException 
(define-const var2159 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2159)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2159!1 String)
(assert (= var2159!1 ""))
(assert true)
(define-const var1942 String (append/672562846 var2159!1 "Parameter \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter \'") 
(declare-const var2159!2 String)
(assert (= var2159!2 (str.++ var2159!1 "Parameter \u0027")))
(assert true)
(define-const var2901 String (append/-1031950772 var1942 var1573)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1942!1 String)
(assert (str.prefixof var1942 var1942!1))
(assert true)
(define-const var2920 String (append/672562846 var2901 "\u0027 not found. Available parameters are ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found. Available parameters are ") 
(declare-const var2901!1 String)
(assert (= var2901!1 (str.++ var2901 "\u0027 not found. Available parameters are ")))
(assert true)
(define-const var495 var2169 (keySet/1586104932 (cast-from-var2187-to-var429 var1007))) ; Statement: $r7 = virtualinvoke r0.<org.apache.ibatis.binding.MapperMethod$ParamMap: java.util.Set keySet()>() 
(assert true)
(define-const var470 String (append/-1031950772 var2920 (cast-from-var2169-to-var2031 var495))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2920!1 String)
(assert (str.prefixof var2920 var2920!1))
(assert true)
(define-const var1041 String (toString/-2075883882 var470)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var2500 var1041)) ; Statement: specialinvoke $r3.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r10) 

(declare-const var2500!1 var723)
(declare-const var1041!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {containsKey/172583680=([java.util.HashMap, java.lang.Object], boolean), cast-from-var2187-to-var429=([org.apache.ibatis.binding.MapperMethod$ParamMap], java.util.HashMap), var723-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), keySet/1586104932=([java.util.HashMap], java.util.Set), cast-from-var2169-to-var2031=([java.util.Set], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var2187=org.apache.ibatis.binding.MapperMethod$ParamMap, var1007=r0, var2031=java.lang.Object, var1573=r1, var429=java.util.HashMap, var1620=$z0, var723=org.apache.ibatis.binding.BindingException, var2500=$r3, var2159=$r4, var1942=$r5, var2901=$r6, var2920=$r8, var2169=java.util.Set, var495=$r7, var470=$r9, var1041=$r10}
; {org.apache.ibatis.binding.MapperMethod$ParamMap=var2187, r0=var1007, java.lang.Object=var2031, r1=var1573, java.util.HashMap=var429, $z0=var1620, org.apache.ibatis.binding.BindingException=var723, $r3=var2500, $r4=var2159, $r5=var1942, $r6=var2901, $r8=var2920, java.util.Set=var2169, $r7=var495, $r9=var470, $r10=var1041}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.binding.MapperMethod$ParamMap;	r1 := @parameter0: java.lang.Object;	$z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	$r3 = new org.apache.ibatis.binding.BindingException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found. Available parameters are ");	$r7 = virtualinvoke r0.<org.apache.ibatis.binding.MapperMethod$ParamMap: java.util.Set keySet()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2