(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var729 0)
(declare-sort var3663 0)
(declare-sort var158 0)
(declare-sort var1183 0)
(declare-sort var2190 0)
(declare-sort var656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyType/1499158290 (var729) var158)
(declare-fun var1183-init () var1183)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/2096745176 (var729) String)
(declare-fun append/-1031950772 (String var2190) String)
(declare-fun cast-from-String-to-var2190 (String) var2190)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1183 String) void)
(declare-fun cast-from-var1183-to-var656 (var1183) var656)
(declare-const null-var729 var729)
(declare-const null-var3663 var3663)
(declare-const null-var158 var158)
(declare-const var1643 var729) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var1643 null-var729)))
(declare-const var1477 var3663) ; Statement: r2 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var1477 null-var3663)))
(assert true)
(define-const var3094 var158 (getPropertyType/1499158290 var1643)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.type.Type getPropertyType()>() 
 ; Statement: if r1 != null goto $z0 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isEntityType()>() 
(assert (not (not (= var3094 null-var158)))) ; Negate: Cond: r1 != null  
(define-const var875 var1183 var1183-init) ; Statement: $r25 = new org.hibernate.QueryException 
(define-const var1030 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1030)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1030!1 String)
(assert (= var1030!1 ""))
(assert true)
(define-const var1402 String (append/672562846 var1030!1 "must specify \u0027elements\u0027 for collection valued property in from clause: ")) ; Statement: $r20 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("must specify \'elements\' for collection valued property in from clause: ") 
(declare-const var1030!2 String)
(assert (= var1030!2 (str.++ var1030!1 "must specify \u0027elements\u0027 for collection valued property in from clause: ")))
(define-const var3145 String (path/2096745176 var1643)) ; Statement: $r19 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> 
(assert true)
(define-const var3628 String (append/-1031950772 var1402 (cast-from-String-to-var2190 var3145))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r19) 
(declare-const var1402!1 String)
(assert (str.prefixof var1402 var1402!1))
(assert true)
(define-const var920 String (toString/-2075883882 var3628)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var875 var920)) ; Statement: specialinvoke $r25.<org.hibernate.QueryException: void <init>(java.lang.String)>($r22) 

(declare-const var875!1 var1183)
(declare-const var920!1 String)
(define-const var2900 var656 (cast-from-var1183-to-var656 var875!1)) ; Statement: $r27 = (java.lang.Throwable) $r25 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyType/1499158290=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.type.Type), var1183-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var2190=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1183-to-var656=([org.hibernate.QueryException], java.lang.Throwable)}
; {var729=org.hibernate.hql.internal.classic.PathExpressionParser, var1643=r0, var3663=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var1477=r2, var158=org.hibernate.type.Type, var3094=r1, var1183=org.hibernate.QueryException, var875=$r25, var1030=$r24, var1402=$r20, var3145=$r19, var2190=java.lang.Object, var3628=$r21, var920=$r22, var656=java.lang.Throwable, var2900=$r27}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var729, r0=var1643, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3663, r2=var1477, org.hibernate.type.Type=var158, r1=var3094, org.hibernate.QueryException=var1183, $r25=var875, $r24=var1030, $r20=var1402, $r19=var3145, java.lang.Object=var2190, $r21=var3628, $r22=var920, java.lang.Throwable=var656, $r27=var2900}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r2 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r1 = virtualinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.type.Type getPropertyType()>();	if r1 != null goto $z0 = interfaceinvoke r1.<org.hibernate.type.Type: boolean isEntityType()>();	$r25 = new org.hibernate.QueryException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("must specify \'elements\' for collection valued property in from clause: ");	$r19 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.QueryException: void <init>(java.lang.String)>($r22);	$r27 = (java.lang.Throwable) $r25;	throw $r27
;block_num 2