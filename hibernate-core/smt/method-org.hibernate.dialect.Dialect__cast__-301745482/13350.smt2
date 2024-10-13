(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var320 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getTypeName/8134362 (var320 Int Int Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var320 var320)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2825 var320) ; Statement: r4 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2825 null-var320)))
(declare-const var2875 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2875 null-String)))
(declare-const var763 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var763 null-Int)))
(declare-const var987 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var987 null-Int)))
(declare-const var2467 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2467 null-Int)))
(declare-const var901 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var901 null-Int)))
 ; Statement: if i0 != 1 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var763 1))) ; Cond: i0 != 1 
(define-const var1358 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1358)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1358!1 String)
(assert (= var1358!1 ""))
(assert true)
(define-const var3195 String (append/672562846 var1358!1 "cast(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast(") 
(declare-const var1358!2 String)
(assert (= var1358!2 (str.++ var1358!1 "cast(")))
(assert true)
(define-const var3748 String (append/672562846 var3195 var2875)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3195!1 String)
(assert (= var3195!1 (str.++ var3195 var2875)))
(assert true)
(define-const var3846 String (append/672562846 var3748 "as ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("as ") 
(declare-const var3748!1 String)
(assert (= var3748!1 (str.++ var3748 "as ")))
(define-const var2089 Int (cast-from-Int-to-Int var987)) ; Statement: $l4 = (long) i1 
(assert true)
(define-const var2931 String (getTypeName/8134362 var2825 var763 var2089 var2467 var901)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.dialect.Dialect: java.lang.String getTypeName(int,long,int,int)>(i0, $l4, i2, i3) 
(assert true)
(define-const var2936 String (append/672562846 var3846 var2931)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3846!1 String)
(assert (= var3846!1 (str.++ var3846 var2931)))
(assert true)
(define-const var291 String (append/672562846 var2936 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2936!1 String)
(assert (= var2936!1 (str.++ var2936 ")")))
(assert true)
(define-const var1484 String (toString/-2075883882 var291)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], long), getTypeName/8134362=([org.hibernate.dialect.Dialect, int, long, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var320=org.hibernate.dialect.Dialect, var2825=r4, var2875=r1, var3175=null_type, var763=i0, var987=i1, var2467=i2, var901=i3, var1358=$r0, var3195=$r2, var3748=$r3, var3846=$r6, var2089=$l4, var2931=$r5, var2936=$r7, var291=$r8, var1484=$r9}
; {org.hibernate.dialect.Dialect=var320, r4=var2825, r1=var2875, null_type=var3175, i0=var763, i1=var987, i2=var2467, i3=var901, $r0=var1358, $r2=var3195, $r3=var3748, $r6=var3846, $l4=var2089, $r5=var2931, $r7=var2936, $r8=var291, $r9=var1484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	if i0 != 1 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("as ");	$l4 = (long) i1;	$r5 = virtualinvoke r4.<org.hibernate.dialect.Dialect: java.lang.String getTypeName(int,long,int,int)>(i0, $l4, i2, i3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2