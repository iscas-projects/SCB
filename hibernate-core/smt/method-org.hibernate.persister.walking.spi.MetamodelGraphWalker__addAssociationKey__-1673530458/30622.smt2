(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1000 0)
(declare-sort var3725 0)
(declare-sort var2631 0)
(declare-sort var1347 0)
(declare-sort var792 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun visitedAssociationKeys/1556216042 (var1000) var2631)
(declare-fun var2631_add/-1142548109 (var2631 var1347) Bool)
(declare-fun cast-from-var3725-to-var1347 (var3725) var1347)
(declare-fun var792-init () var792)
(declare-fun arr-var1347-init () (Array Int var1347))
(declare-fun String_format/1339386452 (String (Array Int var1347)) String)
(declare-fun <init>/-1056956250 (var792 String) void)
(declare-fun cast-from-var792-to-var3410 (var792) var3410)
(declare-const null-var1000 var1000)
(declare-const null-var3725 var3725)
(declare-const null-__Array__Int__var1347__ (Array Int var1347))
(declare-const var1201 var1000) ; Statement: r0 := @this: org.hibernate.persister.walking.spi.MetamodelGraphWalker 
(assert (not (= var1201 null-var1000)))
(declare-const var321 var3725) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationKey 
(assert (not (= var321 null-var3725)))
(define-const var1262 var2631 (visitedAssociationKeys/1556216042 var1201)) ; Statement: $r2 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: java.util.Set visitedAssociationKeys> 
(define-const var1078 Bool (var2631_add/-1142548109 var1262 (cast-from-var3725-to-var1347 var321))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy> 
(assert (not (not (= (ite var1078 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1346 var792 var792-init) ; Statement: $r7 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var3109 (Array Int var1347) arr-var1347-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var3109!1 (Array Int var1347))
(assert (not (= var3109!1 null-__Array__Int__var1347__)))
(assert (= (select var3109!1 0) (cast-from-var3725-to-var1347 var321))) ; Statement: $r5[0] = r1 
(define-const var2445 String (String_format/1339386452 "Association has already been visited: %s" var3109!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Association has already been visited: %s", $r5) 
(assert true)
;(assert (<init>/-1056956250 var1346 var2445)) ; Statement: specialinvoke $r7.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r6) 

(declare-const var1346!1 var792)
(declare-const var2445!1 String)
(define-const var438 var3410 (cast-from-var792-to-var3410 var1346!1)) ; Statement: $r8 = (java.lang.Throwable) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {visitedAssociationKeys/1556216042=([org.hibernate.persister.walking.spi.MetamodelGraphWalker], java.util.Set), var2631_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-var3725-to-var1347=([org.hibernate.persister.walking.spi.AssociationKey], java.lang.Object), var792-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var1347-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var792-to-var3410=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var1000=org.hibernate.persister.walking.spi.MetamodelGraphWalker, var1201=r0, var3725=org.hibernate.persister.walking.spi.AssociationKey, var321=r1, var2631=java.util.Set, var1262=$r2, var1347=java.lang.Object, var1078=$z0, var792=org.hibernate.persister.walking.spi.WalkingException, var1346=$r7, var3109=$r5, var2445=$r6, var3410=java.lang.Throwable, var438=$r8}
; {org.hibernate.persister.walking.spi.MetamodelGraphWalker=var1000, r0=var1201, org.hibernate.persister.walking.spi.AssociationKey=var3725, r1=var321, java.util.Set=var2631, $r2=var1262, java.lang.Object=var1347, $z0=var1078, org.hibernate.persister.walking.spi.WalkingException=var792, $r7=var1346, $r5=var3109, $r6=var2445, java.lang.Throwable=var3410, $r8=var438}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.persister.walking.spi.MetamodelGraphWalker;	r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationKey;	$r2 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: java.util.Set visitedAssociationKeys>;	$z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = r0.<org.hibernate.persister.walking.spi.MetamodelGraphWalker: org.hibernate.persister.walking.spi.AssociationVisitationStrategy strategy>;	$r7 = new org.hibernate.persister.walking.spi.WalkingException;	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r1;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Association has already been visited: %s", $r5);	specialinvoke $r7.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r6);	$r8 = (java.lang.Throwable) $r7;	throw $r8
;block_num 2