(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort var2845 0)
(declare-sort var2615 0)
(declare-sort var3767 0)
(declare-sort var2238 0)
(declare-sort var1307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnsByPropertyPath/-293507329 (var1865) var2615)
(declare-fun var2615_get/1088891777 (var2615 var3767) var3767)
(declare-fun cast-from-String-to-var3767 (String) var3767)
(declare-fun cast-from-var3767-to-__Array__Int__String__ (var3767) (Array Int String))
(declare-fun var2238-init () var2238)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2238 String) void)
(declare-fun cast-from-var2238-to-var1307 (var2238) var1307)
(declare-const null-var1865 var1865)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var880 var1865) ; Statement: r0 := @this: org.hibernate.persister.entity.AbstractPropertyMapping 
(assert (not (= var880 null-var1865)))
(declare-const var1765 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1765 null-String)))
(define-const var958 var2615 (columnsByPropertyPath/-293507329 var880)) ; Statement: $r2 = r0.<org.hibernate.persister.entity.AbstractPropertyMapping: java.util.Map columnsByPropertyPath> 
(define-const var1047 var3767 (var2615_get/1088891777 var958 (cast-from-String-to-var3767 var1765))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3374 (Array Int String) (cast-from-var3767-to-__Array__Int__String__ var1047)) ; Statement: r4 = (java.lang.String[]) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var3374 null-__Array__Int__String__)))) ; Negate: Cond: r4 != null  
(define-const var3660 var2238 var2238-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var2146 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2146)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2146!1 String)
(assert (= var2146!1 ""))
(assert true)
(define-const var3460 String (append/672562846 var2146!1 "unknown property: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown property: ") 
(declare-const var2146!2 String)
(assert (= var2146!2 (str.++ var2146!1 "unknown property: ")))
(assert true)
(define-const var1779 String (append/672562846 var3460 var1765)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3460!1 String)
(assert (= var3460!1 (str.++ var3460 var1765)))
(assert true)
(define-const var3571 String (toString/-2075883882 var1779)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3660 var3571)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9) 

(declare-const var3660!1 var2238)
(declare-const var3571!1 String)
(define-const var3500 var1307 (cast-from-var2238-to-var1307 var3660!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {columnsByPropertyPath/-293507329=([org.hibernate.persister.entity.AbstractPropertyMapping], java.util.Map), var2615_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3767=([java.lang.String], java.lang.Object), cast-from-var3767-to-__Array__Int__String__=([java.lang.Object], java.lang.String[]), var2238-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2238-to-var1307=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1865=org.hibernate.persister.entity.AbstractPropertyMapping, var880=r0, var1765=r1, var2845=null_type, var2615=java.util.Map, var958=$r2, var3767=java.lang.Object, var1047=$r3, var3374=r4, var2238=org.hibernate.MappingException, var3660=$r11, var2146=$r10, var3460=$r7, var1779=$r8, var3571=$r9, var1307=java.lang.Throwable, var3500=$r12}
; {org.hibernate.persister.entity.AbstractPropertyMapping=var1865, r0=var880, r1=var1765, null_type=var2845, java.util.Map=var2615, $r2=var958, java.lang.Object=var3767, $r3=var1047, r4=var3374, org.hibernate.MappingException=var2238, $r11=var3660, $r10=var2146, $r7=var3460, $r8=var1779, $r9=var3571, java.lang.Throwable=var1307, $r12=var3500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.AbstractPropertyMapping;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.persister.entity.AbstractPropertyMapping: java.util.Map columnsByPropertyPath>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.String[]) $r3;	if r4 != null goto return r4;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown property: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2