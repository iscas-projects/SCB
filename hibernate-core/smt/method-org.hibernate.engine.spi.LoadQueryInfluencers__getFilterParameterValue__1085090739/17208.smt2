(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2568 0)
(declare-sort var2348 0)
(declare-sort var2578 0)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2568_parseFilterParameterName/316962406 (String) (Array Int String))
(declare-fun enabledFilters/-913454020 (var2568) var2578)
(declare-fun var745-init () var745)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var745 String) void)
(declare-const null-var2568 var2568)
(declare-const null-String String)
(declare-const null-var2578 var2578)
(declare-const var211 var2568) ; Statement: r2 := @this: org.hibernate.engine.spi.LoadQueryInfluencers 
(assert (not (= var211 null-var2568)))
(declare-const var2310 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2310 null-String)))
(define-const var3251 (Array Int String) (var2568_parseFilterParameterName/316962406 var2310)) ; Statement: r1 = staticinvoke <org.hibernate.engine.spi.LoadQueryInfluencers: java.lang.String[] parseFilterParameterName(java.lang.String)>(r0) 
(define-const var54 var2578 (enabledFilters/-913454020 var211)) ; Statement: $r3 = r2.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.HashMap enabledFilters> 
 ; Statement: if $r3 != null goto $r5 = r2.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.HashMap enabledFilters> 
(assert (not (not (= var54 null-var2578)))) ; Negate: Cond: $r3 != null  
(define-const var1008 var745 var745-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(define-const var24 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var24)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var24!1 String)
(assert (= var24!1 ""))
(assert true)
(define-const var2614 String (append/672562846 var24!1 "Filter [")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filter [") 
(declare-const var24!2 String)
(assert (= var24!2 (str.++ var24!1 "Filter [")))
(define-const var2823 String (select var3251 0)) ; Statement: $r19 = r1[0] 
(assert true)
(define-const var3300 String (append/672562846 var2614 var2823)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2614!1 String)
(assert (= var2614!1 (str.++ var2614 var2823)))
(assert true)
(define-const var2925 String (append/672562846 var3300 "] currently not enabled")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] currently not enabled") 
(declare-const var3300!1 String)
(assert (= var3300!1 (str.++ var3300 "] currently not enabled")))
(assert true)
(define-const var1141 String (toString/-2075883882 var2925)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1008 var1141)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23) 

(declare-const var1008!1 var745)
(declare-const var1141!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2568_parseFilterParameterName/316962406=([java.lang.String], java.lang.String[]), enabledFilters/-913454020=([org.hibernate.engine.spi.LoadQueryInfluencers], java.util.HashMap), var745-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2568=org.hibernate.engine.spi.LoadQueryInfluencers, var211=r2, var2310=r0, var2348=null_type, var3251=r1, var2578=java.util.HashMap, var54=$r3, var745=java.lang.IllegalArgumentException, var1008=$r17, var24=$r18, var2614=$r20, var2823=$r19, var3300=$r21, var2925=$r22, var1141=$r23}
; {org.hibernate.engine.spi.LoadQueryInfluencers=var2568, r2=var211, r0=var2310, null_type=var2348, r1=var3251, java.util.HashMap=var2578, $r3=var54, java.lang.IllegalArgumentException=var745, $r17=var1008, $r18=var24, $r20=var2614, $r19=var2823, $r21=var3300, $r22=var2925, $r23=var1141}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.engine.spi.LoadQueryInfluencers;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.engine.spi.LoadQueryInfluencers: java.lang.String[] parseFilterParameterName(java.lang.String)>(r0);	$r3 = r2.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.HashMap enabledFilters>;	if $r3 != null goto $r5 = r2.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.HashMap enabledFilters>;	$r17 = new java.lang.IllegalArgumentException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filter [");	$r19 = r1[0];	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] currently not enabled");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23);	throw $r17
;block_num 2