(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var236 0)
(declare-sort var1096 0)
(declare-sort var295 0)
(declare-sort var161 0)
(declare-sort var2573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsPooledSequences/-1882266044 (var236) Bool)
(declare-fun var295-init () var295)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var161) ClassObject)
(declare-fun cast-from-var236-to-var161 (var236) var161)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var295 String) void)
(declare-fun cast-from-var295-to-var2573 (var295) var2573)
(declare-const null-var236 var236)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3905 var236) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3905 null-var236)))
(declare-const var266 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var266 null-String)))
(declare-const var2989 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2989 null-Int)))
(declare-const var2808 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2808 null-Int)))
(assert true)
(define-const var1104 Bool (supportsPooledSequences/-1882266044 var3905)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean supportsPooledSequences()>() 
 ; Statement: if $z0 == 0 goto $r19 = new org.hibernate.MappingException 
(assert (= (ite var1104 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1593 var295 var295-init) ; Statement: $r19 = new org.hibernate.MappingException 
(define-const var2393 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2393)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2393!1 String)
(assert (= var2393!1 ""))
(assert true)
(define-const var10 ClassObject (getClass/1258963082 (cast-from-var236-to-var161 var3905))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2864 String (getName/-1958580599 var10)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var17 String (append/672562846 var2393!1 var2864)) ; Statement: $r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2393!2 String)
(assert (= var2393!2 (str.++ var2393!1 var2864)))
(assert true)
(define-const var2681 String (append/672562846 var17 " does not support pooled sequences")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support pooled sequences") 
(declare-const var17!1 String)
(assert (= var17!1 (str.++ var17 " does not support pooled sequences")))
(assert true)
(define-const var3297 String (toString/-2075883882 var2681)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1593 var3297)) ; Statement: specialinvoke $r19.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var1593!1 var295)
(declare-const var3297!1 String)
(define-const var3636 var2573 (cast-from-var295-to-var2573 var1593!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsPooledSequences/-1882266044=([org.hibernate.dialect.Dialect], boolean), var295-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var236-to-var161=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var295-to-var2573=([org.hibernate.MappingException], java.lang.Throwable)}
; {var236=org.hibernate.dialect.Dialect, var3905=r0, var266=r9, var1096=null_type, var2989=i0, var2808=i1, var1104=$z0, var295=org.hibernate.MappingException, var1593=$r19, var2393=$r18, var161=java.lang.Object, var10=$r3, var2864=$r4, var17=$r5, var2681=$r6, var3297=$r7, var2573=java.lang.Throwable, var3636=$r20}
; {org.hibernate.dialect.Dialect=var236, r0=var3905, r9=var266, null_type=var1096, i0=var2989, i1=var2808, $z0=var1104, org.hibernate.MappingException=var295, $r19=var1593, $r18=var2393, java.lang.Object=var161, $r3=var10, $r4=var2864, $r5=var17, $r6=var2681, $r7=var3297, java.lang.Throwable=var2573, $r20=var3636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	r9 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean supportsPooledSequences()>();	if $z0 == 0 goto $r19 = new org.hibernate.MappingException;	$r19 = new org.hibernate.MappingException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support pooled sequences");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 2