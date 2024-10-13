(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3963 0)
(declare-sort var2542 0)
(declare-sort var2494 0)
(declare-sort var2211 0)
(declare-sort var875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsPooledSequences/1428966174 (var3963) Bool)
(declare-fun var2494-init () var2494)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2211) ClassObject)
(declare-fun cast-from-var3963-to-var2211 (var3963) var2211)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2494 String) void)
(declare-fun cast-from-var2494-to-var875 (var2494) var875)
(declare-const null-var3963 var3963)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var687 var3963) ; Statement: r0 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var687 null-var3963)))
(declare-const var1908 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1908 null-String)))
(declare-const var833 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var833 null-Int)))
(declare-const var2219 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2219 null-Int)))
(assert true)
(define-const var2614 Bool (supportsPooledSequences/1428966174 var687)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.HSQLDialect: boolean supportsPooledSequences()>() 
 ; Statement: if $z0 == 0 goto $r19 = new org.hibernate.MappingException 
(assert (= (ite var2614 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3112 var2494 var2494-init) ; Statement: $r19 = new org.hibernate.MappingException 
(define-const var1086 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1086)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1086!1 String)
(assert (= var1086!1 ""))
(assert true)
(define-const var3766 ClassObject (getClass/1258963082 (cast-from-var3963-to-var2211 var687))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var398 String (getName/-1958580599 var3766)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2167 String (append/672562846 var1086!1 var398)) ; Statement: $r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1086!2 String)
(assert (= var1086!2 (str.++ var1086!1 var398)))
(assert true)
(define-const var1950 String (append/672562846 var2167 " does not support pooled sequences")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support pooled sequences") 
(declare-const var2167!1 String)
(assert (= var2167!1 (str.++ var2167 " does not support pooled sequences")))
(assert true)
(define-const var2377 String (toString/-2075883882 var1950)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3112 var2377)) ; Statement: specialinvoke $r19.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var3112!1 var2494)
(declare-const var2377!1 String)
(define-const var877 var875 (cast-from-var2494-to-var875 var3112!1)) ; Statement: $r20 = (java.lang.Throwable) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsPooledSequences/1428966174=([org.hibernate.dialect.HSQLDialect], boolean), var2494-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3963-to-var2211=([org.hibernate.dialect.HSQLDialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2494-to-var875=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3963=org.hibernate.dialect.HSQLDialect, var687=r0, var1908=r9, var2542=null_type, var833=i0, var2219=i1, var2614=$z0, var2494=org.hibernate.MappingException, var3112=$r19, var1086=$r18, var2211=java.lang.Object, var3766=$r3, var398=$r4, var2167=$r5, var1950=$r6, var2377=$r7, var875=java.lang.Throwable, var877=$r20}
; {org.hibernate.dialect.HSQLDialect=var3963, r0=var687, r9=var1908, null_type=var2542, i0=var833, i1=var2219, $z0=var2614, org.hibernate.MappingException=var2494, $r19=var3112, $r18=var1086, java.lang.Object=var2211, $r3=var3766, $r4=var398, $r5=var2167, $r6=var1950, $r7=var2377, java.lang.Throwable=var875, $r20=var877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.HSQLDialect;	r9 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$z0 = virtualinvoke r0.<org.hibernate.dialect.HSQLDialect: boolean supportsPooledSequences()>();	if $z0 == 0 goto $r19 = new org.hibernate.MappingException;	$r19 = new org.hibernate.MappingException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support pooled sequences");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r20 = (java.lang.Throwable) $r19;	throw $r20
;block_num 2