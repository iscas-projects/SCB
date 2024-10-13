(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1953 0)
(declare-sort var1789 0)
(declare-sort var236 0)
(declare-sort var3942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var236-init () var236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var236 String) void)
(declare-fun cast-from-var236-to-var3942 (var236) var3942)
(declare-const null-var1953 var1953)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2376 var1953) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var2376 null-var1953)))
(declare-const var330 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var330 null-String)))
(declare-const var1666 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1666 null-Int)))
(declare-const var1572 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1572 null-Int)))
 ; Statement: if i0 != 0 goto $r26 = new java.lang.StringBuilder 
(assert (not (not (= var1572 0)))) ; Negate: Cond: i0 != 0  
(define-const var60 var236 var236-init) ; Statement: $r25 = new org.hibernate.MappingException 
(define-const var951 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var951)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var951!1 String)
(assert (= var951!1 ""))
(assert true)
(define-const var3600 String (append/672562846 var951!1 "Unable to create the sequence [")) ; Statement: $r19 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create the sequence [") 
(declare-const var951!2 String)
(assert (= var951!2 (str.++ var951!1 "Unable to create the sequence [")))
(assert true)
(define-const var31 String (append/672562846 var3600 var330)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3600!1 String)
(assert (= var3600!1 (str.++ var3600 var330)))
(assert true)
(define-const var928 String (append/672562846 var31 "]: the increment size must not be 0")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: the increment size must not be 0") 
(declare-const var31!1 String)
(assert (= var31!1 (str.++ var31 "]: the increment size must not be 0")))
(assert true)
(define-const var2128 String (toString/-2075883882 var928)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var60 var2128)) ; Statement: specialinvoke $r25.<org.hibernate.MappingException: void <init>(java.lang.String)>($r22) 

(declare-const var60!1 var236)
(declare-const var2128!1 String)
(define-const var1900 var3942 (cast-from-var236-to-var3942 var60!1)) ; Statement: $r29 = (java.lang.Throwable) $r25 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var236-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var236-to-var3942=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1953=org.hibernate.dialect.AbstractHANADialect, var2376=r1, var330=r2, var1789=null_type, var1666=i1, var1572=i0, var236=org.hibernate.MappingException, var60=$r25, var951=$r24, var3600=$r19, var31=$r20, var928=$r21, var2128=$r22, var3942=java.lang.Throwable, var1900=$r29}
; {org.hibernate.dialect.AbstractHANADialect=var1953, r1=var2376, r2=var330, null_type=var1789, i1=var1666, i0=var1572, org.hibernate.MappingException=var236, $r25=var60, $r24=var951, $r19=var3600, $r20=var31, $r21=var928, $r22=var2128, java.lang.Throwable=var3942, $r29=var1900}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect;	r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 := @parameter2: int;	if i0 != 0 goto $r26 = new java.lang.StringBuilder;	$r25 = new org.hibernate.MappingException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create the sequence [");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: the increment size must not be 0");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.MappingException: void <init>(java.lang.String)>($r22);	$r29 = (java.lang.Throwable) $r25;	throw $r29
;block_num 2