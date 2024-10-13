(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var188 0)
(declare-sort var1693 0)
(declare-sort var2327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2327) void)
(declare-fun cast-from-var188-to-var2327 (var188) var2327)
(declare-fun parent/776480911 (var188) var188)
(declare-fun property/776480911 (var188) String)
(declare-fun getFullPath/-627774443 (var188) String)
(declare-fun fullPath/776480911 (var188) String)
(declare-const null-var188 var188)
(declare-const null-String String)
(declare-const var1705 var188) ; Statement: r0 := @this: org.hibernate.loader.PropertyPath 
(assert (not (= var1705 null-var188)))
(declare-const var384 var188) ; Statement: r1 := @parameter0: org.hibernate.loader.PropertyPath 
(assert (not (= var384 null-var188)))
(declare-const var423 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var423 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var188-to-var2327 var1705))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1705!1 var188)
(declare-const var1705!2 var188)
(assert (not (= var1705!2 null-var188)))
(assert (= (parent/776480911 var1705!2) var384)) ; Statement: r0.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath parent> = r1 
(declare-const var1705!3 var188)
(assert (not (= var1705!3 null-var188)))
(assert (= (property/776480911 var1705!3) var423)) ; Statement: r0.<org.hibernate.loader.PropertyPath: java.lang.String property> = r2 
(define-const var2127 String "_identifierMapper") ; Statement: $r3 = "_identifierMapper" 
(assert true)
(define-const var874 Bool (= var2127 var423)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var874 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r1 == null goto $r12 = "" 
(assert (not (= var384 null-var188))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var196 String (getFullPath/-627774443 var384)) ; Statement: $r12 = virtualinvoke r1.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
 ; Statement: goto [?= r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r12] 
(assert true) ; Non Conditional
(declare-const var1705!4 var188)
(assert (not (= var1705!4 null-var188)))
(assert (= (fullPath/776480911 var1705!4) var196)) ; Statement: r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r12 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var188-to-var2327=([org.hibernate.loader.PropertyPath], java.lang.Object), parent/776480911=([org.hibernate.loader.PropertyPath], org.hibernate.loader.PropertyPath), property/776480911=([org.hibernate.loader.PropertyPath], java.lang.String), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), fullPath/776480911=([org.hibernate.loader.PropertyPath], java.lang.String)}
; {var188=org.hibernate.loader.PropertyPath, var1705=r0, var384=r1, var423=r2, var1693=null_type, var2327=java.lang.Object, var2127=$r3, var874=$z0, var196=$r12}
; {org.hibernate.loader.PropertyPath=var188, r0=var1705, r1=var384, r2=var423, null_type=var1693, java.lang.Object=var2327, $r3=var2127, $z0=var874, $r12=var196}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.PropertyPath;	r1 := @parameter0: org.hibernate.loader.PropertyPath;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.loader.PropertyPath: org.hibernate.loader.PropertyPath parent> = r1;	r0.<org.hibernate.loader.PropertyPath: java.lang.String property> = r2;	$r3 = "_identifierMapper";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto (branch);	if r1 == null goto $r12 = "";	$r12 = virtualinvoke r1.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	goto [?= r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r12];	r0.<org.hibernate.loader.PropertyPath: java.lang.String fullPath> = $r12;	goto [?= return];	return
;block_num 5