(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1724 0)
(declare-sort var1728 0)
(declare-sort var1496 0)
(declare-sort var3916 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3916_getValue/902856528 (String var1496) var1496)
(declare-fun var3154-init () var3154)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1832852593 (var3154 String) void)
(declare-const null-var1724 var1724)
(declare-const null-String String)
(declare-const null-var1496 var1496)
(declare-const null-Bool Bool)
(declare-const var3321 var1724) ; Statement: r23 := @this: org.apache.ibatis.scripting.xmltags.ExpressionEvaluator 
(assert (not (= var3321 null-var1724)))
(declare-const var2571 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2571 null-String)))
(declare-const var704 var1496) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var704 null-var1496)))
(declare-const var3702 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var3702 null-Bool)))
(define-const var650 var1496 (var3916_getValue/902856528 var2571 var704)) ; Statement: r2 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r0, r1) 
 ; Statement: if r2 != null goto $z0 = r2 instanceof java.lang.Iterable 
(assert (not (not (= var650 null-var1496)))) ; Negate: Cond: r2 != null  
 ; Statement: if z3 == 0 goto $r17 = new org.apache.ibatis.builder.BuilderException 
(assert (= (ite var3702 1 0) 0)) ; Cond: z3 == 0 
(define-const var3809 var3154 var3154-init) ; Statement: $r17 = new org.apache.ibatis.builder.BuilderException 
(define-const var3345 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3345)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3345!1 String)
(assert (= var3345!1 ""))
(assert true)
(define-const var2589 String (append/672562846 var3345!1 "The expression \u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The expression \'") 
(declare-const var3345!2 String)
(assert (= var3345!2 (str.++ var3345!1 "The expression \u0027")))
(assert true)
(define-const var3427 String (append/672562846 var2589 var2571)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2589!1 String)
(assert (= var2589!1 (str.++ var2589 var2571)))
(assert true)
(define-const var2059 String (append/672562846 var3427 "\u0027 evaluated to a null value.")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' evaluated to a null value.") 
(declare-const var3427!1 String)
(assert (= var3427!1 (str.++ var3427 "\u0027 evaluated to a null value.")))
(assert true)
(define-const var1068 String (toString/-2075883882 var2059)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1832852593 var3809 var1068)) ; Statement: specialinvoke $r17.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r22) 

(declare-const var3809!1 var3154)
(declare-const var1068!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3916_getValue/902856528=([java.lang.String, java.lang.Object], java.lang.Object), var3154-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var1724=org.apache.ibatis.scripting.xmltags.ExpressionEvaluator, var3321=r23, var2571=r0, var1728=null_type, var1496=java.lang.Object, var704=r1, var3702=z3, var3916=org.apache.ibatis.scripting.xmltags.OgnlCache, var650=r2, var3154=org.apache.ibatis.builder.BuilderException, var3809=$r17, var3345=$r18, var2589=$r19, var3427=$r20, var2059=$r21, var1068=$r22}
; {org.apache.ibatis.scripting.xmltags.ExpressionEvaluator=var1724, r23=var3321, r0=var2571, null_type=var1728, java.lang.Object=var1496, r1=var704, z3=var3702, org.apache.ibatis.scripting.xmltags.OgnlCache=var3916, r2=var650, org.apache.ibatis.builder.BuilderException=var3154, $r17=var3809, $r18=var3345, $r19=var2589, $r20=var3427, $r21=var2059, $r22=var1068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r23 := @this: org.apache.ibatis.scripting.xmltags.ExpressionEvaluator;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	z3 := @parameter2: boolean;	r2 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r0, r1);	if r2 != null goto $z0 = r2 instanceof java.lang.Iterable;	if z3 == 0 goto $r17 = new org.apache.ibatis.builder.BuilderException;	$r17 = new org.apache.ibatis.builder.BuilderException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The expression \'");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' evaluated to a null value.");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r22);	throw $r17
;block_num 3