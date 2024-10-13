(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2423 0)
(declare-sort var2646 0)
(declare-sort var3259 0)
(declare-sort var142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyPath/-1937907098 (var2423) String)
(declare-fun getPropertyMapping/-1605408675 (var2423) var2646)
(declare-fun currentName/2096745176 (var2423) String)
(declare-fun var2646_toColumns/701355653 (var2646 String String) (Array Int String))
(declare-fun var3259-init () var3259)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3259 String) void)
(declare-fun cast-from-var3259-to-var142 (var3259) var142)
(declare-const null-var2423 var2423)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2052 var2423) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var2052 null-var2423)))
(assert true)
(define-const var599 String (getPropertyPath/-1937907098 var2052)) ; Statement: r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>() 
(assert true)
(define-const var882 var2646 (getPropertyMapping/-1605408675 var2052)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
(define-const var1963 String (currentName/2096745176 var2052)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> 
(define-const var3242 (Array Int String) (var2646_toColumns/701355653 var882 var1963 var599)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r2, r1) 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var3242 null-__Array__Int__String__)))) ; Negate: Cond: r4 != null  
(define-const var500 var3259 var3259-init) ; Statement: $r11 = new org.hibernate.QueryException 
(define-const var726 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var726)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var726!1 String)
(assert (= var726!1 ""))
(assert true)
(define-const var1163 String (append/672562846 var726!1 "could not resolve property columns: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not resolve property columns: ") 
(declare-const var726!2 String)
(assert (= var726!2 (str.++ var726!1 "could not resolve property columns: ")))
(assert true)
(define-const var2268 String (append/672562846 var1163 var599)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1163!1 String)
(assert (= var1163!1 (str.++ var1163 var599)))
(assert true)
(define-const var3688 String (toString/-2075883882 var2268)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var500 var3688)) ; Statement: specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var500!1 var3259)
(declare-const var3688!1 String)
(define-const var2568 var142 (cast-from-var3259-to-var142 var500!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyPath/-1937907098=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getPropertyMapping/-1605408675=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping), currentName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), var2646_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[]), var3259-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3259-to-var142=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2423=org.hibernate.hql.internal.classic.PathExpressionParser, var2052=r0, var599=r1, var2646=org.hibernate.persister.entity.PropertyMapping, var882=$r3, var1963=$r2, var3242=r4, var3259=org.hibernate.QueryException, var500=$r11, var726=$r10, var1163=$r7, var2268=$r8, var3688=$r9, var142=java.lang.Throwable, var2568=$r12}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var2423, r0=var2052, r1=var599, org.hibernate.persister.entity.PropertyMapping=var2646, $r3=var882, $r2=var1963, r4=var3242, org.hibernate.QueryException=var3259, $r11=var500, $r10=var726, $r7=var1163, $r8=var2268, $r9=var3688, java.lang.Throwable=var142, $r12=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>();	$r3 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	$r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName>;	r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r2, r1);	if r4 != null goto return r4;	$r11 = new org.hibernate.QueryException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not resolve property columns: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2