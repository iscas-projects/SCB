(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2015 0)
(declare-sort var1801 0)
(declare-sort var1267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun render/2062854292 (var2015 String var1801 var1267) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2015 var2015)
(declare-const null-var1801 var1801)
(declare-const null-var1267 var1267)
(declare-const var927 var2015) ; Statement: r1 := @this: org.hibernate.internal.FilterHelper 
(assert (not (= var927 null-var2015)))
(declare-const var3244 var1801) ; Statement: r2 := @parameter0: org.hibernate.internal.FilterAliasGenerator 
(assert (not (= var3244 null-var1801)))
(declare-const var1343 var1267) ; Statement: r3 := @parameter1: java.util.Map 
(assert (not (= var1343 null-var1267)))
(define-const var2926 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2926)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2926!1 String)
(assert (= var2926!1 ""))
(assert true)
;(assert (render/2062854292 var927 var2926!1 var3244 var1343)) ; Statement: virtualinvoke r1.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, r2, r3) 

(declare-const var927!1 var2015)
(declare-const var2926!2 String)
(declare-const var3244!1 var1801)
(declare-const var1343!1 var1267)
(assert true)
(define-const var3881 String (toString/-2075883882 var2926!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), render/2062854292=([org.hibernate.internal.FilterHelper, java.lang.StringBuilder, org.hibernate.internal.FilterAliasGenerator, java.util.Map], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2015=org.hibernate.internal.FilterHelper, var927=r1, var1801=org.hibernate.internal.FilterAliasGenerator, var3244=r2, var1267=java.util.Map, var1343=r3, var2926=$r0, var3881=$r4}
; {org.hibernate.internal.FilterHelper=var2015, r1=var927, org.hibernate.internal.FilterAliasGenerator=var1801, r2=var3244, java.util.Map=var1267, r3=var1343, $r0=var2926, $r4=var3881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.FilterHelper;	r2 := @parameter0: org.hibernate.internal.FilterAliasGenerator;	r3 := @parameter1: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, r2, r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1