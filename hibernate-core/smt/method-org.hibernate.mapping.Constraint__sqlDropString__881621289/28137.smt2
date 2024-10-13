(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3251 0)
(declare-sort var1305 0)
(declare-sort var467 0)
(declare-sort var1254 0)
(declare-sort var3725 0)
(declare-sort var383 0)
(declare-sort var957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1305_getDialect/-253498657 (var1305) var1254)
(declare-fun isGenerated/-403195155 (var3251 var1254) Bool)
(declare-fun getTable/2028539592 (var3251) var3725)
(declare-fun getQualifiedName/-1090669273 (var3725 var1305) String)
(declare-fun arr-var957-init () (Array Int var957))
(declare-fun getAlterTableString/-573220996 (var1254 String) String)
(declare-fun cast-from-String-to-var957 (String) var957)
(declare-fun getName/-2142322286 (var3251) String)
(declare-fun quote/1287717023 (var1254 String) String)
(declare-fun String_format/-647569892 (var383 String (Array Int var957)) String)
(declare-const null-var3251 var3251)
(declare-const null-var1305 var1305)
(declare-const null-String String)
(declare-const var383-ROOT var383)
(declare-const null-__Array__Int__var957__ (Array Int var957))
(declare-const var1545 var3251) ; Statement: r2 := @this: org.hibernate.mapping.Constraint 
(assert (not (= var1545 null-var3251)))
(declare-const var2130 var1305) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2130 null-var1305)))
(declare-const var3545 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var3545 null-String)))
(declare-const var3885 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var3885 null-String)))
(define-const var1883 var1254 (var1305_getDialect/-253498657 var2130)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var1969 Bool (isGenerated/-403195155 var1545 var1883)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.mapping.Constraint: boolean isGenerated(org.hibernate.dialect.Dialect)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1969 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2522 var3725 (getTable/2028539592 var1545)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.mapping.Constraint: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var2639 String (getQualifiedName/-1090669273 var2522 var2130)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0) 
(define-const var1949 var383 var383-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var20 (Array Int var957) arr-var957-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3801 String (getAlterTableString/-573220996 var1883 var2639)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r4) 
(declare-const var20!1 (Array Int var957))
(assert (not (= var20!1 null-__Array__Int__var957__)))
(assert (= (select var20!1 0) (cast-from-String-to-var957 var3801))) ; Statement: $r5[0] = $r7 
(assert true)
(define-const var674 String (getName/-2142322286 var1545)) ; Statement: $r8 = virtualinvoke r2.<org.hibernate.mapping.Constraint: java.lang.String getName()>() 
(assert true)
(define-const var2354 String (quote/1287717023 var1883 var674)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r8) 
(declare-const var20!2 (Array Int var957))
(assert (not (= var20!2 null-__Array__Int__var957__)))
(assert (= (select var20!2 1) (cast-from-String-to-var957 var2354))) ; Statement: $r5[1] = $r9 
(define-const var2350 String (String_format/-647569892 var1949 "%s evictData constraint %s" var20!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s evictData constraint %s", $r5) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1305_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), isGenerated/-403195155=([org.hibernate.mapping.Constraint, org.hibernate.dialect.Dialect], boolean), getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), getQualifiedName/-1090669273=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), arr-var957-init=([], java.lang.Object[]), getAlterTableString/-573220996=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), cast-from-String-to-var957=([java.lang.String], java.lang.Object), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), quote/1287717023=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3251=org.hibernate.mapping.Constraint, var1545=r2, var1305=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2130=r0, var3545=r11, var467=null_type, var3885=r12, var1254=org.hibernate.dialect.Dialect, var1883=r1, var1969=$z0, var3725=org.hibernate.mapping.Table, var2522=$r3, var2639=r4, var383=java.util.Locale, var1949=$r6, var957=java.lang.Object, var20=$r5, var3801=$r7, var674=$r8, var2354=$r9, var2350=$r10}
; {org.hibernate.mapping.Constraint=var3251, r2=var1545, org.hibernate.boot.model.relational.SqlStringGenerationContext=var1305, r0=var2130, r11=var3545, null_type=var467, r12=var3885, org.hibernate.dialect.Dialect=var1254, r1=var1883, $z0=var1969, org.hibernate.mapping.Table=var3725, $r3=var2522, r4=var2639, java.util.Locale=var383, $r6=var1949, java.lang.Object=var957, $r5=var20, $r7=var3801, $r8=var674, $r9=var2354, $r10=var2350}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.mapping.Constraint;	r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r11 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r2.<org.hibernate.mapping.Constraint: boolean isGenerated(org.hibernate.dialect.Dialect)>(r1);	if $z0 == 0 goto return null;	$r3 = virtualinvoke r2.<org.hibernate.mapping.Constraint: org.hibernate.mapping.Table getTable()>();	r4 = virtualinvoke $r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0);	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = newarray (java.lang.Object)[2];	$r7 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r4);	$r5[0] = $r7;	$r8 = virtualinvoke r2.<org.hibernate.mapping.Constraint: java.lang.String getName()>();	$r9 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r8);	$r5[1] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s evictData constraint %s", $r5);	return $r10
;block_num 2