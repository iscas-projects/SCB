(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3930 0)
(declare-sort var3343 0)
(declare-sort var1451 0)
(declare-sort var173 0)
(declare-sort var3465 0)
(declare-sort var3961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var173-init () (Array Int var173))
(declare-fun getName/-611695624 (var3343) String)
(declare-fun cast-from-String-to-var173 (String) var173)
(declare-fun getType/1217882498 (var3343) var3465)
(declare-fun cast-from-var3465-to-var173 (var3465) var173)
(declare-fun String_format/1339386452 (String (Array Int var173)) String)
(declare-fun getLegacyTypeText/-857145788 (var3465) String)
(declare-fun <init>/-1752838976 (var3961 String String String var1451) void)
(declare-fun cast-from-var3930-to-var3961 (var3930) var3961)
(declare-fun origin/2055128706 (var3930) var3343)
(declare-const null-var3930 var3930)
(declare-const null-var3343 var3343)
(declare-const null-var1451 var1451)
(declare-const null-__Array__Int__var173__ (Array Int var173))
(declare-const var701 var3930) ; Statement: r0 := @this: org.hibernate.boot.InvalidMappingException 
(assert (not (= var701 null-var3930)))
(declare-const var386 var3343) ; Statement: r2 := @parameter0: org.hibernate.boot.jaxb.Origin 
(assert (not (= var386 null-var3343)))
(declare-const var846 var1451) ; Statement: r6 := @parameter1: java.lang.Throwable 
(assert (not (= var846 null-var1451)))
(define-const var3520 (Array Int var173) arr-var173-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2018 String (getName/-611695624 var386)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>() 
(declare-const var3520!1 (Array Int var173))
(assert (not (= var3520!1 null-__Array__Int__var173__)))
(assert (= (select var3520!1 0) (cast-from-String-to-var173 var2018))) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var978 var3465 (getType/1217882498 var386)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>() 
(declare-const var3520!2 (Array Int var173))
(assert (not (= var3520!2 null-__Array__Int__var173__)))
(assert (= (select var3520!2 1) (cast-from-var3465-to-var173 var978))) ; Statement: $r1[1] = $r4 
(define-const var2381 String (String_format/1339386452 "Could not parse mapping document: %s (%s)" var3520!2)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not parse mapping document: %s (%s)", $r1) 
(assert true)
(define-const var3797 var3465 (getType/1217882498 var386)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>() 
(assert true)
(define-const var2644 String (getLegacyTypeText/-857145788 var3797)) ; Statement: $r8 = virtualinvoke $r5.<org.hibernate.boot.jaxb.SourceType: java.lang.String getLegacyTypeText()>() 
(assert true)
(define-const var2792 String (getName/-611695624 var386)) ; Statement: $r7 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1752838976 (cast-from-var3930-to-var3961 var701) var2381 var2644 var2792 var846)) ; Statement: specialinvoke r0.<org.hibernate.InvalidMappingException: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.Throwable)>($r9, $r8, $r7, r6) 

(declare-const var701!1 var3930)
(declare-const var2381!1 String)
(declare-const var2644!1 String)
(declare-const var2792!1 String)
(declare-const var846!1 var1451)
(declare-const var701!2 var3930)
(assert (not (= var701!2 null-var3930)))
(assert (= (origin/2055128706 var701!2) var386)) ; Statement: r0.<org.hibernate.boot.InvalidMappingException: org.hibernate.boot.jaxb.Origin origin> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var173-init=([], java.lang.Object[]), getName/-611695624=([org.hibernate.boot.jaxb.Origin], java.lang.String), cast-from-String-to-var173=([java.lang.String], java.lang.Object), getType/1217882498=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), cast-from-var3465-to-var173=([org.hibernate.boot.jaxb.SourceType], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), getLegacyTypeText/-857145788=([org.hibernate.boot.jaxb.SourceType], java.lang.String), <init>/-1752838976=([org.hibernate.InvalidMappingException, java.lang.String, java.lang.String, java.lang.String, java.lang.Throwable], void), cast-from-var3930-to-var3961=([org.hibernate.boot.InvalidMappingException], org.hibernate.InvalidMappingException), origin/2055128706=([org.hibernate.boot.InvalidMappingException], org.hibernate.boot.jaxb.Origin)}
; {var3930=org.hibernate.boot.InvalidMappingException, var701=r0, var3343=org.hibernate.boot.jaxb.Origin, var386=r2, var1451=java.lang.Throwable, var846=r6, var173=java.lang.Object, var3520=$r1, var2018=$r3, var3465=org.hibernate.boot.jaxb.SourceType, var978=$r4, var2381=$r9, var3797=$r5, var2644=$r8, var2792=$r7, var3961=org.hibernate.InvalidMappingException}
; {org.hibernate.boot.InvalidMappingException=var3930, r0=var701, org.hibernate.boot.jaxb.Origin=var3343, r2=var386, java.lang.Throwable=var1451, r6=var846, java.lang.Object=var173, $r1=var3520, $r3=var2018, org.hibernate.boot.jaxb.SourceType=var3465, $r4=var978, $r9=var2381, $r5=var3797, $r8=var2644, $r7=var2792, org.hibernate.InvalidMappingException=var3961}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.InvalidMappingException;	r2 := @parameter0: org.hibernate.boot.jaxb.Origin;	r6 := @parameter1: java.lang.Throwable;	$r1 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>();	$r1[0] = $r3;	$r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>();	$r1[1] = $r4;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not parse mapping document: %s (%s)", $r1);	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>();	$r8 = virtualinvoke $r5.<org.hibernate.boot.jaxb.SourceType: java.lang.String getLegacyTypeText()>();	$r7 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>();	specialinvoke r0.<org.hibernate.InvalidMappingException: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.Throwable)>($r9, $r8, $r7, r6);	r0.<org.hibernate.boot.InvalidMappingException: org.hibernate.boot.jaxb.Origin origin> = r2;	return
;block_num 1