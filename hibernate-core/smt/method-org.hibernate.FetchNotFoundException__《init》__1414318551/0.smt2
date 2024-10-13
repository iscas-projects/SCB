(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2130 0)
(declare-sort var2716 0)
(declare-sort var2070 0)
(declare-sort var671 0)
(declare-sort var1515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2070-init () (Array Int var2070))
(declare-fun cast-from-String-to-var2070 (String) var2070)
(declare-fun String_format/-647569892 (var671 String (Array Int var2070)) String)
(declare-fun <init>/527701604 (var1515 String) void)
(declare-fun cast-from-var2130-to-var1515 (var2130) var1515)
(declare-fun entityName/856317964 (var2130) String)
(declare-fun identifier/856317964 (var2130) var2070)
(declare-const null-var2130 var2130)
(declare-const null-String String)
(declare-const null-var2070 var2070)
(declare-const var671-ROOT var671)
(declare-const null-__Array__Int__var2070__ (Array Int var2070))
(declare-const var525 var2130) ; Statement: r0 := @this: org.hibernate.FetchNotFoundException 
(assert (not (= var525 null-var2130)))
(declare-const var3105 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3105 null-String)))
(declare-const var3121 var2070) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3121 null-var2070)))
(define-const var3407 var671 var671-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3233 (Array Int var2070) arr-var2070-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var3233!1 (Array Int var2070))
(assert (not (= var3233!1 null-__Array__Int__var2070__)))
(assert (= (select var3233!1 0) (cast-from-String-to-var2070 var3105))) ; Statement: $r1[0] = r2 
(declare-const var3233!2 (Array Int var2070))
(assert (not (= var3233!2 null-__Array__Int__var2070__)))
(assert (= (select var3233!2 1) var3121)) ; Statement: $r1[1] = r3 
(define-const var3330 String (String_format/-647569892 var3407 "Entity `%s` with identifier value `%s` does not exist" var3233!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "Entity `%s` with identifier value `%s` does not exist", $r1) 
(assert true)
;(assert (<init>/527701604 (cast-from-var2130-to-var1515 var525) var3330)) ; Statement: specialinvoke r0.<javax.persistence.EntityNotFoundException: void <init>(java.lang.String)>($r5) 

(declare-const var525!1 var2130)
(declare-const var3330!1 String)
(declare-const var525!2 var2130)
(assert (not (= var525!2 null-var2130)))
(assert (= (entityName/856317964 var525!2) var3105)) ; Statement: r0.<org.hibernate.FetchNotFoundException: java.lang.String entityName> = r2 
(declare-const var525!3 var2130)
(assert (not (= var525!3 null-var2130)))
(assert (= (identifier/856317964 var525!3) var3121)) ; Statement: r0.<org.hibernate.FetchNotFoundException: java.lang.Object identifier> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2070-init=([], java.lang.Object[]), cast-from-String-to-var2070=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/527701604=([javax.persistence.EntityNotFoundException, java.lang.String], void), cast-from-var2130-to-var1515=([org.hibernate.FetchNotFoundException], javax.persistence.EntityNotFoundException), entityName/856317964=([org.hibernate.FetchNotFoundException], java.lang.String), identifier/856317964=([org.hibernate.FetchNotFoundException], java.lang.Object)}
; {var2130=org.hibernate.FetchNotFoundException, var525=r0, var3105=r2, var2716=null_type, var2070=java.lang.Object, var3121=r3, var671=java.util.Locale, var3407=$r4, var3233=$r1, var3330=$r5, var1515=javax.persistence.EntityNotFoundException}
; {org.hibernate.FetchNotFoundException=var2130, r0=var525, r2=var3105, null_type=var2716, java.lang.Object=var2070, r3=var3121, java.util.Locale=var671, $r4=var3407, $r1=var3233, $r5=var3330, javax.persistence.EntityNotFoundException=var1515}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.FetchNotFoundException;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	$r4 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r2;	$r1[1] = r3;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "Entity `%s` with identifier value `%s` does not exist", $r1);	specialinvoke r0.<javax.persistence.EntityNotFoundException: void <init>(java.lang.String)>($r5);	r0.<org.hibernate.FetchNotFoundException: java.lang.String entityName> = r2;	r0.<org.hibernate.FetchNotFoundException: java.lang.Object identifier> = r3;	return
;block_num 1