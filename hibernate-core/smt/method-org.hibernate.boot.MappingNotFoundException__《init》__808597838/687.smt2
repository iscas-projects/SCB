(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var953 0)
(declare-sort var2046 0)
(declare-sort var3034 0)
(declare-sort var1827 0)
(declare-sort var2793 0)
(declare-sort var1548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1827-init () (Array Int var1827))
(declare-fun getType/1217882498 (var3034) var2793)
(declare-fun cast-from-var2793-to-var1827 (var2793) var1827)
(declare-fun getName/-611695624 (var3034) String)
(declare-fun cast-from-String-to-var1827 (String) var1827)
(declare-fun String_format/1339386452 (String (Array Int var1827)) String)
(declare-fun <init>/1227528494 (var1548 String var2046 var3034) void)
(declare-fun cast-from-var953-to-var1548 (var953) var1548)
(declare-const null-var953 var953)
(declare-const null-var2046 var2046)
(declare-const null-var3034 var3034)
(declare-const null-__Array__Int__var1827__ (Array Int var1827))
(declare-const var1022 var953) ; Statement: r0 := @this: org.hibernate.boot.MappingNotFoundException 
(assert (not (= var1022 null-var953)))
(declare-const var3681 var2046) ; Statement: r5 := @parameter0: java.lang.Throwable 
(assert (not (= var3681 null-var2046)))
(declare-const var325 var3034) ; Statement: r2 := @parameter1: org.hibernate.boot.jaxb.Origin 
(assert (not (= var325 null-var3034)))
(define-const var3190 (Array Int var1827) arr-var1827-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3678 var2793 (getType/1217882498 var325)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>() 
(declare-const var3190!1 (Array Int var1827))
(assert (not (= var3190!1 null-__Array__Int__var1827__)))
(assert (= (select var3190!1 0) (cast-from-var2793-to-var1827 var3678))) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var1102 String (getName/-611695624 var325)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>() 
(declare-const var3190!2 (Array Int var1827))
(assert (not (= var3190!2 null-__Array__Int__var1827__)))
(assert (= (select var3190!2 1) (cast-from-String-to-var1827 var1102))) ; Statement: $r1[1] = $r4 
(define-const var2693 String (String_format/1339386452 "Mapping (%s) not found : %s" var3190!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mapping (%s) not found : %s", $r1) 
(assert true)
;(assert (<init>/1227528494 (cast-from-var953-to-var1548 var1022) var2693 var3681 var325)) ; Statement: specialinvoke r0.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r6, r5, r2) 

(declare-const var1022!1 var953)
(declare-const var2693!1 String)
(declare-const var3681!1 var2046)
(declare-const var325!1 var3034)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1827-init=([], java.lang.Object[]), getType/1217882498=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), cast-from-var2793-to-var1827=([org.hibernate.boot.jaxb.SourceType], java.lang.Object), getName/-611695624=([org.hibernate.boot.jaxb.Origin], java.lang.String), cast-from-String-to-var1827=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1227528494=([org.hibernate.boot.MappingException, java.lang.String, java.lang.Throwable, org.hibernate.boot.jaxb.Origin], void), cast-from-var953-to-var1548=([org.hibernate.boot.MappingNotFoundException], org.hibernate.boot.MappingException)}
; {var953=org.hibernate.boot.MappingNotFoundException, var1022=r0, var2046=java.lang.Throwable, var3681=r5, var3034=org.hibernate.boot.jaxb.Origin, var325=r2, var1827=java.lang.Object, var3190=$r1, var2793=org.hibernate.boot.jaxb.SourceType, var3678=$r3, var1102=$r4, var2693=$r6, var1548=org.hibernate.boot.MappingException}
; {org.hibernate.boot.MappingNotFoundException=var953, r0=var1022, java.lang.Throwable=var2046, r5=var3681, org.hibernate.boot.jaxb.Origin=var3034, r2=var325, java.lang.Object=var1827, $r1=var3190, org.hibernate.boot.jaxb.SourceType=var2793, $r3=var3678, $r4=var1102, $r6=var2693, org.hibernate.boot.MappingException=var1548}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.MappingNotFoundException;	r5 := @parameter0: java.lang.Throwable;	r2 := @parameter1: org.hibernate.boot.jaxb.Origin;	$r1 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>();	$r1[0] = $r3;	$r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>();	$r1[1] = $r4;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mapping (%s) not found : %s", $r1);	specialinvoke r0.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r6, r5, r2);	return
;block_num 1