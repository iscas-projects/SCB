(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var2217 0)
(declare-sort var2336 0)
(declare-sort var264 0)
(declare-sort var2162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2336-init () (Array Int var2336))
(declare-fun getName/-611695624 (var2217) String)
(declare-fun cast-from-String-to-var2336 (String) var2336)
(declare-fun getType/1217882498 (var2217) var264)
(declare-fun cast-from-var264-to-var2336 (var264) var2336)
(declare-fun String_format/1339386452 (String (Array Int var2336)) String)
(declare-fun <init>/-1465281613 (var2162 String var2217) void)
(declare-fun cast-from-var3671-to-var2162 (var3671) var2162)
(declare-fun origin/2055128706 (var3671) var2217)
(declare-const null-var3671 var3671)
(declare-const null-var2217 var2217)
(declare-const null-__Array__Int__var2336__ (Array Int var2336))
(declare-const var933 var3671) ; Statement: r0 := @this: org.hibernate.boot.InvalidMappingException 
(assert (not (= var933 null-var3671)))
(declare-const var2778 var2217) ; Statement: r2 := @parameter0: org.hibernate.boot.jaxb.Origin 
(assert (not (= var2778 null-var2217)))
(define-const var948 (Array Int var2336) arr-var2336-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3194 String (getName/-611695624 var2778)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>() 
(declare-const var948!1 (Array Int var2336))
(assert (not (= var948!1 null-__Array__Int__var2336__)))
(assert (= (select var948!1 0) (cast-from-String-to-var2336 var3194))) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var1353 var264 (getType/1217882498 var2778)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>() 
(declare-const var948!2 (Array Int var2336))
(assert (not (= var948!2 null-__Array__Int__var2336__)))
(assert (= (select var948!2 1) (cast-from-var264-to-var2336 var1353))) ; Statement: $r1[1] = $r4 
(define-const var913 String (String_format/1339386452 "Could not parse mapping document: %s (%s)" var948!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not parse mapping document: %s (%s)", $r1) 
(assert true)
;(assert (<init>/-1465281613 (cast-from-var3671-to-var2162 var933) var913 var2778)) ; Statement: specialinvoke r0.<org.hibernate.InvalidMappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r5, r2) 

(declare-const var933!1 var3671)
(declare-const var913!1 String)
(declare-const var2778!1 var2217)
(declare-const var933!2 var3671)
(assert (not (= var933!2 null-var3671)))
(assert (= (origin/2055128706 var933!2) var2778!1)) ; Statement: r0.<org.hibernate.boot.InvalidMappingException: org.hibernate.boot.jaxb.Origin origin> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2336-init=([], java.lang.Object[]), getName/-611695624=([org.hibernate.boot.jaxb.Origin], java.lang.String), cast-from-String-to-var2336=([java.lang.String], java.lang.Object), getType/1217882498=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), cast-from-var264-to-var2336=([org.hibernate.boot.jaxb.SourceType], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1465281613=([org.hibernate.InvalidMappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3671-to-var2162=([org.hibernate.boot.InvalidMappingException], org.hibernate.InvalidMappingException), origin/2055128706=([org.hibernate.boot.InvalidMappingException], org.hibernate.boot.jaxb.Origin)}
; {var3671=org.hibernate.boot.InvalidMappingException, var933=r0, var2217=org.hibernate.boot.jaxb.Origin, var2778=r2, var2336=java.lang.Object, var948=$r1, var3194=$r3, var264=org.hibernate.boot.jaxb.SourceType, var1353=$r4, var913=$r5, var2162=org.hibernate.InvalidMappingException}
; {org.hibernate.boot.InvalidMappingException=var3671, r0=var933, org.hibernate.boot.jaxb.Origin=var2217, r2=var2778, java.lang.Object=var2336, $r1=var948, $r3=var3194, org.hibernate.boot.jaxb.SourceType=var264, $r4=var1353, $r5=var913, org.hibernate.InvalidMappingException=var2162}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.InvalidMappingException;	r2 := @parameter0: org.hibernate.boot.jaxb.Origin;	$r1 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>();	$r1[0] = $r3;	$r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>();	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not parse mapping document: %s (%s)", $r1);	specialinvoke r0.<org.hibernate.InvalidMappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r5, r2);	r0.<org.hibernate.boot.InvalidMappingException: org.hibernate.boot.jaxb.Origin origin> = r2;	return
;block_num 1