(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3821 0)
(declare-sort var3073 0)
(declare-sort var2429 0)
(declare-sort var3872 0)
(declare-sort var2701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2429_size/-959786421 (var2429) Int)
(declare-fun var2429_remove/1853576941 (var2429 Int) var2701)
(declare-fun var2429_get/-1216255739 (var2429 Int) var2701)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2701) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2429_set/-1241329960 (var2429 Int var2701) var2701)
(declare-fun cast-from-String-to-var2701 (String) var2701)
(declare-fun render/-938556996 (var3821 var3073 var2429 var3872) String)
(declare-const null-var3821 var3821)
(declare-const null-var3073 var3073)
(declare-const null-var2429 var2429)
(declare-const null-var3872 var3872)
(declare-const var3023 var3821) ; Statement: r10 := @this: org.hibernate.dialect.function.NvlFunction 
(assert (not (= var3023 null-var3821)))
(declare-const var298 var3073) ; Statement: r11 := @parameter0: org.hibernate.type.Type 
(assert (not (= var298 null-var3073)))
(declare-const var1249 var2429) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1249 null-var2429)))
(declare-const var2854 var3872) ; Statement: r12 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2854 null-var3872)))
(define-const var1755 Int (var2429_size/-959786421 var1249)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var20 Int (- var1755 1)) ; Statement: i1 = $i0 - 1 
(define-const var1067 var2701 (var2429_remove/1853576941 var1249 var20)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.lang.Object remove(int)>(i1) 
 ; Statement: if i1 != 0 goto $i2 = i1 - 1 
(assert (not (= var20 0))) ; Cond: i1 != 0 
(define-const var2135 Int (- var20 1)) ; Statement: $i2 = i1 - 1 
(define-const var2075 var2701 (var2429_get/-1216255739 var1249 var2135)) ; Statement: r2 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>($i2) 
(define-const var918 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var918)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var918!1 String)
(assert (= var918!1 ""))
(assert true)
(define-const var2047 String (append/672562846 var918!1 "nvl(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nvl(") 
(declare-const var918!2 String)
(assert (= var918!2 (str.++ var918!1 "nvl(")))
(assert true)
(define-const var2810 String (append/-1031950772 var2047 var2075)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2047!1 String)
(assert (str.prefixof var2047 var2047!1))
(assert true)
(define-const var3534 String (append/672562846 var2810 ", ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2810!1 String)
(assert (= var2810!1 (str.++ var2810 ", ")))
(assert true)
(define-const var3410 String (append/-1031950772 var3534 var1067)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3534!1 String)
(assert (str.prefixof var3534 var3534!1))
(assert true)
(define-const var2355 String (append/672562846 var3410 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3410!1 String)
(assert (= var3410!1 (str.++ var3410 ")")))
(assert true)
(define-const var2441 String (toString/-2075883882 var2355)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2489 Int (- var20 1)) ; Statement: $i3 = i1 - 1 
;(assert (var2429_set/-1241329960 var1249 var2489 (cast-from-String-to-var2701 var2441))) ; Statement: interfaceinvoke r0.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i3, r9) 

(declare-const var1249!1 var2429)
(declare-const var2489!1 Int)
(declare-const var2441!1 String)
(assert true)
(define-const var539 String (render/-938556996 var3023 var298 var1249!1 var2854)) ; Statement: $r13 = virtualinvoke r10.<org.hibernate.dialect.function.NvlFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>(r11, r0, r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2429_size/-959786421=([java.util.List], int), var2429_remove/1853576941=([java.util.List, int], java.lang.Object), var2429_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2429_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var2701=([java.lang.String], java.lang.Object), render/-938556996=([org.hibernate.dialect.function.NvlFunction, org.hibernate.type.Type, java.util.List, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String)}
; {var3821=org.hibernate.dialect.function.NvlFunction, var3023=r10, var3073=org.hibernate.type.Type, var298=r11, var2429=java.util.List, var1249=r0, var3872=org.hibernate.engine.spi.SessionFactoryImplementor, var2854=r12, var1755=$i0, var20=i1, var2701=java.lang.Object, var1067=r1, var2135=$i2, var2075=r2, var918=$r3, var2047=$r4, var2810=$r5, var3534=$r6, var3410=$r7, var2355=$r8, var2441=r9, var2489=$i3, var539=$r13}
; {org.hibernate.dialect.function.NvlFunction=var3821, r10=var3023, org.hibernate.type.Type=var3073, r11=var298, java.util.List=var2429, r0=var1249, org.hibernate.engine.spi.SessionFactoryImplementor=var3872, r12=var2854, $i0=var1755, i1=var20, java.lang.Object=var2701, r1=var1067, $i2=var2135, r2=var2075, $r3=var918, $r4=var2047, $r5=var2810, $r6=var3534, $r7=var3410, $r8=var2355, r9=var2441, $i3=var2489, $r13=var539}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.dialect.function.NvlFunction;	r11 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r12 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	i1 = $i0 - 1;	r1 = interfaceinvoke r0.<java.util.List: java.lang.Object remove(int)>(i1);	if i1 != 0 goto $i2 = i1 - 1;	$i2 = i1 - 1;	r2 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>($i2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nvl(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = i1 - 1;	interfaceinvoke r0.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i3, r9);	$r13 = virtualinvoke r10.<org.hibernate.dialect.function.NvlFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>(r11, r0, r12);	return $r13
;block_num 2